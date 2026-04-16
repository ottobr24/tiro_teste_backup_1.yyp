var objs = [obj_miniparede,obj_vidro]

if (att){

	mp_grid_clear_all(mapa)
	
	for (var o=0;o<array_length(global.colisao_normal);o++){

		instance_activate_object(objs[o])
		mp_grid_add_instances(mapa,global.colisao_normal[o],1)
		
	}
	
	att = 0
	
}

if (mouse_check_button_pressed(mb_left)){
	
	//var pat = path_add()
	
}