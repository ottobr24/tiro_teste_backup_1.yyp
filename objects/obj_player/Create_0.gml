hspd=0
vspd=0
vel = 2
estado = 0
estado_txt = ""
arma = -4
vida_max = 100
vida = vida_max
cx = 0
cy = 0
cx3 = x
cy3 = y
colisao = [] array_copy(colisao,0,global.colisao_normal,0,array_length(global.colisao_normal))
equipado = 1

//sprite_prefetch()

audio_listener_position(x,y,0)
instance_create_layer(x,y,layer,obj_camera)
instance_create_layer(x,y,layer,obj_controlador)
instance_create_layer(x,y,layer,obj_cria_particulas)
instance_create_layer(x,y,"Colisao",obj_modificacao)

movendo = function(andar=1,equip=1){
	
	var d = keyboard_check(ord("D"))
	var a = keyboard_check(ord("A"))
	var w = keyboard_check(ord("W"))
	var s = keyboard_check(ord("S"))
	var e = keyboard_check_pressed(ord("E"))
	var dir = point_direction(x,y,mouse_x,mouse_y)
	
    direction = point_direction(0,0,(d-a)*vel,(s-w)*vel)
    
	hspd=0
	vspd=0

    if ((d or a or w or s) and andar){
        
        hspd = lengthdir_x(vel,point_direction(0,0,(d-a)*vel,(s-w)*vel))*!global.pause 
        vspd = lengthdir_y(vel,point_direction(0,0,(d-a)*vel,(s-w)*vel))*!global.pause
        
    }
    
	direction = dir
	
	if (equip){
		
		if (e){ 
			
			equipado=!equipado
			
			if (equipado) window_set_cursor(cr_none)
			if (!equipado) window_set_cursor(cr_arrow)
			
		}
	}
}

controla_arma = function(){
	
	if (equipado){
		
		if (!instance_exists(arma)){
		
			arma = instance_create_layer(x,y,"Arma",obj_arma)
			arma.pai = id
		
			with(arma){
			
				i = global.arma
				municao = global.armas_munc[i]
				recarregando_timer = global.armas_reca[i]
				tiro = municao-1
				tiro_tempo = global.armas_cade[i]
				rajando_timer = global.armas_raca[i]
				tiro_timer = tiro_tempo
				prep = global.armas_prep[i]				
				prec_menos = global.armas_prec[i]
				coix = global.armas_coix[i]
				coiy = global.armas_coiy[i]
				dano = global.armas_dano[i]
				recarregando_tempo = global.armas_reca[i]
				cliq = global.armas_cliq[i]
				rajadas_tempo = global.armas_raca[i]
				rajadas_total = global.armas_raja[i]
				shak = global.armas_shak[i]
				bala = global.armas_bala[i]
				rext = global.armas_rext[i]
				sons = array_length(global.armas_sons)>i ? array_create(array_length(global.armas_sons[i]),0) : []
				
			}
		
		}else{
		
	        var cx2 = 8
	        var cy2 = 8
        
	        var colisao2 = [obj_porta,obj_miniparede]
        
			var x1 = x + lengthdir_x(cx2,direction) 
	        var y1 = y + lengthdir_y(cy2,direction)
	        var dir = direction
        
	        with(arma){
            
	            if (place_meeting(x,y1,colisao2)){
				
	                while(place_meeting(x,y1,colisao2) and cy2>-32){
                    
	                    y1 = y + lengthdir_y(cy2,dir)
	                    cy2--
                    
	                }
	            }
            
	            if (place_meeting(x1,y,colisao2)){
                
	                while(place_meeting(x1,y,colisao2) and cx2>-32){
                    
	                    x1 = x + lengthdir_x(cx2,dir)
	                    cx2--
                    
	                }
	            }
	        }
        
			cx = lerp(cx,cx2,0.1)
			cy = lerp(cy,cy2,0.1)
        
			cx3 = lerp(cx3,x + lengthdir_x(cx,direction),.25)
			cy3 = lerp(cy3,y + lengthdir_y(cy,direction),.25)
	        var ix = dir = clamp(dir,90,270) ? -1 : 1
			var ang = ix > 0 ? dir : dir+180
        
			arma.x = cx3
			arma.y = cy3
			arma.direction = direction
			arma.image_angle = ang
			arma.image_xscale = ix
		
		}
	}else{
		
		//if (instance_exists(arma)){
		//	
		//	instance_destroy(arma)
		//	arma = -4
		//	
		//}
	}
}

muda_estado = function(an = 1,p = 1){
	
	var d = 0
	var a = 0
	var w = 0
	var s = 0
	var conds = [an and ((d xor a) or (w xor s)) ,p and !a and !d and !w and !s]
	var estds = [estado_andando					,estado_parado				   ]
	
	for (var e =0 ; e<array_length(conds);e++){
		
		if (conds[e]) estado = estds[e]
		
	}
}

colidindo = function(){
	
	audio_listener_position(x,y,0)
	
	#region Variaveis
	
	var sw = sprite_width/2
	var sh = sprite_height/2
	
	#endregion
	
	#region Colidindo e movendo
	
	var o = instance_place(x+hspd,y,colisao)
	
	if (o){
		
		if (hspd>0){
			
			x = o.bbox_left - sw
		
		}else{
		
			x = o.bbox_right + sw
		
		}
		
		hspd=0
		
	}
	
	#endregion
	
	#region Movendox
	
	x+=hspd
	
	#endregion
	
	#region Colidindoy
	
	o = instance_place(x,y+vspd,colisao)
	
	if (o){
		
		if (vspd>0){
            
			y = o.bbox_top-sh
		
		}else if (vspd<0){
		
			y = o.bbox_bottom+sh
		
		}
		
		vspd = 0
		
	}
	
	#endregion
	
	#region Movendoy
	
	y+=vspd
	
	#endregion
	
}

estado_parado = function(){
	
	movendo()
	controla_arma()
	
	estado = estado_parado
	estado_txt = "estado_parado"
	vel = 2
	
	muda_estado(,0)
	
}

estado_andando = function(){
	
	movendo()
	controla_arma()
	
	estado = estado_andando
	estado_txt = "estado_andando"
	vel = 2
	
	muda_estado(0)
	
}
	
estado = estado_parado