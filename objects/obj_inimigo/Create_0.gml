#region Variaveis

randomise()

hspd =0 
vspd =0

velc = 1.6 
vela = 1.2 
vel = 0

vida_max = 20
vida = vida_max

dano = 0
dano_pai = 0

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

vendo_player_dist = 350
seguir_player_dist = 200
atirar_player_dist = vendo_player_dist/1.8

arma = -4
armai = irandom_range(0,array_length(global.armas_nome)-1)

cx = 0
cy = 0
cx3 = x
cy3 = y
cd  = 0
cdm = 0

terminou_caminho = 0
cria_caminho = 0
escolhe_caminho = 0

locais_andar = []

parado_tempo = 60*4
parado_timer = parado_tempo

perigo = 0
player_perigo = 0
player_x = x
player_y = y

volta_atirar_tempo = 5
volta_atirar_timer = volta_atirar_tempo

vigia_tempo = 60*5
vigia_timer = vigia_tempo
vigia_dir = 0
vigia_comeco = 0
vigia_qtd = 60
vigia_org = 0
vigia_ord = 0
vigia_vel = 1

arma_atira = 0
arma_usar = 0

#endregion

#region Metodos

#region Funcoes

#region Estados metodos

muda_estados = function (a = 1, p = 1,mo = 1,v = 1,at=1,pat=1,se=1,ac=1){
    
    var est = estado
	var vi = array_length(locais_andar) = 0
    var ve_e_pe = player_perigo and vendo_player
	var pa = parado_timer
	var an = !parado_timer
	var seg = player_perigo and !vendo_player and !point_in_circle(x,y,player_x,player_y,2)
	var ate = player_perigo and !vendo_player and  point_in_circle(x,y,player_x,player_y,2)
	var ata = ve_e_pe
	var mor = vida<=0
	var ests = [a and an		,p and pa 		,v and vi 		,se and seg 	,ac and ate		,at and ata 	,mo and mor 	]
    var estz = [estado_andando	,estado_parado	,estado_vigiando,estado_seguindo,estado_atencao	,estado_atirando,estado_morrendo]
	
	for (var e =0;e<array_length(ests);e++){
		
		if (ests[e]){
			
			if (ests[e]){
				
				if (estado != estz[e]){
				
					estados[array_length(estados)] = estz[e]
					estado = estz[e]
				
				}
				
				estado = estz[e]
				
			}
		}
	}
}

#endregion

#region Vida

sofrendo_dano = function(){
	
	if (dano){
		
		vida-=dano
		dano = 0
		
		if (instance_exists(dano_pai)){
		
			direction = point_direction(x,y,dano_pai.x,dano_pai.y)
			
			if (visao(vendo_player_dist,"vendo_player",,,,dano_pai,,35,0,1)){
				
				player_x = dano_pai.x
				player_y = dano_pai.y
				
			}	
		}
		
		vendo_player_timer-=15
		player_perigo = 1
		
	}
}

#endregion

#region Armas

