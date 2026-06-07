#region Variaveis

pai = id

i=0

equip = 0
usar  = 0

recarregando = 0
recarregando_timer = 0
recarregando_tempo = 0

rext=0

pode_pente = 1
pode_tirof = 1

prec = 0
prec_menos = 0

municao = 0
tiro = 0 
dano = 0

tiro_timer = 0
tiro_tempo = 0

rajando_timer = 0
rajadas = 0
rajadas_tempo = 0
rajadas_total = 0

sons = []

estado = 0
estado_txt = ""

fogo_tempo = 0
fogo_ii = 0
fogo_dir = 0
fogo_ix = 0

coix = 0
coiy = 0

cock = 0

cliq = 0
shak = 0
bala = 0

laser = 1

reff = 0
refff = 0

mira_alp = 0
mira_vel = 0

volu = 1

peso = 0

baru = 0

part_reca = 0
part_tiro = 0
part_cock = 0

modo = 0
mung = 1
tirg = mung

pext = []
equip = 1

tem_pente = 1

mods = []
modi = []

mx = device_mouse_x_to_gui(0)
my = device_mouse_y_to_gui(0)

visao_inicio()

#endregion

audio_falloff_set_model(audio_falloff_exponent_distance)

#region Metodos

#region Funções

muda_estados = function(pa=1,at=1,re=1,mi=1){
	
	var est = estado
	var atr = tiro_timer>=0
	var rec = recarregando
	var mir = 0
	
	var ests = [!atr and pa		,mir and mi		,atr and at		,rec and re			]
	var estz = [estado_parado	,estado_mirando	,estado_atirando,estado_recarregando]
	
	for (var e=0;e<array_length(estz);e++){
		
		if (ests[e]){
			
			if (estz[e] != estado){
				
				
				
			}
			
			estado = estz[e]	
			
		}
	}
}

desenha_sprite = function(){
	
	image_alpha = pai.image_alpha
	sprite_index = global.armas_sprt[i]
	image_index = tiro = 0
	draw_self()
	
	if (global.debug){
	
		draw_set_colour(c_black)
	
		//draw_text(x,y,estado_txt)
		//draw_text(x,y-20,recarregando)
		//draw_text(x,y-40,keyboard_check(ord("R")))
	
		draw_set_colour(-1)
	
	}
}

desenha_fogo = function(){
	
	if (fogo_tempo>0){
	
		var sprh = sprite_get_width(global.armas_sprt[i]) +12
		var dirp = image_xscale=1 ? direction+90 : direction-90
		var dirp2 = image_xscale!=1 ? direction+90 : direction-90
		var margy = lengthdir_y(3,dirp2)
	
		var _x = x + lengthdir_x(sprh,direction)
		var _y = y + margy + lengthdir_y(sprh,direction)
			
		var tmdx = global.tiros_velo[i]/10
		var tmdy = global.tiros_velo[i]/10
	
		draw_sprite_ext(spr_fogo,fogo_ii,_x,_y,fogo_ix*image_xscale,fogo_ix,image_angle,image_blend,image_alpha)
	
	}
}

mirando = function(){
	
}

