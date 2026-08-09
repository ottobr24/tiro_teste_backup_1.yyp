#region Variaveis

pai = id

i=0

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

fogo_x = 0
fogo_y = 0
fogo_tempo = 0
fogo_ii = 0
fogo_dir = 0
fogo_ix = 0

coix = 0
coiy = 0

cock = 0
cock_timer = 0
cock_tempo = 15

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

modo = 0
mung = 1
tirg = mung

pext = []
equip = 1

tem_pente = 1

mods = []
modi = []

qtd = 0

mx = device_mouse_x_to_gui(0)
my = device_mouse_y_to_gui(0)

part_reca = 0
part_tiro = 0
part_cock = 0

som_tiro = 0
som_cock = 0
som_recc = 0
som_recf = 0

canox = 0
grd = 0

visao_inicio()

#endregion

#region Metodos

#region Funções

muda_estados = function(pa=1,at=1,re=1,mi=1){
	
	var ct = instance_exists(pai) and variable_instance_exists(pai,"controle") ? pai.controle : 0
	var cn = ct and gamepad_is_connected(0)
	
	var atr_tec = 0
	var prs_tec = cn ? gamepad_button_check_pressed(0,gp_shoulderrb) : mouse_check_button_pressed(mb_left)
	
	if (!ct) atr_tec = !cliq ? mouse_check_button(mb_left)				: prs_tec
	if ( ct) atr_tec = !cliq ? gamepad_button_check(0,gp_shoulderrb)	: prs_tec
	
	var est = estado
	var atr = tiro_timer>=0
	var rec = recarregando
	var mir = atr_tec
	
	var ests = [!atr and pa		,mir and mi		,atr and at		,rec and re			]
	var estz = [estado_parado	,estado_mirando	,estado_atirando,estado_recarregando]
	
	for (var e=0;e<array_length(estz);e++){
		
		if (ests[e]){
			
			estado = estz[e]	
			
		}
	}
}

mirando = function(){
	
	var gw = display_get_gui_width()
	var gh = display_get_gui_height()
	
	var ct = instance_exists(pai) and variable_instance_exists(pai,"controle") ? pai.controle : 0
	var cn = ct and gamepad_is_connected(0)
	var rh = cn ? gamepad_axis_value(0,gp_axisrh)  : 0
	var rv = cn ? gamepad_axis_value(0,gp_axisrv)  : 0
	
	var vel = 15
	
	mira = !cn ? mouse_check_button(mb_right) : gamepad_button_check(0,gp_shoulderlb)
	mira_vel = clamp(mira_vel,0.01,1)
	
	if (mira){
		
		pai.vel -=.5
		mira_alp = lerp(mira_alp,1,mira_vel)
		
		if (instance_number(obj_player)<2) obj_camera.roo = 2
		
		if ( cn){
			
			var cx = obj_camera.x
			var cy = obj_camera.y
			
			var cw = obj_camera.cmw * obj_camera.escala
			var ch = obj_camera.cmh * obj_camera.escala
			
			var _x = (x - cx) * (gw / cw)
			var _y = (y - cy) * (gh / ch)
			
			mx += rh*vel
			my += rv*vel
			
			mx = clamp(mx,50,display_get_gui_width ()-50)
			my = clamp(my,50,display_get_gui_height()-50)
	
			direction = point_direction(_x,_y,mx,my)
			pai.direction = direction
			
		}
		
		if (instance_number(obj_player)<2) obj_camera.pose[0] = lerp(obj_camera.pose[0],lengthdir_x(100,direction),.1)
		if (instance_number(obj_player)<2) obj_camera.pose[1] = lerp(obj_camera.pose[1],lengthdir_y(100,direction),.1)
		
	}else{
		
		obj_camera.roo = 0
		
		mira_alp = lerp(mira_alp,0,.1)
		obj_camera.pose[0] = lerp(obj_camera.pose[0],lengthdir_x(0,direction),.1)
		obj_camera.pose[1] = lerp(obj_camera.pose[1],lengthdir_y(0,direction),.1)
		
		if ( cn){
			
			var cx = obj_camera.x
			var cy = obj_camera.y
			
			var cw = obj_camera.cmw * obj_camera.escala
			var ch = obj_camera.cmh * obj_camera.escala
			
			var _x = (x - cx) * (gw / cw)
			var _y = (y - cy) * (gh / ch)
			
			mx = _x + lengthdir_x(200,direction)
			my = _y + lengthdir_y(200,direction)
			
		}
	}
	
	if (!cn){
		
		mx = device_mouse_x_to_gui(0)
		my = device_mouse_y_to_gui(0)
		
	}
	
	mx = clamp(mx,50,display_get_gui_width ()-50)
	my = clamp(my,50,display_get_gui_height()-50)
	
}

