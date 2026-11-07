#region Variaveis

if (!global.cria_npcs){
	
	instance_destroy()
	exit;
	
}

cor		= global.parts_cores[objetos.npc]
velp	= global.parts_vel	[objetos.npc]
distc	= global.parts_distc[objetos.npc]
danos	= global.parts_danos[objetos.npc]
	
randomise()

hspd =0 
vspd =0

velc = random_range(1.6	,2.1)
vela = random_range(1.2	,1.7)
vel = 0

vida_max = 10
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
vendo_atencao_mais	= 1
vendo_atencao_menos = 1

vendo_player_dist = 400
atirar_player_dist = 350

var ai = irandom_range(0,array_length(global.levels_armas[global.level])-1)

arma = noone
armai = global.levels_armas[global.level][ai]

cx = 0
cy = 0
cx3 = x
cy3 = y
cd  = 0
cdm = 0
coid = 0

terminou_caminho = 0
cria_caminho = 0
escolhe_caminho = 0

locais_andar = []

parado_tempo = 60*4
parado_timer = parado_tempo

perigo = 1

player_perigo = 1

player_x = x
player_y = y

player_dir = 0

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
vigia_volta = 1

arma_atira = 0
arma_usar = 0
arma_chance = 25
arma_ter = random_range(0,100) > 100 - arma_chance ? 1 : 0

colisao = [] array_copy(colisao,0,global.colisao_normal,0,array_length(global.colisao_normal))

mod_qtd = 0
mod_max = global.levels_mods[global.level]

alvo = obj_inimigo

visao_inicio()

image_alpha = 0

#endregion

#region Metodos

#region Funcoes

#region Estados metodos

