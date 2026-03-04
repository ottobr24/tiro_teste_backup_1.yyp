if (!place_meeting(x,y,obj_camera)) exit;

draw_self()

if (global.debug){
	
	var ang = 180
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle+ang,image_blend,0.4)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,0.4)
	
	var ang_min = image_angle-ang+360
	var ang_max = image_angle//+ang
	
	if (obj_player.direction = clamp(obj_player.direction,min(ang_min,ang_max),max(ang_min,ang_max))){
		
		//draw_text(x,y,"empurra")
		
	}
}