desenha_sprite = function(){
	
	sprite_index = global.armas_sprt[i]
	
	if (global.debug){
	
		draw_set_colour(c_black)
	
		//draw_text(x,y,estado_txt)
		//draw_text(x,y-20,recarregando)
		//draw_text(x,y-40,keyboard_check(ord("R")))
	
		draw_set_colour(-1)
	
	}
}

desenha_mao = function(){
	
}

desenha_modificacao = function(){
	
	#region Variaveis
	
	var ct = instance_exists(pai) ? pai.controle : 0
	var cn = ct and gamepad_is_connected(0)
	var pente_ext = 0
	var las_tec = !cn ? keyboard_check_pressed(ord("Z")) : gamepad_button_check_pressed(0,gp_stickr)
	var mira_co = [c_red,c_green]
	
	#endregion
	
	#region Tem laser
	
	if (las_tec) laser=!laser

	#endregion
	
	#region Modificação
	
	if (i<array_length(global.armas_mods[0])){

		for (var m=array_length(mods)-1;m>=0;m--){
		
			if (array_length(global.armas_modn[i][m])>0 and is_array(global.armas_mode[i][m][mods[m]])){
	
				if (global.armas_mode[i][m][mods[m]][3] = 11) grd			= m+1
				if (global.armas_mode[i][m][mods[m]][3] = 12) pente_ext	= m+1
	
			}
			
			var cabep = array_length(global.armas_modp[i][m])>0
			var pente = cabep and (m != 4 or (!recarregando and !cock) or modo = 1)
			var sprreal = pente and cabep and asset_get_type(global.armas_modp[i][m][mods[m]]) = asset_sprite
			
			if (sprreal){
			
				var um_laser = is_array(global.armas_mode[i][m][mods[m]]) and global.armas_mode[i][m][mods[m]][3] = 9
				
				var mod_px = 0 
				var mod_py = 0
				
				#region Pext
				
				for (var md=0;md<array_length(pext);md++){
				
					if (array_length(pext[md])>4 and array_length(pext)>m and array_length(pext[m])>4 and pext[m][4] = 0)	mod_px += global.armas_modx[i][m][0]>pext[md][2] ? pext[md][0] : 0
					if (array_length(pext[md])>4 and array_length(pext)>m and array_length(pext[m])>4 and pext[m][4] = 0)	mod_py += global.armas_modx[i][m][1]>pext[md][3] ? pext[md][1] : 0
				
				}
			
				#endregion
				
				#region Laser
				
				if (laser and um_laser){
				
					var sprh = global.armas_modx[i][m][0] * image_xscale 
	                var margy = global.armas_modx[i][m][1]>2 ? global.armas_modx[i][m][1] * image_xscale  : -global.armas_modx[i][m][1] * image_xscale
                
	                var ang = image_angle

					var mod_xx = global.armas_mode[i][m][mods[m]][0]
					var mod_xy = global.armas_mode[i][m][mods[m]][1]
			
	                if image_xscale = -1{
					
	                    ang += 180
						mod_xx+=3
						mod_xy+=1
					
	                }
                
					var mod_an = ang-90
					
					var mod_xm = lengthdir_x(mod_xy*image_xscale,mod_an		) + lengthdir_x(mod_xx*image_xscale,image_angle)
					var mod_ym = lengthdir_y(mod_xy*image_xscale,mod_an		) + lengthdir_y(mod_xx*image_xscale,image_angle)
					
					var mod_mx2 = lengthdir_x(mod_px*image_xscale,image_angle) + lengthdir_x(mod_py*image_xscale,mod_an)
					var mod_my2	= lengthdir_y(mod_px*image_xscale,image_angle) + lengthdir_y(mod_py*image_xscale,mod_an)
			
					var _x = x + mod_xm + mod_mx2 
					var _y = y + mod_ym + mod_my2
					
					var cam = obj_camera
					var tmd = cam.cmw / cam.escala
					
					draw_set_alpha(1)
					
	                visao(tmd,"",_x,_y,ang,undefined,adiciona_na_array(global.colisao_normal,[obj_miniporta,obj_inimigo,obj_zumbi_pai]),1,0,0,mira_co[qtd])
				
					draw_set_alpha(image_alpha)
					
				}
				
				#endregion
				
				var mod_spr = global.armas_modp[i][m][mods[m]]
			
				var mod_xx = global.armas_mode[i][m][mods[m]][0]
				var mod_xy = global.armas_mode[i][m][mods[m]][1]
			
				var ang = image_angle
			
	            if image_xscale = -1{
				
	                ang += 180
					//sprh+=10
				
	            }
                
				var mod_an = ang-90
				
				var mod_xm = lengthdir_x(mod_xy*image_xscale,mod_an		)
				var mod_ym = lengthdir_y(mod_xy*image_xscale,mod_an		)
				var mod_xo = lengthdir_x(mod_xx*image_xscale,image_angle) + mod_xm
				var mod_yo = lengthdir_y(mod_xx*image_xscale,image_angle) + mod_ym
			
				var mod_ii = modi[m]
				
				if (grd-1		= m) mod_ii	= !tirg
				if (pente_ext-1 = m) mod_ii	= !(cabep and ((!recarregando and !cock) or modo = 1))
				
				var mod_mx2 = lengthdir_x(mod_px*image_xscale,image_angle) + lengthdir_x(mod_py*image_xscale,mod_an)
				var mod_my2	= lengthdir_y(mod_px*image_xscale,image_angle) + lengthdir_y(mod_py*image_xscale,mod_an)
			
				var mod_x = x + mod_xo + mod_mx2 
				var mod_y = y + mod_yo + mod_my2
		
				draw_sprite_ext(mod_spr,mod_ii,mod_x,mod_y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	
			}
		}
	}
	#endregion
}

desenha_fogo = function(){
		
	fogo_tempo -= !global.pause

	if (fogo_tempo>0){
		
		var tmdx = global.tiros_velo[i]/10
		var tmdy = global.tiros_velo[i]/10
	
		var sprh = (sprite_get_width(global.armas_sprt[i]) + (12*tmdx) + canox) * image_xscale
		var dirp2 = image_xscale	!=1 ? direction+90 : direction-90
		
		var marg = 2 * tmdx
	
		var _x = x + lengthdir_x(sprh,image_angle) + lengthdir_x(marg,dirp2)
		var _y = y + lengthdir_y(sprh,image_angle) + lengthdir_y(marg,dirp2)
			
		draw_sprite_ext(spr_fogo,fogo_ii,_x,_y,fogo_ix*image_xscale,fogo_ix,image_angle,image_blend,image_alpha)
	
	}
}

atira = function(){
	
	#region Variaveis
	
	var ct = instance_exists(pai) ? pai.controle :0
	var cn = ct
	
	var grd_tec = (keyboard_check_pressed(ord("G")) and !ct) or (cn and gamepad_button_check_pressed(0,gp_padl))
	
	var atr_tec = 0
	var prs_tec = cn ? gamepad_button_check_pressed(0,gp_shoulderrb) : mouse_check_button_pressed(mb_left)
	
	if (!ct) atr_tec = !cliq ? mouse_check_button(mb_left)				: prs_tec
	if ( ct) atr_tec = !cliq ? gamepad_button_check(0,gp_shoulderrb)	: prs_tec
	
	var tec = atr_tec
	var tec2 = 0
	var atn = (tec or tec2) and !tiro_timer and !recarregando and !rajadas and (array_length(sons)<=1 or !audio_is_playing(sons[1]))
	var raj = rajadas and !rajando_timer and !recarregando and (array_length(sons)<=1 or !audio_is_playing(sons[1]))
	
	#endregion
	
	#region Mudando de modo de tiro, vendo se tem um lança granadas equipado e limitando a quantidade maxima de tiro
	
	if (grd_tec and grd and !cock and !recarregando){
		
		modo=!modo
	
	}
	
	tiro = clamp(tiro,0,municao)
	tirg = clamp(tirg,0,mung)
	
	#endregion
	
	#region Atirando
	
	if (!modo){ //atira normal
	
		if (atn or raj){
		
			if (tiro>0){
				
				randomise()      
				
				var vol = 0
				
				var mirc = mira ? 2		: 1
				var mirp = mira ? 1.25	: 1
				var mirs = mira ? 1.5	: 1
				
				var sil = i<array_length(global.armas_mods[0]) and array_length(mods)>2 and array_length(global.armas_modn[i][2])>0 and is_array(global.armas_mode[i][2][mods[2]]) and global.armas_mode[i][2][mods[2]][3]=4
				var fre = i<array_length(global.armas_mods[0]) and array_length(mods)>2 and array_length(global.armas_modn[i][2])>0 and is_array(global.armas_mode[i][2][mods[2]]) and global.armas_mode[i][2][mods[2]][3]=3
				
				var dirp = image_xscale=1 ? direction+90 : direction-90
				var dirp2 = image_xscale!=1 ? direction+90 : direction-90
				
				var margx = 2
				var margy = lengthdir_y(3,dirp2)
				
				var sprh = (sprite_width + (canox * image_xscale) - margx) * image_xscale 
				
				var tiiv = global.tiros_velo[i]*1
				var tx = x + lengthdir_x(sprh/2,direction)
				var ty = y + margy + lengthdir_y(sprh/2,direction)
				
				var _x = x + lengthdir_x(sprh,direction) + lengthdir_x(3,dirp2)
				var _y = y + lengthdir_y(sprh,direction) + lengthdir_y(3,dirp2)
			
				if (!rajadas and tec) rajadas = rajadas_total
				
				#region Tiro de vdd
				
				repeat(bala){
					
					var dir = direction - random_range(prec,-prec)
					var dir_dif = random_range(-(coix+coiy)/1.5,(coix+coiy)/1.5) / mirc
					
					var t = instance_create_layer(_x,_y,"Pessoas",obj_tiro)
					t.i = i            
					
					t.direction = dir                           
					t.image_angle = dir  
					t.sprite_index = global.tiros_sprt[i]

					t.vel = global.tiros_velo[i]
					t.dano = dano                
					t.pai = pai           
					
					pai.coid += dir_dif
					
					prec+=prec_menos / mirp        
				
					pai.cx -= coix *1.5          
					pai.cy -= coiy *1.5          
			
					fogo_dir	= dir
				
					global.shake	+=	shak*global.shakes[global.configs[1][0]] / 2 / mirs  
					
					obj_controlador.vib_d += shak / mirs  
					
				}                                            
				
				var bal = bala > 1 ? bala / 1.25 : 1
				
				global.shakex += lengthdir_x(shak,direction) * bal * global.shakes[global.configs[1][0]] / mirs  
				global.shakey += lengthdir_y(shak,direction) * bal * global.shakes[global.configs[1][0]] / mirs  
					
				fogo_tempo	= random_range(6,15)
				fogo_ii		= irandom_range(0,sprite_get_number(spr_fogo))
				fogo_ix		= global.tiros_velo[i]/10
				
				if (sil) fogo_tempo = 0
				
				if (fre){ 
					
					fogo_ix *= 1.25
					fogo_tempo /=2
				
				}
				
				vol = sil ? 0.25 : 1
					
				#endregion
				
				if (part_tiro){ 
					
					var balas = [snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14]
					var ind = irandom_range(0,array_length(sons)-1)
					
					seta_part("cria_tiro",tx,ty,[part_tiro,part_tiro],global.tiros_part[i],c_white,dirp,[tiiv,tiiv],[2,2.5],[2,2.5],45,[tiiv/2,tiiv/2],0,0)
					
					repeat(part_tiro){
						
						toca_som(balas[ind],1,16,200,,0,.1,0)
						
					}
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
						
						pode_tirof = 0
						tem_pente = 0
						
					}	
			
					if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>6 and asset_get_type(global.armas_sons[i][6]) == asset_sound){ 
	
						sons[6] = toca_som(global.armas_sons[i][6],1,50,300,,0,.1,0)
						refff = 0
					
					}
				}
				
				if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>0 and asset_get_type(global.armas_sons[i][0]) == asset_sound){ 
					
					sons[0] = toca_som(som_tiro,volu*vol,500,1000,,0,.20,0)
					fazendo_barulho(x,y,baru,pai)
				
				}
				
			}else{
			
				if (prs_tec){
				
					toca_som(snd_falha,1,25,150,,0,.1,0)
				
				}
			
				rajadas = 0
			
			}
		}
	}else{ //lança granadas
		
		if (prs_tec and tirg>0){
			
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
			
			toca_som(snd_lanca_tiro,1,100,300,,0,.10,0)
		
			tirg--
			
			fazendo_barulho(x,y,200,pai)
			
		}
	}
	
	#endregion
	
}