atira = function(){
	
	var ct = instance_exists(pai) and variable_instance_exists(pai,"controle") ? pai.controle : 0
	var grd = 0
	var cn = ct and gamepad_is_connected(0)
	
	if (i<array_length(global.armas_mods[0])){
	
		for (var m=0;m<array_length(global.armas_mods[0][i]);m++){
		
			if (array_length(global.armas_modn[i][m])>0 and is_array(global.armas_mode[i][m][mods[m]]) and global.armas_mode[i][m][mods[m]][3]=11){
				
				grd = m+1
				
			}
		}
	}
	
	var grd_tec = 0
	
	var atr_tec = !tiro_timer
	var prs_tec = tiro_timer=1 and tiro = 0
	
	if (grd_tec and grd and !cock and !recarregando){
		
		modo=!modo
	
	}
	
	tiro = clamp(tiro,0,municao)
	tirg = clamp(tirg,0,mung)
	
	var tec = atr_tec
	var tec2 = 0
	var atn = (tec or tec2) and !tiro_timer and !recarregando and !rajadas and (array_length(sons)<=1 or !audio_is_playing(sons[1]))
	var raj = rajadas and !rajando_timer and !recarregando and (array_length(sons)<=1 or !audio_is_playing(sons[1]))
	
	if (!modo){ //atira normal
	
		if (atn or raj){
		
			if (tiro>0){
				
				var vol = 0
				
				if (!rajadas and tec) rajadas = rajadas_total
		
				repeat(bala){
			
					var sil = i<array_length(global.armas_mods[0]) and array_length(mods)>2 and array_length(global.armas_modn[i][2])>0 and is_array(global.armas_mode[i][2][mods[2]]) and global.armas_mode[i][2][mods[2]][3]=4
					var fre = i<array_length(global.armas_mods[0]) and array_length(mods)>2 and array_length(global.armas_modn[i][2])>0 and is_array(global.armas_mode[i][2][mods[2]]) and global.armas_mode[i][2][mods[2]][3]=3
				
					var sprh	= sprite_width*image_xscale
					var dirp	= image_xscale=1	? direction+90 : direction-90
					var dirp2	= image_xscale!=1	? direction+90 : direction-90
					var margy	= lengthdir_y(3,dirp2)
				
					var tiiv = global.tiros_velo[i]*1
					var tx = x + lengthdir_x(sprh/2,direction)
					var ty = y + margy + lengthdir_y(sprh/2,direction)
				
					var _x = x + lengthdir_x(sprite_width*image_xscale,direction)
					var _y = y + margy + lengthdir_y(sprh,direction)
			
					randomise()      
				
					var dir = direction - random_range(prec,-prec)
					var dir_dif = random_range(-(coix+coiy),(coix+coiy))
					
					var t = instance_create_layer(_x,_y,"Pessoas",obj_tiro)
					
					t.i = i                                     
					t.direction = dir                           
					t.image_angle = dir
					
					t.vel = global.tiros_velo[i]
					t.dano = dano                
					t.pai = pai                 
					
					pai.coid += dir_dif
					
					prec+=prec_menos             
				
					pai.cx -= coix *1.5          
					pai.cy -= coiy *1.5          
			
					global.shake += shak*global.shakes[global.configs[1][0]]  
            
					//toca_som(global.armas_sons[i][0],1,0,1,.15)
					fogo_tempo = 10
					fogo_ii = irandom_range(0,sprite_get_number(spr_fogo))
					fogo_dir = dir
					fogo_ix = global.tiros_velo[i]/10
				
					if (sil) fogo_tempo = 0
					
					if (fre){ 
						
						fogo_ix *= 1.25
						fogo_tempo /=2
				
					}
				
					vol = sil ? 0.25 : 1
				
				}                                            
				
				seta_part("cria_tiro",tx,ty,[part_tiro,part_tiro],global.tiros_part[i],c_white,dirp,[tiiv,tiiv],[2,2.5],[2,2.5],45,[tiiv/2,tiiv/2],0,0)
				
				repeat(part_tiro){
					
					toca_som([snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14],1,10,50,,0,.1,1)
					
				}
					
				prep--
				tiro--	
				rajadas--
	    
				rajando_timer = rajadas_total
			
				if ((rajadas<=0 and global.armas_prep[i]<0) or (prep<=0 and global.armas_prep[i]>0)){ 
					
					randomise()
					var alet = random_range(.8,1.2)
					
					tiro_timer = tiro_tempo//    *alet
				
				}
		
				if (!tiro){ 
					
					var cabe = i<array_length(global.armas_sprf)
					
					var mod_i = mods[4]
					var spr_i = modi[4]
					
					var cla_i = clamp(mod_i,0,array_length(global.armas_sprf[i])-1)
					
					var espr = asset_get_type(global.armas_sprf[i][cla_i]) == asset_sprite and pode_tirof and tem_pente
			
					if (espr){
						
						var _x = x + lengthdir_x(sprite_width/3,direction)
						var _y = y + lengthdir_y(sprite_width/3,direction)
						
						seta_part("cria_tirof",_x,_y,[1,1],global.armas_sprf[i][cla_i],c_white,dirp,[6,6],[image_xscale,image_xscale],[1,1],20,[3,3],spr_i,0)
						
						repeat(1){
						
							toca_som([snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14],1,10,50,,0,.1,1)
						
						}
					
						pode_tirof = 0
						tem_pente = 0
						
					}	
			
					if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>6 and asset_get_type(global.armas_sons[i][6]) == asset_sound){ 
	
						sons[6] = toca_som(global.armas_sons[i][6],1,30,200,,0,.1,0)
						refff = 0
					
					}
				}
				
				//audio_play_sound(snd_249_cock,10,0)
				if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>0 and asset_get_type(global.armas_sons[i][0]) == asset_sound) sons[0] = toca_som(global.armas_sons[i][0],volu*vol,300,600,,0,.20,0)
				
				fazendo_barulho(x,y,global.armas_baru[i],pai)
				
			}else{
			
				if (prs_tec){
				
					toca_som(snd_falha,1,50,200,,0,.1,0)
				
				}
			
				rajadas = 0
			
			}
		}
	}else{ //lança granadas
		
		if (prs_tec and tirg){
			
			var _i = grd-1
			
			var sprh = global.armas_modx[i][_i][0]*image_xscale
			var dirp = image_xscale=1 ? direction+90 : direction-90
			var dirp2 = image_xscale!=1 ? direction+90 : direction-90
			var margy = lengthdir_y(2+ global.armas_modx[i][_i][1],dirp2)
			
			var tiiv = global.tiros_velo[i]*1
			var tx = x + lengthdir_x(5,direction)
			var ty = y + margy + lengthdir_y(5,direction)
			
			var _x = x + lengthdir_x(sprh,direction)
			var _y = y + margy + lengthdir_y(sprh,direction)
			
			randomise()      
			
			var dir = direction - random_range(prec,-prec)
			var t = instance_create_layer(_x,_y,"Pessoas",obj_granadas)             
			t.direction = dir                           
			t.image_angle = dir  
			
			t.vel = global.tiros_velo[i]           
			t.pai = pai                                 
			t.dano = 1
			
			prec+=prec_menos             
	        
			pai.cx -= coix *2          
			pai.cy -= coiy *2          
			
			global.shake+=shak*1.5 * global.shakes[global.configs[1][0]]     
            
			fogo_tempo = 10
			fogo_ii = irandom_range(0,sprite_get_number(spr_fogo))
			fogo_dir = dir
			fogo_ix = 0
			
			toca_som(snd_lanca_tiro,1,100,500,,0,.10,0)
		
			tirg--
			
		}
	}
}

