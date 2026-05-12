randomise()

ima_org = image_angle
frc = 0
fra = 0
filhos = []
filhos_qtd = 3
mudando = 0
abre_dir = 0
trancado = irandom_range(0,1)
cade_alp = 0
tecla_abrir = ["F"		,gp_face2]
tecla_chuta = [vk_space	,gp_face2]
tecla_pressionada = [0,0]
player_prox = -4
chute_tempo = 30
chutou = 0
som = [0,0,0,0,0]

som[4] = toca_som(snd_porta_chiado,1,15,50,,1,.05)
audio_pause_sound(som[4])
			
abrindo_e_sendo_empurrada = function(){
	
	cade_alp = clamp(cade_alp,0,1)
	
	var alvos = [obj_player,obj_inimigo]
	var dist = [1000,100]
	var tec_a = keyboard_check_pressed(ord("F"))
	var chu_t = 30
	
	#region Empurrando a porta
	
	if (!trancado){
	
		with(obj_player){
			
			for (var f =0;f<array_length(other.filhos);f++){
			
				if (achando_na_array(colisao,other.filhos[f])>-1){
				
					colisao = retira_da_array(colisao,other.filhos[f])
					att = 1
				
				}
			}
		}
		
		for (var a =0;a<array_length(alvos);a++){
		
			if (instance_exists(alvos[a])){
		
				var h = alvos[a].hspd
				var v = alvos[a].vspd
			
				var qtd = 0
				var col = 0
		
				for (var f = 0;f<array_length(filhos);f++){
			
					if (instance_exists(filhos[f])){
				
						with(filhos[f]){
					
							if (place_meeting(x,y,alvos[a])) col = 1
					
						}
					}
				}
		
				if (place_meeting(x,y,alvos[a]) and col){
			
					var dira = point_direction(0,0,h,v)
					var dir = angle_difference(dira,image_angle)
			
					fra -= h*2
					fra -= v*2 //ddadwadlengthdir_y(v*2,dir)
					mudando = 0
			
				}
		
				qtd = 0
		
			}
		}
	}else{
		
		with(obj_player){
			
			for (var f =0;f<array_length(other.filhos);f++){
			
				if (achando_na_array(colisao,other.filhos[f])=-1){
				
					colisao = adiciona_na_array(colisao,other.filhos[f])
					
				}
			}
			
			mp_grid_add_instances(obj_controlador.mapa,other,0)
			
		}
	}
	
	#endregion
	
	if (instance_exists(filhos[0]) and point_distance(x,y,obj_player.x,obj_player.y)<150){
	
		for (var f = 0;f<filhos_qtd;f++){
		
			if (instance_exists(filhos[f])){
		
				var _x = filhos[f].x
				var _y = filhos[f].y
		
				if (global.portas_abrir = id and point_distance(_x,_y,obj_player.x,obj_player.y)<75){
		
					cade_alp += .05
		
				}
			
				if (point_distance(_x,_y,obj_player.x,obj_player.y)<dist[0]){
					
					player_prox = instance_nearest(_x,_y,obj_player)
					var ct = instance_exists(player_prox) and variable_instance_exists(player_prox,"controle") ? player_prox.controle : 0
					var cn = ct and gamepad_is_connected(0)
					var tec_ord = cn
					tec_a = !cn ? keyboard_check_released(ord(tecla_abrir[0])) and tecla_pressionada[0] < chute_tempo/2 : gamepad_button_check_released(0,tecla_abrir[1]) and tecla_pressionada[1] < chute_tempo/2
					
					if (tec_a and !chutou){
										    
						dist[0] = point_distance(_x,_y,obj_player.x,obj_player.y)
						dist[1] = f
					
					}
					
					if (tecla_pressionada[tec_ord] >= chu_t and !chutou and image_angle = clamp(image_angle,ima_org-20,ima_org+20)){
						
						var dir = ima_org = 90 ? sign(player_prox.x-x) : sign(player_prox.y-y)
						
						frc += 20 * dir
						trancado = 0
						chutou = 1
						tecla_pressionada[tec_ord] = 0
						
						fazendo_barulho(x,y,150,id)
						som[2] = toca_som(snd_porta_chuta,1,15,125,,,.05)
						
					}
				}
			}
		}
	}
	
	#region Efetivamente abrindo ela
	
	if (dist[0]<75 and tec_a and global.portas_abrir = id){
	
		if (!trancado){
	
			if (image_angle = clamp(image_angle,ima_org-20,ima_org+20)){
			
				som[0] = toca_som(snd_porta_abre,1,15,50,,,.05)
				fazendo_barulho(x,y,15,id)
				mudando = 1
				if (ima_org = 90) abre_dir = x>obj_player.x ? -1 : 1
				if (ima_org =  0) abre_dir = y>obj_player.y ? -1 : 1
			
			}else{
		
				som[3] = toca_som(snd_porta_trancado,1,15,50,,,.05)
				mudando = 2
				//show_message("2")
		
			}
		}else{
			
			fazendo_barulho(x,y,15,id)
			
		}
	}	
	
	if (mudando == 2){
		
		image_angle = lerp(image_angle,ima_org,.15) 
		
		if (image_angle = clamp(image_angle,ima_org-1.5,ima_org+1.5) and !audio_is_playing(som[1])){
			
			som[1] = toca_som(snd_porta_fecha,1,15,50,,,.05)
			fazendo_barulho(x,y,15,id)
			
		}
		
		if (image_angle = clamp(image_angle,ima_org-.1,ima_org+.1)){
			
			mudando = 0
			
		}
	}
	
	if (mudando == 1){ 
		
		image_angle = lerp(image_angle,ima_org+(90*abre_dir),.15)
		
		if (image_angle = clamp(image_angle,min(ima_org+(90.1*abre_dir),ima_org+(89.9*abre_dir)),max(ima_org+(90.1*abre_dir),ima_org+(89.9*abre_dir)))){ 
			
			mudando = 0
		
		}
	}
	
	#endregion
	
	image_angle+=frc
	image_angle = lerp(image_angle,image_angle+fra,0.1)
	fra = lerp(fra,0,0.1)
	
	if (image_angle != clamp(image_angle,ima_org-90,ima_org+90) and frc!=0){
		
		var s = -1
		
		frc *= s / 5 
		
	}
	
	frc = lerp(frc,0,0.1)
	image_angle = clamp(image_angle,ima_org-90,ima_org+90)
	
}
	
