compra_arma = function(){
	
	var compra = gamepad_button_check_pressed(0,gp_face4) or keyboard_check_pressed(vk_space)
	var mouse = mouse_check_button_pressed(mb_left)
	var setas = compra
	
	image_xscale = 2
	image_yscale = 2
	
	var i  = obj_mod.i
	
	if (!global.armas_aval[i]	) image_index = 0
	if ( global.armas_aval[i]	) image_index = 1
	if ( global.arma = i		) image_index = 2
	
	image_blend = c_white
		
	if position_meeting(mouse_x,mouse_y,id) or setas{
		
		image_blend = c_gray
		
		if (mouse_check_button_pressed(mb_left) or setas){
			
			global.armas_aval[i] = 1
			global.arma = i
					
		}
	}
}