preparando = function(){
	
	var ct = instance_exists(pai) and variable_instance_exists(pai,"controle") ? pai.controle : 0
	var cn = ct and gamepad_is_connected(0)
	
	var coc_tec = 0
	var coc = coc_tec and (array_length(sons)<=1 or !audio_is_playing(sons[1]))
	
	if (coc) cock = 2
	
	if (cock and reff and (array_length(sons)<=3 or !audio_is_playing(sons[3])) and i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>4 and asset_get_type(global.armas_sons[i][4]) == asset_sound){ 
		
		sons[4] = toca_som(global.armas_sons[i][4],1,30,200,,0,.1,0)
		reff = 0
		
	}
	
	var man = global.armas_prep[i]>0 and prep<=0 and tiro_timer=tiro_tempo div 2
	var sem = cock and (array_length(sons)<=5 or !audio_is_playing(sons[5])) and (array_length(sons)<=3 or !audio_is_playing(sons[3])) and (array_length(sons)<=4 or !audio_is_playing(sons[4])) and (array_length(sons)<=1 or !audio_is_playing(sons[1]))
	var dirp = image_xscale=1 ? direction+90 : direction-90
	var tiiv = global.tiros_velo[i]*.75
	
	var tmd = 1
	var pos = 1
	var poc = 1
	
	if (man or sem){
		
		prep = global.armas_prep[i]
		
		if (poc) seta_part("cria_tiro",x,y,[part_cock,part_cock],global.tiros_part[i],c_white,dirp,[tiiv,tiiv],[2,2.5],[2,2.5],45,[tiiv/2,tiiv/2],0,0)
		
		repeat(part_cock){
			
			toca_som([snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14],1,10,50,,0,.1,1)
			
		}
		
		if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>1 and asset_get_type(global.armas_sons[i][1]) == asset_sound){
			
			sons[1] = toca_som(global.armas_sons[i][1],.25,30,200,,0,.05,0)
			if (sem) refff = 1
			
		}
		
		if (cock=2){ 
			
			var qtd = global.armas_part[i][2]+global.armas_part[i][0]
			
			if (tiro>0){
			
				if (poc) tiro-=qtd
				if (poc) seta_part("cria_tiro",x,y,[qtd,qtd],global.tiros_part[i],c_white,dirp,[tiiv,tiiv],[2,2.5],[2,2.5],45,[tiiv/2,tiiv/2],0,0)
			
				repeat(qtd){
			
					toca_som([snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14],1,10,50,,0,.1,1)
			
				}
			}
		}
		
		cock = 0
		
	}
	
	if (refff == 1 and (array_length(sons)<=1 or !audio_is_playing(sons[1])) and i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>5 and asset_get_type(global.armas_sons[i][5]) == asset_sound){ 
	
		sons[5] = toca_som(global.armas_sons[i][5],.2,30,200,,0,.1,0)
		refff = 0
	
	}
}