muda_estados = function (a = 1, p = 1,mo = 1,at=1,pat=1,se=1,ac=1){
    
    var est = estado
	
    var ve_e_pe = player_perigo and vendo_player and instance_exists(alvo) and point_distance(x,y,alvo.x,alvo.y)<atirar_player_dist
	
	var pa = parado_timer
	
	var an = !parado_timer
	
	var seg = player_perigo and !point_in_circle(x,y,player_x,player_y,3) and !vigia_volta and arma_ter
	
	var ate = player_perigo and !vendo_player and  point_in_circle(x,y,player_x,player_y,3)	and !vigia_volta
	
	var ata = ve_e_pe and place_meeting(x,y,obj_camera)
	
	var mor = vida<=0
	
	var pau = global.pause
	
	var ests = [a and an		,p and pa 		,se and seg 	,ac and ate		,at and ata 	,mo and mor 	,pau		 ]
    var estz = [estado_andando	,estado_parado	,estado_seguindo,estado_atencao	,estado_atirando,estado_morrendo,estado_pause]
	
	for (var e =0;e<array_length(ests);e++){
		
		if (ests[e]){
			
			if (ests[e]){
				
				if (estado != estz[e]){
				
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
		
		if (instance_exists(dano_pai) and dano_pai){
			
			alvo = dano_pai
			player_x = dano_pai.x
			player_y = dano_pai.y
				
			direction = point_direction(x,y,player_x,player_y)
			cria_caminho = 1
			
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
			
			cx3 = x+16
			cy3 = y+16
			arma = instance_create_layer(cx3,cy3,"Arma",obj_arma_npc)
			arma.pai = id
		
			with(arma){
			
				i = pai.armai
				municao				= global.armas_munc[i]
				recarregando_tempo	= global.armas_recn[i]
				recarregando_timer	= recarregando_tempo
				tiro				= municao-1
				tiro_tempo			= global.armas_cadn[i]
				rajando_timer		= global.armas_raca[i] * 1.4
				tiro_timer			= tiro_tempo
				prep				= global.armas_prep[i]				
				prec_menos			= global.armas_prec[i] * 3
				coix				= global.armas_coix[i]
				coiy				= global.armas_coiy[i]
				dano				= global.armas_dano[i]
				cliq				= global.armas_cliq[i]
				rajadas_tempo		= global.armas_raca[i] * 1
				rajadas_total		= global.armas_raja[i]
				shak				= global.armas_shak[i] / 4
				bala				= global.armas_bala[i] 
				rext				= global.armas_rext[i]
				
				baru				= global.armas_baru[i]
				
				part_reca			= global.armas_part[i][1]
				part_tiro			= global.armas_part[i][0]
				part_cock			= global.armas_part[i][2]

				som_tiro			= array_length(global.armas_sons[i])>0 ? global.armas_sons[i][0] : 0
				
				sons				= array_length(global.armas_sons)>i ? array_create(array_length(global.armas_sons[i]),0) : []
				
				mods = array_create(array_length(global.armas_modn[i]),0)
				modi = array_create(array_length(global.armas_modn[i]),0)
				
				for (var m=0;m<array_length(mods);m++){
					
					var a = irandom_range(0,array_length(global.armas_modn[i][m]) -1)
					
					if (a != 0 or pai.mod_qtd >= pai.mod_max){
						
						mods[m] = a
						pai.mod_qtd ++
						
					}else{
						
						mods[m] = 0
						
					}
					
					modi[m] = array_length(global.armas_modp[i][m])>0 ? irandom_range(0,sprite_get_number(global.armas_modp[i][m][mods[m]])) : 0
				
				}
			}
		}
		
		if (instance_exists(arma) and arma!=-4){
		
	        var marg = 8
        
	        var cx2 = 8
	        var cy2 = 8
        
	        var colisao2 = [obj_miniporta,obj_miniparede]
        
			var x1 = x + lengthdir_x(cx2 + marg,direction) 
	        var y1 = y + lengthdir_y(cy2 + marg,direction)
	        var dir = direction + coid
			
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
			arma.direction = direction + coid
			arma.image_angle = cd
			arma.image_xscale = ix
		
			cdm = ang
			coid = lerp(coid,0,.1)
			
		}
	}
}

#endregion

#region Movimentação

movendo = function(_x = -1,_y = -1,seg = 0){
    
	var col = point_in_circle(x,y,alvox,alvoy,3)
	
	if (cria_caminho or _x !=-1){
		
		if (col and !cria_caminho and _x !=-1){
			
			parado_timer = parado_tempo
			exit
			
		}
		
		var qtd = 0
		var qtd_max = 10
		
		while(qtd<qtd_max){
			
			if (qtd >= qtd_max){
				
				break;
				
			}
			
			qtd ++
			randomise()
		
			var map = obj_controlador.mapa
		
			var diag = 0
		
			var reg_atu = 0//array_length(locais_andar)>0 ? irandom_range(0,array_length(locais_andar)-1) : -4
			var reg_ind = 0//reg_atu>-1 ? locais_andar[reg_atu] : -4
		
			var reg_w = 0
			var reg_h = 0
		
			var reg_x = 0
			var reg_y = 0
		
			if (instance_exists(obj_regioes)){
		
				with(obj_regioes){
			
					if (reg_ind = reg){
				
						reg_x = bbox_left
						reg_y = bbox_top
						reg_w = bbox_right
						reg_h = bbox_bottom
				
					}
				}
			}
		
			var dest_x = _x = -1 ? irandom_range(reg_x,reg_w) : _x
			var dest_y = _x = -1 ? irandom_range(reg_y,reg_h) : _y
		
			if (reg_atu = -4 and _x = -1){
			
				dest_x = x
				dest_y = y
			
			}
		
			var sel_x = dest_x// div obj_controlador.tmdw * (obj_controlador.tmdw - obj_controlador.tmdw/2)
			var sel_y = dest_y// div obj_controlador.tmdh * (obj_controlador.tmdh - obj_controlador.tmdh/2)
			
			if (mp_grid_path(map,caminho,x,y,sel_x,sel_y,diag) == true and mp_grid_get_cell(map,sel_x,sel_y)=-1){
			
				path_start(caminho,vela,path_action_stop,!diag)
			
				cria_caminho = 0
			
				alvox = sel_x
				alvoy = sel_y
			
				if (seg){
				
					player_x = alvox
					player_y = alvoy
				
				}
			}
		}
	}
}

colidindo = function(){
	
	//speed = 0
	terminou_caminho=0
	var vp = !vendo_player ? -vendo_atencao_mais : vendo_atencao_menos
	
	vendo_player_timer -= vp
	vendo_player_timer = clamp(vendo_player_timer,0,60)
	
	hspd = x-xult
	vspd = y-yult
	
	xult = x
	yult = y
	
	if (estado = estado_seguindo) direction = point_direction(x,y,player_x,player_y)
		
}

#endregion 

#region Perigo

ouvindo = function(){
	
	var obj = instance_exists(alvo) ? instance_nearest(x,y,alvo) : -4
	
	var dis = obj ? distance_to_object(alvo) : 1000000
	
	if (0){//instance_exists(obj_controlador) and player_x = x and dis < 600){
	
		var bar = obj_controlador.barulhos
	
		for (var b=0;b<array_length(bar);b++){
			
			#region To ouvindo o tiro
			
			if (point_in_circle(x,y,bar[b][0],bar[b][1],bar[b][2]) and instance_exists(bar[b][3])){
				
				var col = point_in_circle(x,y,alvox,alvoy,3)
	
				if (col) cria_caminho = 1
				
				if (bar[b][3].object_index != object_index){
					
					#region Alguem atirou
					
					var dist = 16
			
					randomise()
			
					player_x = random_range(bar[b][0]-dist,bar[b][0]+dist)
					player_y = random_range(bar[b][1]-dist,bar[b][1]+dist)
				
					while(mp_grid_get_cell(obj_controlador.mapa,player_x,player_y) = 0){
				
						randomise()
				
						player_x = random_range(bar[b][0]-dist,bar[b][0]+dist)
						player_y = random_range(bar[b][1]-dist,bar[b][1]+dist)
				
					}
				
					player_perigo = 1
					vigia_volta = 0
					
					direction = point_direction(x,y,player_x,player_y)
					alvo = bar[b][3]
					
					#endregion
					
				}else{
					
					#region Algum amigo atirou
					
					var px = bar[b][3].player_x
					var py = bar[b][3].player_y
					var dist = 16
			
					randomise()
			
					player_x = random_range(px-dist,px+dist)
					player_y = random_range(py-dist,py+dist)
				
					while(mp_grid_get_cell(obj_controlador.mapa,player_x,player_y) = 0){
				
						randomise()
				
						player_x = random_range(px-dist,px+dist)
						player_y = random_range(py-dist,py+dist)
				
					}
				
					player_perigo = 1
					vigia_volta = 0
			
					direction = point_direction(x,y,player_x,player_y)
					
					#endregion
					
				}
			}
			
			#endregion
			
		}
	}
}

vendo_o_perigo = function(){
	
	var alv = obj_inimigo
	
	if (vendo_player and !vendo_player_timer and instance_exists(alv)){
		
		alvo = alv
		perigo=1
		
		player_perigo=1
		
		player_x = alv.x
		player_y = alv.y
		
		player_dir = point_direction(x,y,alv.x,alv.y)
		vigia_volta = 0
		
		var col = point_in_circle(x,y,alvox,alvoy,3)
	
		if (col) cria_caminho = 1
				
	}
}

#endregion

#region Desenhando

desenhando = function(){
	
	image_angle = point_direction(0,0,hspd,vspd)
	draw_self()
	
}

me_destacando = function(){
	
	if (arma_atira){
	
		var obj = instance_place(x,y,obj_regioes)
	
		if (instance_exists(obj)){
		
			if (obj.vendo = 0){
		
				if (image_alpha = 1) image_alpha = 0
		
				layer = layer_get_id("Level")
				if (instance_exists(arma)) arma.layer = layer_get_id("UI")
				image_alpha = lerp(image_alpha,.25,.1)
	
			}else{
			
				layer = layer_get_id("Level")
				if (instance_exists(arma)) arma.layer = layer_get_id("UI")
				image_alpha = lerp(image_alpha,1,.1)
	
			}
		}
	}else{
		
		ds_list_clear(visao_col)
	
		var obj = []
	
		instance_place_list(x,y,obj_regioes,visao_col,0)
	
		for (var o=0;o<ds_list_size(visao_col);o++){
		
			obj[array_length(obj)] = ds_list_find_value(visao_col,o).vendo
		
		}
	
		if (achando_na_array(obj,1)  = -1) image_alpha = lerp(image_alpha,0,.1)
		if (achando_na_array(obj,1) != -1) image_alpha = lerp(image_alpha,1,.1)
		
		layer = layer_get_id("Level")
		if (instance_exists(arma)) arma.layer = layer_get_id("UI")
	
	}
}

#endregion

#endregion

#region Estados

estado_parado = function(){
    
	arma_usar	= arma_ter ? player_perigo : 0
	arma_atira	= arma_ter ? 0			   : 0
	
	ouvindo()
	sofrendo_dano()
	puxa_arma()
	
	perigo = 0
	cria_caminho = 1
	vendo_atencao_mais = 1
	vendo_atencao_menos = 1
	
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,alvo,,35,0,1)
	
	if (estado_txt!="estado_parado"){
		
		randomise()
		var alet = random_range(.6,1.4)
		
		parado_timer = parado_tempo*alet
		
	}
	
	parado_timer--
	
    estado = estado_parado
    estado_txt = "estado_parado" 
	
	muda_estados()
		
	path_end()
	
}

estado_andando = function(){
    
	var dir = direction
	
	arma_usar	= arma_ter ? player_perigo : 0
	arma_atira	= arma_ter ? 0			   : 0
	
	vendo_atencao_mais	= 1
	vendo_atencao_menos = .75
	
	ouvindo()
	sofrendo_dano()
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,alvo,,35,0,1)
	puxa_arma()
	
	movendo()
	
	var tmd = path_get_length(caminho)
	if (x = xult and y = yult) path_position = vela / tmd
	direction = dir
	
    estado = estado_andando
    estado_txt = "estado_andando"       
	
	muda_estados()
	
}

estado_seguindo = function(){
	
	arma_usar	= arma_ter ? player_perigo : 0
	arma_atira	= arma_ter ? 0			   : 0
	
	vigia_volta = 0
	
	vendo_atencao_mais = 2
	vendo_atencao_menos = .5
	
	ouvindo()
	sofrendo_dano()
	vendo_o_perigo()
	puxa_arma()
	
	if (player_x!=alvox or player_y!=alvoy){ 
		
		movendo(player_x,player_y,1)
		
	}
	
	visao(vendo_player_dist,"vendo_player",,,,alvo,,45,0,1)
	
    estado = estado_seguindo
    estado_txt = "estado_seguindo"       
	
	muda_estados()
	
}

estado_atirando = function(){
	
	arma_usar	= arma_ter ? 1 : 0
	arma_atira	= arma_ter ? 1 : 0
	
	ouvindo()
	sofrendo_dano()
	vendo_o_perigo()
	puxa_arma()
	visao(vendo_player_dist,"vendo_player",,,,alvo,,30,0,1)
	
    estado = estado_atirando
    estado_txt = "estado_atirando"       
	
	vendo_atencao_mais = 2
	vendo_atencao_menos = .5
	
	if (instance_exists(obj_player)) direction = point_direction(x,y,obj_player.x,obj_player.y)
	
	muda_estados()
	
	path_end()
	
}

estado_atencao = function(){
    
	arma_usar	= arma_ter ? player_perigo : 0
	arma_atira	= arma_ter ? 0			   : 0
	
	vigia_volta = 0
	
	ouvindo()
	sofrendo_dano()
	vendo_o_perigo()
	visao(vendo_player_dist,"vendo_player",,,,obj_inimigo,,60,0,1)
	puxa_arma()
	
    estado = estado_atencao
    estado_txt = "estado_atencao"       
	
	vendo_atencao_mais = 2
	vendo_atencao_menos = .35
	
	muda_estados()
	
	path_end()
	
}
	
estado_morrendo = function(){
    
	randomise()
	
	var moedas = irandom_range(10,50)
	
    estado = estado_morrendo
    estado_txt = "estado_morrendo"       
	
	global.dinheiro += moedas
	
	instance_destroy()
	
}

estado_pause = function(){
    
	puxa_arma()
	
    estado = estado_pause
    estado_txt = "estado_pause"     
	
	arma_atira = 0
	cria_caminho = 1
	
	muda_estados()
	
	path_end()
	
}

#endregion

#endregion

estado = estado_parado

	var alv = instance_exists(obj_player) ? instance_nearest(x,y,obj_player) : -4
	
if (instance_exists(alv)) direction = point_direction(x,y,alv.x,alv.y)   