puxa_arma = function(){
	
	if (arma_usar){
		
		if (!instance_exists(arma) and arma = -4){
		
			arma = instance_create_layer(x,y,"Arma",obj_arma_npc)
			arma.pai = id
		
			with(arma){
			
				i = other.armai
				municao				= global.armas_munc[i]
				recarregando_timer	= global.armas_reca[i] * 1.4
				tiro				= municao-1
				tiro_tempo			= global.armas_cadn[i]
				rajando_timer		= global.armas_raca[i] * 1.4
				tiro_timer			= tiro_tempo
				prep				= global.armas_prep[i]				
				prec_menos			= global.armas_prec[i] * 3
				coix				= global.armas_coix[i]
				coiy				= global.armas_coiy[i]
				dano				= global.armas_dano[i]
				recarregando_tempo	= global.armas_reca[i] * 1.4
				cliq				= global.armas_cliq[i]
				rajadas_tempo		= global.armas_raca[i] * 1
				rajadas_total		= global.armas_raja[i]
				shak				= global.armas_shak[i] / 2
				bala				= global.armas_bala[i] 
				rext				= global.armas_rext[i]
				sons				= array_length(global.armas_sons)>i ? array_create(array_length(global.armas_sons[i]),0) : []
				
			}
		
		}else if (instance_exists(arma) and arma!=-4){
		
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
		instance_destroy(arma)
		arma = -4
		
	}
}

#endregion

#region Movimentação

movendo = function(_x = -1,_y = -1){
    
	var col = point_in_circle(x,y,alvox,alvoy,2)
	
	if (cria_caminho or col or _x > -1){
		
		if (col and !cria_caminho){
			
			parado_timer = parado_tempo
			exit
			
		}
		
		randomise()
		
		var map = obj_controlador.mapa
		var cam = path_duplicate(caminho)
		
		var diag = 0
		
		var reg_atu = array_length(locais_andar)>0 ? irandom_range(0,array_length(locais_andar)-1) : -4
		var reg_ind = reg_atu>-1 ? locais_andar[reg_atu] : -4
		
		var reg_w = 0
		var reg_h = 0
		
		var reg_x = 0
		var reg_y = 0
		
		with(obj_regioes){
			
			if (reg_ind = reg){
				
				reg_x = bbox_left
				reg_y = bbox_top
				reg_w = bbox_right
				reg_h = bbox_bottom
				
			}
		}
		
		var dest_x = _x = -1 ? irandom_range(reg_x,reg_w) : _x
		var dest_y = _x = -1 ? irandom_range(reg_y,reg_h) : _y
		
		if (reg_atu = -4 and _x = -1){
			
			dest_x = x
			dest_y = y
			
		}
		
		if (mp_grid_path(map,caminho,x,y,dest_x,dest_y,diag) == true and mp_grid_get_cell(map,dest_x,dest_y)=-1){
			
			path_start(caminho,vela,path_action_stop,!diag)
			cria_caminho = 0
			alvox = dest_x
			alvoy = dest_y
			
		}
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
	
	if (vendo_player and !vendo_player_timer and alv.equipado){
		
		perigo=1
		player_perigo=1
		player_x = alv.x
		player_y = alv.y
		
	}
}

vigiando = function(){
	
	if (!vigia_comeco) vigia_timer--
	
	if (!vigia_timer){
		
		randomise()
		
		vigia_comeco = 1
		vigia_timer = vigia_tempo
		vigia_dir = choose(-1,1)
		vigia_org = direction
		vigia_ord = 0
		
	}
	
	if (vigia_comeco){
		
		if (vigia_ord<2){
		
			direction += vigia_vel*vigia_dir
		
			if (abs(direction-vigia_org)>vigia_qtd){
				
				vigia_dir=-vigia_dir
				direction += vigia_vel*vigia_dir
				vigia_ord++
			
			}
		}else{
			
			direction += vigia_vel*vigia_dir
			
			if (direction = clamp(direction,vigia_org-vigia_vel/2,vigia_org+vigia_vel/2)){
				
				vigia_comeco = 0
				direction = vigia_org
				player_x = 0
				player_y = 0
				parado_timer = parado_tempo
				cria_caminho = 1
				
			}
		}
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
    
	sofrendo_dano()
	
	perigo = 0
	cria_caminho = 1
	
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,,,35,0,1)
	
	if (estado_txt!="estado_parado"){
		
		randomise()
		var alet = random_range(.6,1.4)
		
		parado_timer = parado_tempo*alet
		
	}
	
	parado_timer--
	
    estado = estado_parado
    estado_txt = "estado_parado" 
	
	arma_usar  = 0
	arma_atira = 0
	
	muda_estados()
		
	path_end()
	
}

estado_andando = function(){
    
	sofrendo_dano()
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,,,35,0,1)
	
	movendo()
	
	arma_usar  = 0
	arma_atira = 0
	
    estado = estado_andando
    estado_txt = "estado_andando"       
	
	muda_estados()
	
}

estado_vigiando = function(){
    
	sofrendo_dano()
	vigiando()
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,,,60,0,1)
	
    estado = estado_vigiando
    estado_txt = "estado_vigiando"       
	
	arma_usar  = 0
	arma_atira = 0
	
	muda_estados()
	
	path_end()
	
}

estado_seguindo = function(){
	
	sofrendo_dano()
	vendo_o_perigo()
	movendo(player_x,player_y)
	path_start(caminho,vela,path_action_stop,1)
	puxa_arma()
	visao(vendo_player_dist,"vendo_player",,,,,,45,0,1)
	
	arma_usar = 1
	arma_atira = 0
	
    estado = estado_seguindo
    estado_txt = "estado_seguindo"       
	
	muda_estados()
	
}

estado_atirando = function(){
	
	sofrendo_dano()
	vendo_o_perigo()
	puxa_arma()
	visao(vendo_player_dist,"vendo_player",,,,,,30,0,1)
	
	arma_usar = 1
	arma_atira = 1
	
    estado = estado_atirando
    estado_txt = "estado_atirando"       
	
	muda_estados()
	
	path_end()
	
}

estado_atencao = function(){
    
	sofrendo_dano()
	vigiando()
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,,,60,0,1)
	
    estado = estado_atencao
    estado_txt = "estado_atencao"       
	
	arma_usar  = 1
	arma_atira = 0
	
	muda_estados()
	
	path_end()
	
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