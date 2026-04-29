if (!place_meeting(x,y,obj_camera)) exit;

draw_set_colour(c_black)
draw_set_alpha(alp)

draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,0)

draw_set_alpha(1)
draw_set_colour(-1)
	
if (global.debug){
	
	draw_self()
	draw_set_colour(image_blend)
	draw_text(x+sprite_width/2,y+sprite_height/2,vendo)
	draw_set_colour(-1)
	
}
