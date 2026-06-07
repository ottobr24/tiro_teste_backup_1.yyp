var sprw = sprite_get_width (sprite_index)
var sprh = sprite_get_height(sprite_index)

var sprx = sprite_get_xoffset(sprite_index)
var spry = sprite_get_yoffset(sprite_index)

var obj = instance_nearest(x,y,obj_player)
var cn = obj.controle
var tec = ["F","B"]

sprite_set_offset(sprite_index,sprw/2,sprh/2)

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,1)

sprite_set_offset(sprite_index,sprx,spry)
if (!place_meeting(x,y,obj_camera)) exit;

draw_set_halign(1)
draw_set_valign(1)
draw_set_alpha(image_alpha)

draw_text(x,y-24,tec[cn])
	
draw_set_alpha(1)
draw_set_halign(-1)
draw_set_valign(-1)
