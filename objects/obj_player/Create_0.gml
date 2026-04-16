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
cd  = 0
cdm = 0
colisao = [] array_copy(colisao,0,global.colisao_normal,0,array_length(global.colisao_normal))
equipado = 1
controle = 1

//sprite_prefetch()

audio_listener_position(x,y,0)
instance_create_layer(x,y,layer,obj_camera)
instance_create_layer(x,y,layer,obj_controlador)
instance_create_layer(x,y,layer,obj_cria_particulas)
instance_create_layer(x,y,"Colisao",obj_modificacao)

movendo = function(andar=1,equip=1){
	
	var cn = gamepad_is_connected(0) and controle
	var d = keyboard_check(ord("D"))
	var a = keyboard_check(ord("A"))
	var w = keyboard_check(ord("W"))
	var s = keyboard_check(ord("S"))
	var e = keyboard_check_pressed(ord("E")) or (cn and gamepad_button_check_pressed(0,gp_face4))
	
	if (cn) gamepad_set_axis_deadzone(0,.1)
	
	var rh = cn ? gamepad_axis_value(0,gp_axisrh)  : 0
	var rv = cn ? gamepad_axis_value(0,gp_axisrv)  : 0
	var lh = cn ? gamepad_axis_value(0,gp_axislh)  : 0
	var lv = cn ? gamepad_axis_value(0,gp_axislv)  : 0
	var cv = cn ? point_distance(0,0,lh,lv)*vel : 0
	var cd = cn ? point_direction(0,0,rh		,rv			) : 0
	var dir = !cn ? point_direction(x,y,mouse_x,mouse_y) : cd
	
    if (!controle) direction = point_direction(0,0,(d-a)*vel,(s-w)*vel	)
    if ( controle and rh!=0 or rv!=0) direction = point_direction(0,0,rh		,rv			)
    
	hspd=0
	vspd=0

    if (((d or a or w or s) or cn) and andar){
        
		if (!controle){
		
	        hspd = lengthdir_x(vel,point_direction(0,0,(d-a)*vel,(s-w)*vel))*!global.pause 
	        vspd = lengthdir_y(vel,point_direction(0,0,(d-a)*vel,(s-w)*vel))*!global.pause
        
		}else{
		
	        hspd = lengthdir_x(cv,point_direction(0,0,lh		,lv			))*!global.pause 
	        vspd = lengthdir_y(cv,point_direction(0,0,lh		,lv			))*!global.pause
        
		}
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
        
	        var colisao2 = [obj_miniporta,obj_miniparede]
        
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
			
			//cmd = ang
			
			if (ang-cdm >  140){ cd = ang-5 if (ang-cdm >  260) cd = ang }
			if (ang-cdm < -140){ cd = ang+5 if (ang-cdm < -260) cd = ang }
			
			cd = lerp(cd,ang,0.15)
			
			arma.x = cx3
			arma.y = cy3
			arma.direction = direction
			arma.image_angle = cd
			arma.image_xscale = ix
			
			cdm = ang
			
		}
	}else{
		
		cx3 = x
		cy3 = y
		//if (instance_exists(arma)){
		//	
		//	instance_destroy(arma)
		//	arma = -4
		//	
		//}
	}
}

muda_estado = function(an = 1,pa = 1,mo = 1){
	
	var d = keyboard_check(ord("D"))
	var a = keyboard_check(ord("A"))
	var w = keyboard_check(ord("W"))
	var s = keyboard_check(ord("S"))
	
	var cn = gamepad_is_connected(0) and controle
	var lh = cn ? gamepad_axis_value(0,gp_axislh)  : 0
	var lv = cn ? gamepad_axis_value(0,gp_axislv)  : 0
	var cv = cn ? point_distance(0,0,lh,lv) : 0
	
	var ana = (d xor a) or (w xor s)
	var par = !a and !d and !w and !s or cv>.1 
	var mor = vida < 0
	
	var conds = [an and ana		,pa and par		,mo and mor		]
	var estds = [estado_andando	,estado_parado	,estado_morrendo]
	
	for (var e =0 ; e<array_length(conds);e++){
		
		if (conds[e]) estado = estds[e]
		
	}
}

colidindo = function(){
	
	audio_listener_orientation(0,0,1,0,-1,0)
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
	
estado_morrendo = function(){
	
	game_restart()
	
}

estado = estado_parado