function usa_controle(tec,segura_pressiona_solta,pos = -1,contr = global.controle){
	
	var gt
	var mt
	var tec2 = global.controles[tec][contr]
	
	var tec_a = global.controles[tec][contr]
	var tec_t = array_length(tec_a)
	var tecs = []
	
	for (var t=0;t<tec_t;t++){
		
		var tec_a2 = global.controles[tec][contr][t][1]
		var tec_m  = global.controles[tec][contr][t][2]
		var tmds = array_length(tecs)
		
		if (tec_m = 0){
			
			if (segura_pressiona_solta = 0) mt = keyboard_check
			if (segura_pressiona_solta = 1) mt = keyboard_check_pressed
			if (segura_pressiona_solta = 2) mt = keyboard_check_released
				
			if (segura_pressiona_solta = 0) gt = gamepad_button_check
			if (segura_pressiona_solta = 1) gt = gamepad_button_check_pressed
			if (segura_pressiona_solta = 2) gt = gamepad_button_check_released
			
		}else{
			
			if (segura_pressiona_solta = 0) mt = mouse_check_button
			if (segura_pressiona_solta = 1) mt = mouse_check_button_pressed
			if (segura_pressiona_solta = 2) mt = mouse_check_button_released
			
			gt = gamepad_axis_value
			
		}
		
		var tec3 = !contr ? mt(tec_a2) : gt(0,tec_a2)
		
		if (tec_m and contr){ 
			
			tec3 *= 1.5
			
			tec3 = clamp(tec3,-1,1)
			
			if (tec3 < 0 and  pos) tec3 = 0
			if (tec3 > 0 and !pos) tec3 = 0
			if (tec3 < 0 and !pos) tec3 =- tec3
				
		}
		
		tecs[tmds] = tec3
		
	}
	
	var sim = achando_na_array(tecs,1) >- 1
	
	return sim
	
}
	
function checa_controle(mox,moy){
	
	var cont  = global.controle
	
	var dmox = mouse_x
	var dmoy = mouse_y
	
	if (mox != dmox or moy != dmoy or keyboard_check(vk_anykey) or mouse_check_button_pressed(mb_any)){ 
		
		global.controle = 0
		
	}
	
	for (var c=0;c<gamepad_button_count(0);c++){
		
		if (gamepad_button_check(0,c)){
			
			global.controle = 1
			break;
			
		}
	}
	
	for (var a=0;a<gamepad_axis_count(0);a++){
		
		if (abs(gamepad_axis_value(0,a)) > .3){
			
			global.controle = 1
			break;
			
		}
	}
	
	if (cont != global.controle) return 1
	
	return 0
	
}