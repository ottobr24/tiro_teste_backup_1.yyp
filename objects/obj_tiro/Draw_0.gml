//if (!place_meeting(x,y,obj_camera)) exit;

for (var t=0;t<array_length(tracejante);t++){
	
	var _x = tracejante[t][0]
	var _y = tracejante[t][1]
	var tem = tracejante[t][2]
	var alp = 1-(0.05*tem)
	var ix = global.tiros_velo[i]/10-0.025*tem
	
	draw_sprite_ext(sprite_index,image_index,_x,_y,ix,ix,image_angle,image_blend,alp)
	
	tracejante[t][2] ++
	
	if (alp<=0.05) array_delete(tracejante,t,1)
	
}