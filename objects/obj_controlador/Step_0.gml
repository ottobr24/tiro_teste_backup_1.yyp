var objs = global.colisao_normal

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

gamepad_set_vibration(0,vib_e,vib_d)

vib_e = lerp(vib_e,0,.25)
vib_d = lerp(vib_d,0,.25)