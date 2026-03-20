global.shake+=2
vel = 12/60
ii += vel

if (ii>= sprite_get_number(sprite_index)){
	
	instance_destroy()
	
}

if (place_meeting(x,y,[obj_player,obj_inimigo,obj_miniparede])){
	
	var obj = instance_place(x,y,[obj_player,obj_inimigo,obj_miniparede])
	
	if (!ds_list_find_index(atacados,obj)){
		
		ds_list_add(atacados,obj)
		obj.vida-=dano
		
	}
}