preparando = function(){
	
	if (!cock) cock_timer=0
	if ( cock) cock_timer++
	
	var ct = instance_exists(pai) and variable_instance_exists(pai,"controle") ? pai.controle : 0
	var cn = ct
	
	var coc_tec = !cn ? keyboard_check_pressed(ord("H")) : gamepad_button_check_pressed(0,gp_padr)
	var coc = coc_tec and (array_length(sons)<=1 or !audio_is_playing(sons[1]))
	
	if (coc) cock = 2
	
	//if (cock_timer < cock_tempo) exit;
	
	if (cock and reff and (array_length(sons)<=3 or !audio_is_playing(sons[3])) and i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>4 and asset_get_type(global.armas_sons[i][4]) == asset_sound){ 
		
		sons[4] = toca_som(global.armas_sons[i][4],1,75,300,,0,.1,0)
		reff = 0
		
	}
	
	var man = global.armas_prep[i]>0 and prep<=0 and tiro_timer=tiro_tempo div 2
	var sem = cock and (array_length(sons)<=5 or !audio_is_playing(sons[5])) and (array_length(sons)<=3 or !audio_is_playing(sons[3])) and (array_length(sons)<=4 or !audio_is_playing(sons[4])) and (array_length(sons)<=1 or !audio_is_playing(sons[1]))
	var dirp = image_xscale=1 ? direction+90 : direction-90
	var tiiv = global.tiros_velo[i]*.75
	
	var tmd = 1
	var pos = 1
	var poc = 1
	var ejets = 0
	
	if (man or sem){
		
		prep = global.armas_prep[i]
		
		if ((cock = 1 or man) and part_cock){ 
			
			randomise()
			
			var balas = [snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14]
			var ind = irandom_range(0,array_length(sons)-1)
					
			var sprh = sprite_width*image_xscale
			var dirp2 = image_xscale!=1 ? direction+90 : direction-90
			var margy = lengthdir_y(3,dirp2)
				
			var tx = x + lengthdir_x(sprh/2,direction)
			var ty = y + margy + lengthdir_y(sprh/2,direction)
					
			seta_part("cria_tiro",tx,ty,[part_cock,part_cock],global.tiros_part[i],c_white,dirp,[tiiv,tiiv],[2,2.5],[2,2.5],45,[tiiv/2,tiiv/2],0,0)
			
			repeat(part_cock){
				
				toca_som(balas[ind],1,10,200,,0,.1,1)
				
			}
					
			ejets++
			
		}
		
		if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>1 and asset_get_type(som_cock) == asset_sound){
			
			sons[1] = toca_som(som_cock,1,75,250,,0,.05,0)
			if (sem) refff = 1
			
			if (global.armas_rext[i]-global.armas_munc[i] = -1 and cock = 1){ 
				
				tiro+=rext
				
				obj_controlador.vib_e += 1.5
				obj_controlador.vib_d += 1.5
				
				global.shake += 2 * global.shakes[global.configs[1][0]]
				
			}
		}
		
		if (cock=2){ 
			
			var qtd = part_cock+part_tiro
			
			if (tiro>0){
			
				if (poc and !ejets){ 
					
					randomise()
					
					var balas = [snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14]
					var ind = irandom_range(0,array_length(sons)-1)
					
					var sprh = sprite_width*image_xscale
					var dirp2 = image_xscale!=1 ? direction+90 : direction-90
					var margy = lengthdir_y(3,dirp2)
				
					var tx = x + lengthdir_x(sprh/2,direction)
					var ty = y + margy + lengthdir_y(sprh/2,direction)
					
					tiro-=qtd
					
					if (qtd){
						
						seta_part("cria_tiro",tx,ty,[qtd,qtd],global.tiros_part[i],c_white,dirp,[tiiv,tiiv],[2,2.5],[2,2.5],45,[tiiv/2,tiiv/2],0,0)
					
						repeat(qtd){
						
							toca_som(balas[ind],1,10,200,,0,.1,1)
						
						}
					}
					
					if (!tiro){ 
					
						var cabe = i<array_length(global.armas_sprf)
					
						var mod_i = mods[4] < 0 ? 0 : mods[4]
						var spr_i = modi[4]
					
						var cla_i = clamp(mod_i,0,array_length(global.armas_sprf[i])-1)
					
						var espr = asset_get_type(global.armas_sprf[i][cla_i]) == asset_sprite and pode_tirof and tem_pente
			
						if (espr){
						
							var _x = x + lengthdir_x(sprite_width/3,direction)
							var _y = y + lengthdir_y(sprite_width/3,direction)
						
							seta_part("cria_tirof",_x,_y,[1,1],global.armas_sprf[i][cla_i],c_white,dirp,[6,6],[image_xscale,image_xscale],[1,1],20,[3,3],spr_i,0)
						
							pode_tirof = 0
							tem_pente = 0
						
						}	
			
						if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>6 and asset_get_type(global.armas_sons[i][6]) == asset_sound){ 
	
							sons[6] = toca_som(global.armas_sons[i][6],1,75,250,,0,.1,0)
							refff = 0
					
						}
					}
				
				}
			}
		}
		
		cock = 0
			
	}
	
	if (refff == 1 and (array_length(sons)<=1 or !audio_is_playing(sons[1])) and i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>5 and asset_get_type(global.armas_sons[i][5]) == asset_sound){ 
	
		sons[5] = toca_som(global.armas_sons[i][5],1,75,250,,0,.1,0)
		refff = 0
	
	}
}

