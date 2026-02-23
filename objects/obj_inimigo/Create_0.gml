#region Variaveis

hspd =0 
vspd =0
velc = 1.8 
vela = 1.2 
vel = 0
vida_max = 20
vida = vida_max

estado = 0
estado_txt = ""
estados = []

alvox = x
alvoy = y

xult = x
yult = y

caminho = path_add()

caminhando = 0

caminhando_tempo = 60*4
caminhando_timer = 0//caminhando_tempo

vendo_player = 0
vendo_player_timer = 0

vendo_player_dist = 250
pra_atirar_player_dist = vendo_player_dist/1.2
atirar_player_dist = vendo_player_dist/1.8

arma = -4
cx = 0
cy = 0

terminou_caminho = 0
cria_novo_caminho = 0
escolhe_caminho = 0

locais_andar = []

parado_tempo = 60*4
parado_timer = parado_tempo

perigo = 0
player_perigo = 0

volta_atirar_tempo = 5
volta_atirar_timer = volta_atirar_tempo
armai = 3

#endregion

#region Metodos

#region Funcoes

#region Estados metodos

muda_estados = function (a = 1, p = 1,m = 1,v = 1,at=1,pat=1,se=1){
    
    var est = estado
    var mor = vida<=0
	var alv = obj_player
	var seg = point_distance(x,y,alv.x,alv.y)<vendo_player_dist and !vendo_player_timer and perigo and player_perigo
	var pati = point_distance(x,y,alv.x,alv.y)<pra_atirar_player_dist and !vendo_player_timer and perigo and player_perigo
	var ati = point_distance(x,y ,alv.x,alv.y)<atirar_player_dist and instance_exists(arma) and !vendo_player_timer and perigo and player_perigo
	var pa = terminou_caminho and parado_timer
	var vi = array_length(locais_andar)=0 and (!perigo or !player_perigo or vendo_player_timer)	
    var ests = [a and !parado_timer	,p and pa 		,v and vi		,seg and se		,pat and pati		,at and ati		]
    var estz = [estado_andando		,estado_parado	,estado_vigiando,estado_seguindo,estado_pra_atirar	,estado_atirando]
	
	for (var e =0;e<array_length(ests);e++){
		
		if (ests[e]){
			
			if (estado != estz[e]){
				
				estados[array_length(estados)] = estz[e]
				estado = estz[e]
				
			}
		}
	}
}

#endregion

#region Armas

puxa_arma = function(){
	
	if (!instance_exists(arma) or !arma){
		
		arma = instance_create_layer(x,y,"Arma",obj_arma)
		arma.pai = id
		
		with(arma){
			
			i = other.armai
			municao				= global.armas_munc[i]*1.3
			recarregando_timer	= global.armas_reca[i]*1.3
			tiro_tempo			= global.armas_cade[i]*1.3
			rajando_timer		= global.armas_raca[i]*1.3
			tiro_timer = tiro_tempo
			tiro = municao-1
			
		}
		
	}else{
		
		if (vendo_player_timer or !perigo or player_perigo){
			
			arma.tiro_timer = arma.tiro_tempo
			
		}
		
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
        
		var _x = x + lengthdir_x(cx,direction)
		var _y = y + lengthdir_y(cy,direction)
        var ix = dir = clamp(dir,90,270) ? -1 : 1
		var ang = ix > 0 ? dir : dir+180
        
		arma.x = _x
		arma.y = _y
		arma.direction = direction
		arma.image_angle = ang
		arma.image_xscale = ix
		
	}
}

#endregion

#region Movimentação