recarrega = function(){
	
	var ct = instance_exists(pai) and variable_instance_exists(pai,"controle") ? pai.controle : 0
	var cn = ct and gamepad_is_connected(0)
	var rec_tec = !tiro and !tiro_timer
	var prs_tec = 0
	
	var rec = rec_tec and !cock
	var atr = prs_tec
	var dirp = image_xscale!=1 ? direction+90 : direction-90
	var munp = global.armas_part[i][1] = "mun" ? abs(tiro-municao) : global.armas_part[i][1]
	var munc = rext == 1 ? 0 : 1
	var tiiv = 3.5
	
	if (rec){
		
		if (!recarregando){ 
			
			#region Cria som
			
			if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>2 and asset_get_type(global.armas_sons[i][2]) == asset_sound){
			
				if (!modo)sons[2] = toca_som(global.armas_sons[i][2],1,30,200,,0,.1,0)
				if ( modo)sons[2] = toca_som(snd_lanca_recc			,1,30,200,,0,.1,0)
			
			}
			
			#endregion
			
			#region Pente e outro
			
			#region Variaveis
			
			var cabe = i<array_length(global.armas_mods[0])
			var temmod = cabe and array_length(global.armas_modp[i])>4 and global.armas_sprm[i][0] != -100
			var temspr = temmod and array_length(global.armas_modp[i][4])>0
			var mod_i = mods[4]
			var spr_i = modi[4]
			var cla_i = clamp(mod_i,0,array_length(global.armas_sprm[i])-1)
			var espr = asset_get_type(global.armas_sprm[i][cla_i]) == asset_sprite and modo = 0 and pode_pente and tem_pente
			
			#endregion
			
			#region Cria pente e outros
			
			#region Pente
			
			if (espr){
				
				seta_part("cria_pente",x,y,[1,1],global.armas_sprm[i][cla_i],c_white,dirp,[5,5],[image_xscale,image_xscale],[1,1],15,[3,3],spr_i,image_angle)
				
				cabe = i<array_length(global.armas_sprf)
				
				mod_i = 0
				
				cla_i = clamp(mod_i,0,array_length(global.armas_sprf[i])-1)
				
				espr = asset_get_type(global.armas_sprf[i][cla_i]) == asset_sprite and tem_pente
				
				if (espr and i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>6 and asset_get_type(global.armas_sons[i][6]) == asset_sound){ 
	
					sons[6] = toca_som(global.armas_sons[i][6],1,30,200,,0,.1,0)
					refff = 0
				
				}
				
				pode_pente = 0
				tem_pente = 0
				
			}
			
			#endregion
			
			#region Tira uma bala
			
			if (tiro = municao and global.armas_rext[i]=1){
				
				tiro--
				seta_part("cria_tiro",x,y,[1,1],global.tiros_part[i],c_white,dirt,[tiro_v,tiro_v],[2,2.5],[2,2.5],45,[tiro_v/2,tiro_v/2],0,0)
				
				repeat(1){
					
					toca_som([snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14],1,10,50,,0,.1,1)
					
				}
			}
			
			#endregion
			
			#endregion
			
			#endregion
			
		}
		
		recarregando=1
		
	}
	
	if (recarregando){
		
		recarregando_timer--
		
		if (recarregando_timer<=0){
			
			if (!modo) tiro += rext// - munc
			if ( modo) tirg += mung// - munc
			tiro = clamp(tiro,0,municao)
			tiro_timer = tiro_tempo
			recarregando_timer = recarregando_tempo
			
			var munt = rext == 1 ? tiro >= municao : tiro >= municao-1
			
			if (munt){ 
				
				cock = 1
				reff = cock
				recarregando=0
				
				pode_pente = 1
				pode_tirof = 1
				tem_pente = 1
				
			}
			
			if (modo) recarregando=0
			
			seta_part("cria_tiro",x,y,[munp,munp],global.tiros_part[i],c_white,dirp,[tiiv,tiiv],[2,2.5],[2,2.5],45,[tiiv/2,tiiv/2],0,0)
			
			repeat(munp){
				
				toca_som([snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14],1,10,50,,0,.1,1)
				
			}
			
			if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>3 and asset_get_type(global.armas_sons[i][3]) == asset_sound){ 
				
				if (!modo) sons[3] = toca_som(global.armas_sons[i][3]	,.5,30,200,,0,.1,0)
				if ( modo){sons[3] = toca_som(snd_lanca_recf			,.5,30,200,,0,.1,0) cock = 0}
			
			}
		}
	}
	
	if (atr and recarregando){
		
		recarregando=0
		recarregando_timer = recarregando_tempo-1
		tiro_timer = tiro_tempo
		rajando_timer = rajadas_tempo
		cock = 1
		
	}
}

