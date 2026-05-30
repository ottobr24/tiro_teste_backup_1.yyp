sai_do_mod = function(){
	
	var sai = gamepad_button_check_pressed(0,gp_face2) or gamepad_button_check_pressed(0,gp_start) or keyboard_check_pressed(vk_escape)
	var mouse = mouse_check_button_pressed(mb_left)
	var setas = sai
	
	image_blend = make_colour_rgb(102,7,9)
		
	if position_meeting(mouse_x,mouse_y,id) or setas  {
		
		image_blend = c_red
		
		if (mouse or setas){
			
			if (room != rm_zumbi) salvando()
			
			if (instance_exists(obj_camera)) obj_camera.roo = 0
			
			if (instance_exists(obj_menu2)){ 
				
				var arm = obj_menu2.arma
				var i = global.arma
				
				obj_menu2.textos_mostrar = [0]
				arm.i = i
				
				arm.mods = [] array_copy(arm.mods,0,global.armas_mods[0][i],0,array_length(global.armas_mods[0][i]))
				arm.modi = [] array_copy(arm.modi,0,global.armas_modi[0][i],0,array_length(global.armas_modi[0][i]))

			}
				
			if (instance_exists(obj_pause)) obj_pause.textos_mostrar = [0]
			if (global.pause = 2) global.pause = 0
			
			instance_destroy(obj_mod)
			instance_destroy(obj_mod_seta)
			instance_destroy(obj_mod_compra)
			instance_destroy(obj_mod_volta)
			
		}
	}
}