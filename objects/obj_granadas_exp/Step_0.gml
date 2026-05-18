if (global.pause) exit;

global.shake+=2 * global.shakes[global.configs[1][0]]    
vel = 12/60
ii += vel

if (ii>= sprite_get_number(sprite_index)){
	
	instance_destroy()
	
}

if (place_meeting(x,y,[obj_player,obj_zumbi_pai,obj_inimigo,obj_miniparede,obj_miniporta])){
	
	var obj = instance_place(x,y,[obj_player,obj_zumbi_pai,obj_inimigo,obj_miniparede,obj_miniporta])
	
	if (!ds_list_find_index(atacados,obj)){
		
		ds_list_add(atacados,obj)
		obj.vida-=dano
		
	}
}