cria_filhos = function(){
	
	var i = 0
	var qtd = filhos_qtd
	
	repeat(qtd){
		
	    var tmdx = sprite_width
	    var tmdy = sprite_width
    
	    var margx = tmdx / qtd
	    var margy = tmdy / qtd
    
	    var _x = image_angle = 0 ? x + (margx * i) : x
	    var _y = image_angle = 0 ? y : y - (margx * i)
    
	    var bloc = instance_create_layer(_x,_y,"Level",obj_miniporta)
    	
		bloc.pai = id
	    bloc.image_angle = image_angle
    	
	    bloc.image_xscale = image_xscale / qtd 
	    bloc.image_yscale = 1//image_yscale / qtd 
    	
	    bloc.sprite_index = sprite_index
		
		filhos[i] = bloc
		
	    i++
    
	}
}

pressionando_tecla = function(){
	
	if (global.portas_abrir != id) exit;
	
	var ct = instance_exists(player_prox) and variable_instance_exists(player_prox,"controle") ? player_prox.controle : 0
	var cn = ct and gamepad_is_connected(0)
	var tec_a = !cn ? keyboard_check(ord(tecla_abrir[0])) : gamepad_button_check(0,tecla_abrir[1])
	
	if (!cn and tec_a and !chutou) tecla_pressionada[0] += tec_a
	if ( cn and tec_a and !chutou) tecla_pressionada[1] += tec_a
	
	if (!tec_a){ 
		
		tecla_pressionada[cn] = 0
		chutou = 0
		
	}
}

controla_filhos = function(){
	
	var qtde = 0
	
	for (var f=0;f<array_length(filhos);f++){
			
		var idd = filhos[f]
		
		if (instance_exists(idd)){
		
			idd.image_angle = image_angle
			idd.x = x + lengthdir_x(sprite_width/filhos_qtd*f,image_angle)
			idd.y = y + lengthdir_y(sprite_width/filhos_qtd*f,image_angle)
		
		}else{
			
			qtde++
			
		}
	}
	
	if (qtde = filhos_qtd) instance_destroy()
	
}

desenha_chute = function(){
	
	var obj = player_prox
	var ct = obj!= -4 and instance_exists(obj) and variable_instance_exists(obj,"controle") ? obj.controle : 0
	var cn = ct and gamepad_is_connected(0)

	var cx = x + lengthdir_x(sprite_width/2,image_angle) + lengthdir_x(sprite_height/2,image_angle)
	var cy = y + lengthdir_y(sprite_width/2,image_angle) + lengthdir_y(sprite_height/2,image_angle)
	
	var desenha_ord = 0
	var tamx = 16
	var tamy = 16
	var posx = cx
	var posy = cy
	var vd  = tecla_pressionada[cn]
	var vdm = chute_tempo
	
	var w =  desenha_ord ? tamx / vdm * vd : tamx
	var h = !desenha_ord ? tamy / vdm * vd : tamy
	
	h = clamp(h,0,tamy)
	
	draw_set_colour(c_white)
	
	if (vd > 0) draw_rectangle((posx-tamx/2),posy+(tamy/2)-h,(posx-tamx/2)+w,posy+tamy/2,0)
	
	draw_set_alpha(1)
	draw_set_colour(-1)
	
}

cria_filhos()