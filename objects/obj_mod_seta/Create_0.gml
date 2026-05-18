prox = 1

muda_arma = function(){
	
	var e = keyboard_check_pressed(ord("Q")) or gamepad_button_check_pressed(0,gp_shoulderl)
	var d = keyboard_check_pressed(ord("E")) or gamepad_button_check_pressed(0,gp_shoulderr)
	var mouse = mouse_check_button_pressed(mb_left)
	var setas = e or d
	
	image_blend = c_white
		
	if (position_meeting(mouse_x,mouse_y,id) or setas){
		
		image_blend = c_gray
		
		if (mouse or setas){
		
			image_blend = make_colour_rgb(64,64,64)
		
			var obj = obj_mod
			var arm = obj_menu2.arma
		
			if ( prox and (mouse or d)) obj.i++		
			if (!prox and (mouse or e)) obj.i--		
		
			obj.i = clamp(obj.i,0,array_length(global.armas_bala)-1)
		
			arm.mods		= [] array_copy(arm.mods		,0,global.armas_mods[0][obj.i],0,array_length(global.armas_mods[0][obj.i]))
			arm.modi		= [] array_copy(arm.modi		,0,global.armas_modi[0][obj.i],0,array_length(global.armas_modi[0][obj.i]))
			obj.mods_atual	= [] array_copy(obj.mods_atual	,0,global.armas_mods[0][obj.i],0,array_length(global.armas_mods[0][obj.i]))
			
			obj.lista = -1
			obj.listai = 0
			obj.listan = 0
		
			var i = obj.i
			
			for (var m=0;m<array_length(global.armas_mods[0][i]);m++){
			
				var mod_i = global.armas_mods[0][i][m]
				var ptmd = m
				var ptm1 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>18 ? global.armas_mode[i][m][mod_i][18] : 0
				var ptm2 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>19 ? global.armas_mode[i][m][mod_i][19] : 0
				var ptm3 = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][0]: 0
				var ptm4 = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][1]: 0
				var ptm5 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>21 ? global.armas_mode[i][m][mod_i][21] : 0
			
				obj.pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4,ptm5]
			
			}
		}
	}
}
	
sumindo_e_invertendo = function(){
	
	var i = obj_mod.i
		
	if ( prox) image_alpha = i = array_length(global.armas_bala)-1	? 0 : 1
	if (!prox) image_alpha = i = 0									? 0 : 1
	
	image_xscale = !prox ? -1 : 1
	
}