reseta_coisas = function(){
	
	rajando_timer--
	prec = lerp(prec,global.armas_precin[i],.05)
	
	municao				= global.armas_munc[i]
	tiro_tempo			= global.armas_cadn[i] 
	prec_menos			= global.armas_prec[i] * 1.4
	coix				= global.armas_coix[i]
	coiy				= global.armas_coiy[i] 
	dano				= global.armas_dano[i]
	recarregando_tempo	= global.armas_reca[i] * 1.4		
	cliq				= global.armas_cliq[i]
	rajadas_tempo		= global.armas_raca[i] * 1.4
	rajadas_total		= global.armas_raja[i]
	shak				= global.armas_shak[i] / 4
	bala				= global.armas_bala[i] 
	rext				= global.armas_rext[i]
	peso				= global.armas_peso[i] * 1
	baru				= global.armas_baru[i]
				
	part_reca = global.armas_part[i][1]
	part_tiro = global.armas_part[i][0]
	part_cock = global.armas_part[i][2]

	pext = []								   
	mira_vel = .1							   
	volu = 1								  
	
	equip = pai.arma_usar
	usar = pai.arma_atira
	
	if (!rajadas and (array_length(sons)<=3 or !audio_is_playing(sons[3])) and (array_length(sons)<=1 or !audio_is_playing(sons[1])) and usar) tiro_timer--
	
}

colocando_os_acessorios = function(){
	
	if (i<array_length(global.armas_mods[0])){
	
		for (var m=0;m<array_length(global.armas_mode[i]);m++){
		
			var mod_i = mods[m]
			var ptmd = array_length(pext)
			
			if (array_length(global.armas_mode[i][m])>0 and is_array(global.armas_mode[i][m][mod_i]) and array_length(global.armas_mode[i][m][mod_i])>8){
				
				var ptm1 = array_length(global.armas_mode[i][m][mod_i])>18 ? global.armas_mode[i][m][mod_i][18] : 0
				var ptm2 = array_length(global.armas_mode[i][m][mod_i])>19 ? global.armas_mode[i][m][mod_i][19] : 0
				var ptm3 = global.armas_modx[i][m][0]
				var ptm4 = global.armas_modx[i][m][1]
			
				cliq				+=global.armas_mode[i][m][mod_i][4]
				municao				+=global.armas_mode[i][m][mod_i][5]
				rext				+=global.armas_mode[i][m][mod_i][5]
				dano				+=global.armas_mode[i][m][mod_i][6]
				prec_menos			+=global.armas_mode[i][m][mod_i][7]
				recarregando_tempo	+=global.armas_mode[i][m][mod_i][8]
				coix				+=global.armas_mode[i][m][mod_i][9]
				coiy				+=global.armas_mode[i][m][mod_i][10]
				shak				+=global.armas_mode[i][m][mod_i][11]
				rajadas_total		+=global.armas_mode[i][m][mod_i][12]
				rajadas_tempo		+=global.armas_mode[i][m][mod_i][13]
				tiro_tempo			+=global.armas_mode[i][m][mod_i][14]
				mira_vel			-=global.armas_mode[i][m][mod_i][15]
				peso				+=global.armas_mode[i][m][mod_i][16]
				volu				+=global.armas_mode[i][m][mod_i][17]
				baru				+=global.armas_mode[i][m][mod_i][22]
				if (array_length(global.armas_mode[i][m][mod_i])<24) show_message([i,m,mod_i]) 
				part_reca			+=global.armas_mode[i][m][mod_i][23]
				pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4]
				
			}	
		}
	}
	pai.vel-=peso
}

#endregion

estado_parado = function(){
	
	recarrega()
	preparando()
	atira()
	
	estado = estado_parado
	estado_txt = "estado_parado"
	image_index=0
	
	muda_estados()
	
}

estado_atirando = function(){
	
	recarrega()
	preparando()
	atira()
	
	estado = estado_atirando
	estado_txt = "estado_atirando"
	image_index=1
	
	muda_estados()
	
}

estado_recarregando = function(){
	
	recarrega()
	preparando()
	
	estado = estado_recarregando
	estado_txt = "estado_recarregando"
	image_index=0
	
	muda_estados()
	
}

estado_mirando = function(){
	
	recarrega()
	preparando()
	atira()
	
	estado = estado_mirando
	estado_txt = "estado_mirando"
	image_index=0
	
	muda_estados()
	
}

#endregion

estado = estado_parado