recarrega = function(){
	
	var ct = instance_exists(pai) and variable_instance_exists(pai,"controle") ? pai.controle : 0
	var cn = ct
	
	var rec_tec = !cn ? keyboard_check(ord("R")) : gamepad_button_check(0,gp_face3)
	var prs_tec = cn ? gamepad_button_check_pressed(0,gp_shoulderrb) : mouse_check_button_pressed(mb_left)
	
	var rec = (rec_tec and !cock and tiro<municao) or (rec_tec and modo = 1)
	var atr = prs_tec and global.armas_rext[i] = 1
	
	var dirt = image_xscale=1 ? direction+180 : direction-180
	var dirp = image_xscale!=1 ? direction+90 : direction-90
	var dirp2 = image_xscale =1 ? direction+90 : direction-90
	
	var munp = part_reca = "mun" ? abs(tiro-municao) : part_reca
	var munc = rext == 1 ? 0 : 1
	
	var tiro_v = 3.5
	
	#region Começa recarregar
	
	if (rec){
		
		#region se acabou de começar de recarregar
		
		if (rec_tec and !recarregando){ 
			
			obj_controlador.vib_e += .5
			obj_controlador.vib_d += .5
		
			global.shake += 1.25 * global.shakes[global.configs[1][0]]
				
			if (municao>0 and global.armas_rext[i]>1 and !modo and municao-rext = 1 and tiro>0)  tiro = 1 //reseta municao, so pra mostrar pro player que a arma ta sendo recarregada
			
			if (municao = rext){ 
				
				tiro = 0 //reseta municao, so pra mostrar pro player que a arma ta sendo recarregada
				
			}
			
			#region Cria som
			
			if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>2 and asset_get_type(som_recc) == asset_sound){
			
				if (!modo)sons[2] = toca_som(som_recc,1,75,250,,0,.1,0)
				if ( modo)sons[2] = toca_som(snd_lanca_recc,1,75,250,,0,.1,0)
			
			}
			
			#endregion
			
			#region Pente e outro
			
			#region Variaveis
			
			var cabe = i<array_length(global.armas_mods[0])
			var temmod = cabe and array_length(global.armas_modp[i])>4 and global.armas_sprm[i][0] != 0
			var temspr = temmod and array_length(global.armas_modp[i][4])>0
			var mod_i = mods[4]<0 ? 0 : mods[4]
			var spr_i = modi[4]
			
			var espr = temmod and asset_get_type(global.armas_sprm[i][mod_i]) == asset_sprite and modo = 0 and pode_pente and tem_pente
			
			#endregion
			
			#region Cria pente e outros
			
			#region Pente
			
			if (espr){
				
				seta_part("cria_pente",x,y,[1,1],global.armas_sprm[i][mod_i],c_white,dirp,[5,5],[image_xscale,image_xscale],[1,1],5,["hs",3],spr_i,image_angle)
				
				cabe = i<array_length(global.armas_sprf)
				
				mod_i = mods[4]<0 ? 0 : mods[4]
				espr = cabe and asset_get_type(global.armas_sprf[i][mod_i]) == asset_sprite and tem_pente
				
				if (i<array_length(global.armas_sons) and array_length(global.armas_sons[i])>6 and asset_get_type(global.armas_sons[i][6]) == asset_sound){ 
	
					sons[6] = toca_som(global.armas_sons[i][6],1,50,250,,0,.1,0)
					refff = 0
					
					tiro = 0
					
				}
				
				pode_pente = 0
				tem_pente = 0
				
			}
			
			#endregion
			
			#region Tira uma bala
			
			if (tiro = municao and global.armas_rext[i]=1){
				
				randomise()
				
				var balas = [snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14]
				var ind = irandom_range(0,array_length(sons)-1)
					
				tiro--
				seta_part("cria_tiro",x,y,[1,1],global.tiros_part[i],c_white,dirt,[tiro_v,tiro_v],[2,2.5],[2,2.5],45,[tiro_v/2,tiro_v/2],0,0)
				
				repeat(1){
					
					toca_som(balas[ind],1,10,200,,0,.1,1)
					
				}
			}
			
			#endregion
			
			#endregion
			
			#endregion
			
		}
		
		#endregion
		
		recarregando=1
		
	}
	
	#endregion
	
	if (recarregando){
		
		recarregando_timer--
		
		if (recarregando_timer<=0){
			
			var passa = global.armas_rext[i]-global.armas_munc[i] = -1 and global.armas_rext[i]>1 ? 1 : 0 //se ele usa um pente, clip ou qualquer outra coisa que nao seja um por um, ele passa
			var retx = tiro+rext > municao and global.armas_retr[i]>0 ? global.armas_retr[i] : 0
			
			if (!retx){
			
				if (!modo and !passa){ tiro += rext																}
				if ( modo			){ tirg += mung global.shake += 1.5 * global.shakes[global.configs[1][0]]	}
			
			}else{
				
				tiro += retx
				
			}
			
			tiro = clamp(tiro,0,municao)
			tiro_timer = tiro_tempo
			recarregando_timer = recarregando_tempo
			
			var munt = rext == 1 ? tiro >= municao : tiro >= municao-1
			
			if (!retx){
			
				if (munt or passa){ 
					
					cock = 1
					
					reff = cock
					recarregando=0
				
					pode_pente = 1
					pode_tirof = 1
					tem_pente = 1
				
				}
			}else{
				
				if (tiro >= municao){ 
				
					cock = 1
					reff = cock
					recarregando=0
				
					pode_pente = 1
					pode_tirof = 1
					tem_pente = 1
				
				}
			}
			
			if (modo) recarregando=0
			
			if (munp){
			
				randomise()
			
				var balas = [snd_bala_caindo_1,snd_bala_caindo_2,snd_bala_caindo_3,snd_bala_caindo_4,snd_bala_caindo_5,snd_bala_caindo_6,snd_bala_caindo_7,snd_bala_caindo_8,snd_bala_caindo_9,snd_bala_caindo_10,snd_bala_caindo_11,snd_bala_caindo_12,snd_bala_caindo_13,snd_bala_caindo_14]
				var ind = irandom_range(0,array_length(sons)-1)
					
				seta_part("cria_tiro",x,y,[munp,munp],global.tiros_part[i],c_white,dirt,[tiro_v,tiro_v],[2,2.5],[2,2.5],45,[tiro_v/2,tiro_v/2],0,0)
			
				repeat(munp){
				
					toca_som(balas[ind],1,10,200,,0,.1,1)
				
				}
			}
			
			//show_message(i<array_length(global.armas_sons))
			//show_message(array_length(sons)>3)
			//show_message(som_recf)
			//show_message(asset_get_type(som_recf) == asset_sound)
			if (i<array_length(global.armas_sons) and array_length(sons)>3 and asset_get_type(som_recf) == asset_sound){ 
				
				var mod_i = mods[4]
				var spd_lod = mod_i>=0 and is_array(global.armas_mode[i][4]) and array_length(global.armas_mode[i][4])>0 and array_length(global.armas_mode[i][4][mod_i]) > 8 and global.armas_mode[i][4][mod_i][3] = 26 
				
				if (!modo){
					
					if (!retx and !spd_lod	) sons[3] = toca_som(som_recf,1,75,250,,0,.1,0)
					if ( retx and !spd_lod	) sons[3] = toca_som(snd_win_recf			,1,75,250,,0,.1,0)
					if ( spd_lod			) sons[3] = toca_som(snd_revolvers_speed	,1,75,250,,0,.1,0)
				
				}else{
					
					sons[3] = toca_som(snd_lanca_recf,1,75,250,,0,.1,0) cock = 0
					
				}
				
				if ( modo and !spd_lod){}
			
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
	
	canox = 0
	
	for (var p=0;p<array_length(pext);p++){
		
		if (array_length(pext[p]) > 2){
			
			canox += pext[p][0]
			
		}
	}
		
	if (!rajadas and (array_length(sons)<=3 or !audio_is_playing(sons[3])) and (array_length(sons)<=1 or !audio_is_playing(sons[1]))) tiro_timer--
	rajando_timer--
	prec = lerp(prec,global.armas_precin[i],.1)
	
	municao = global.armas_munc[i]
	tiro_tempo = global.armas_cade[i]
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
	peso = global.armas_peso[i]
	baru = global.armas_baru[i]
	pext = []
	mira_vel = .1
	volu = 1
	
	part_reca = global.armas_part[i][1]
	part_tiro = global.armas_part[i][0]
	part_cock = global.armas_part[i][2]

	som_tiro = array_length(global.armas_sons[i])>0 ? global.armas_sons[i][0] : 0
	som_cock = array_length(global.armas_sons[i])>1 ? global.armas_sons[i][1] : 0
	som_recc = array_length(global.armas_sons[i])>2 ? global.armas_sons[i][2] : 0
	som_recf = array_length(global.armas_sons[i])>3 ? global.armas_sons[i][3] : 0

}

colocando_os_acessorios = function(){
	
	equip = pai.equipado
	if (!equip) exit;
	
	if (i<array_length(global.armas_mods[0])){
	
		for (var m=0;m<array_length(mods);m++){
		
			var mod_i = mods[m]
			var ptmd = array_length(pext)
			
			var cod1 = mod_i>-1 and array_length(global.armas_mode[i][m])>mod_i
			var cod2 = cod1 and is_array(global.armas_mode[i][m][mod_i])
			var cod3 = cod2 and array_length(global.armas_mode[i][m][mod_i])>8
			
			if (cod1 and cod2 and cod3){
				
				var ptm1 = array_length(global.armas_mode[i][m][mod_i])>18 ? global.armas_mode[i][m][mod_i][18] : 0
				var ptm2 = array_length(global.armas_mode[i][m][mod_i])>19 ? global.armas_mode[i][m][mod_i][19] : 0
				var ptm3 = global.armas_modx[i][m][0]
				var ptm4 = global.armas_modx[i][m][1]
				var ptm5 = array_length(global.armas_mode[i][m][mod_i])>21 ? global.armas_mode[i][m][mod_i][21] : 0
			
				var sfxs = global.armas_mode[i][m][mod_i][24]
					
				cliq				+=global.armas_mode[i][m][mod_i][4]
				
				if (global.armas_mode[i][m][mod_i][3] !=26 ){
					
					municao			+=global.armas_mode[i][m][mod_i][5]
				
				}
				
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
				part_reca			+=global.armas_mode[i][m][mod_i][23]
				
				if (array_length(sfxs)>0){ 
					
					if (array_length(sfxs)>0 and sfxs[0] != 0) som_tiro	=	global.armas_mode[i][m][mod_i][24][0]
					if (array_length(sfxs)>1 and sfxs[1] != 0) som_cock	=	global.armas_mode[i][m][mod_i][24][1]
					if (array_length(sfxs)>2 and sfxs[2] != 0) som_recc	=	global.armas_mode[i][m][mod_i][24][2]
					if (array_length(sfxs)>3 and sfxs[3] != 0) som_recf	=	global.armas_mode[i][m][mod_i][24][3]
				
				}
				
				pext[m]				= [ptm1,ptm2,ptm3,ptm4,ptm5]
				
			}	
		}
	}
	pai.vel-=peso
}

#endregion

estado_parado = function(){
	
	mirando()
	recarrega()
	preparando()
	atira()
	
	estado = estado_parado
	estado_txt = "estado_parado"
	image_index=0
	
	muda_estados()
	
}

estado_atirando = function(){
	
	mirando()
	recarrega()
	preparando()
	atira()
	
	estado = estado_atirando
	estado_txt = "estado_atirando"
	image_index=1
	
	muda_estados()
	
}

estado_recarregando = function(){
	
	mirando()
	recarrega()
	preparando()
	
	estado = estado_recarregando
	estado_txt = "estado_recarregando"
	image_index=0
	
	muda_estados()
	
}

estado_mirando = function(){
	
	mirando()
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
image_speed=0