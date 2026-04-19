var objs = [obj_miniparede,obj_vidro]

if (att){

	mp_grid_clear_all(mapa)
	
	for (var o=0;o<array_length(global.colisao_normal);o++){

		instance_activate_object(objs[o])
		mp_grid_add_instances(mapa,global.colisao_normal[o],1)
		
	}
	
	att = 0
	
}

for (var b=0;b<array_length(barulhos);b++){
	
	barulhos[b][2] = lerp(barulhos[b][2],-5,.1)
	
	if (barulhos[b][2]<0 or !instance_exists(barulhos[b][3])) array_delete(barulhos,b,1)
	
}