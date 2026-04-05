if (!place_meeting(x,y,obj_camera)) exit;

if (global.debug){
	
	var ang = 180
	var h = obj_player.x
	var v = obj_player.y
	
	var dira = point_direction(0,0,h,v)
	var dir = angle_difference(dira,image_angle)
			
	draw_text(x,y,mudando)
	
}