movendo = function(){
    
    if ((point_in_circle(x,y,alvox,alvoy,2)) or cria_novo_caminho or (!vendo_player_timer and perigo and player_perigo)){
        
        randomise()
        
		var alvwmx = x
		var alvwmn = x
		var alvhmx = y
		var alvhmn = y
		
		var cam = path_add()
		
		#region Escolhendo pra onde ir
		
		if (array_length(locais_andar)>0){
			
			var ind = irandom_range(0,array_length(locais_andar)-1)
			var i = locais_andar[ind]
			var numb = 0
			var ids = []
			var _x = x
			var _y = y
			var alx = alvox
			var aly = alvoy
			var _y = y
			
			with(obj_regioes){
				
				numb++
					
				if (reg = i){
					
					ids[array_length(ids)] = id
					
				}
			}
			
			ind = irandom_range(0,array_length(ids)-1)
				
			with(ids[ind]){
			
				alvwmx = bbox_right
				alvwmn = bbox_left
				alvhmx = bbox_bottom
				alvhmn = bbox_top
			
			}
		}
		
		#endregion
		
        var alvx = irandom_range(alvwmn,alvwmx)
        var alvy = irandom_range(alvhmn,alvhmx)
		
        if (!vendo_player_timer and perigo and player_perigo){
            
            alvx = obj_player.x
            alvy = obj_player.y
            
        }
		
        if (mp_grid_path(obj_controlador.mapa,cam,x,y,alvx,alvy,0)){
			
			cria_novo_caminho=0
			
			if (point_in_circle(x,y,alvox,alvoy,2)){
		
				terminou_caminho=1
				cria_novo_caminho=1
			
			}
			
			vel = perigo ? velc : vela
			//show_message(path_get_number(cam))
			caminho = path_duplicate(cam)
            path_start(caminho,vel,path_action_stop,1)
            alvox = alvx
            alvoy = alvy
			
        }
		
		path_delete(cam)
		
    }
}

colidindo = function(){
	
	terminou_caminho=0
	var vp = !vendo_player ? -1 : 1
	
	vendo_player_timer -= vp
	vendo_player_timer = clamp(vendo_player_timer,0,60)
	
	hspd = x-xult
	vspd = y-yult
	
	xult = x
	yult = y
	
}

#endregion 

#region Perigo

vendo_o_perigo = function(){
	
	var alv = obj_player
	var x1 = alv.x + lengthdir_x(vendo_player_dist,alv.direction)
	var y1 = alv.y + lengthdir_y(vendo_player_dist,alv.direction)
	var col = collision_line(alv.x,alv.y,x1,y1,id,0,0)
	
	if (col and !vendo_player_timer and alv.equipado){
		
		perigo=1
		player_perigo=1
		
	}
}

#endregion

#region Desenhando

desenhando = function(){
	
	image_angle = point_direction(0,0,hspd,vspd)
	draw_self()
	
}

#endregion

#endregion

#region Estados

estado_parado = function(){
    
	perigo = 0
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,,,45)
	
	if (estado_txt!="estado_parado"){
		
		randomise()
		var alet = random_range(.6,1.4)
		
		parado_timer = parado_tempo*alet
		
	}
	  
	parado_timer--
	
    estado = estado_parado
    estado_txt = "estado_parado"       
	
	if (!parado_timer or (!vendo_player_timer and perigo and player_perigo)){
		
		muda_estados()
		parado_timer = 1
		
	}
	
	path_end()
	
}

estado_andando = function(){
    
	perigo = 0
    movendo()
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,,,30)
    
    estado = estado_andando
    estado_txt = "estado_andando"       
    
    muda_estados()
    
}

estado_vigiando = function(){
    
	puxa_arma()
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,,,50)
    
    estado = estado_vigiando
    estado_txt = "estado_vigiando"       
    
    muda_estados()
    
}

estado_seguindo = function(){
    
    movendo()
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,,,45)
    
    estado = estado_seguindo
    estado_txt = "estado_seguindo"       
    
    muda_estados()
    
}

estado_pra_atirar = function(){
    
	puxa_arma()
	vendo_o_perigo()
    movendo()
	visao(vendo_player_dist,"vendo_player",,,,,,60)
    
    estado = estado_pra_atirar
    estado_txt = "estado_pra_atirar"       
    
    muda_estados(,,,0)
    
}

estado_atirando = function(){
    
	path_end()
	puxa_arma()
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,,,60)
	
	volta_atirar_timer--
	
    estado = estado_atirando
    estado_txt = "estado_atirando"       
	arma.tiro_timer = global.armas_cade[arma.i]
    
    if (volta_atirar_timer<=0){ 
		
		estado = estado_parado
		volta_atirar_timer = volta_atirar_tempo
		
	}
}

estado_morrendo = function(){
    
    estado = estado_morrendo
    estado_txt = "estado_morrendo"       
    
    instance_destroy()
    
}

#endregion

#endregion

estado = estado_parado

direction = point_direction(x,y,obj_player.x,obj_player.y)   