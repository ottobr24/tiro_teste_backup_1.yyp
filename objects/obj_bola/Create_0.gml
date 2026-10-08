hspd = 0
vspd = 0
player_prox = -4
vida = 1

colisao		= [] array_copy(colisao,0,adiciona_na_array(global.colisao_normal,[obj_colisao,obj_player]),0,array_length(global.colisao_normal))

cor		= global.parts_cores[objetos.bola]
velp	= global.parts_vel	[objetos.bola]
distc	= global.parts_distc[objetos.bola]
danos	= global.parts_danos[objetos.bola]

sendo_empurrado = function(){
	
	var objs = [obj_player,obj_inimigo,obj_zumbi_pai]
	
	if (place_meeting(x,y,objs)){
		
		var obj = instance_place(x,y,objs)
		
		hspd += obj.hspd// * 1.1
		vspd += obj.vspd// * 1.1
		
	}
}

sendo_chutado = function(){
	
	if (!instance_exists(obj_player)) exit;
	
	prx = instance_nearest(x,y,obj_player)
	
	var ct = variable_instance_exists(prx,"controle") ? prx.controle : 0
	var cn = ct
	var tec_c = usa_controle(controles.anda_f,1)//!cn ? keyboard_check_pressed(ord("F")) : gamepad_button_check_pressed(0,gp_face2)
	var dis = sprite_width + 2
	
	if (distance_to_object(prx) < dis and tec_c){
		
		var vel_e = abs(prx.hspd) + abs(prx.vspd) * 2
		var vel = 10 + vel_e
		var dir = prx.direction
		
		hspd += lengthdir_x(vel,dir)
		vspd += lengthdir_y(vel,dir)
		
		toca_som([snd_bola_chute1,snd_bola_chute2,snd_bola_chute3,snd_bola_chute4,snd_bola_chute5,snd_bola_chute6,snd_bola_chute7,snd_bola_chute8,snd_bola_chute9,snd_bola_chute10],1,50,500,,,.15,1)
		
	}
}

colidindo = function(){
	
	#region Variaveis
	
	var sw = sprite_width/2
	var sh = sprite_height/2
	
	#endregion
	
	#region Colidindo e movendo
	
	var o = instance_place(x+hspd,y,colisao)
	
	if (o){
		
		hspd =- hspd / 2
		
	}
	
	#endregion
	
	#region Movendox
	
	x+=hspd * !global.pause
	
	#endregion
	
	#region Colidindoy
	
	o = instance_place(x,y+vspd,colisao)
	
	if (o){
		
		vspd =- vspd / 2
		
	}
	
	#endregion
	
	#region Movendoy
	
	y+=vspd * !global.pause
	
	#endregion
	
	if (!global.pause) hspd = lerp(hspd,0,.025)
	if (!global.pause) vspd = lerp(vspd,0,.025)
	
	x = clamp(x,0,room_width )
	y = clamp(y,0,room_height)
	
}
