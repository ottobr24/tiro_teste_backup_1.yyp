if (!place_meeting(x,y,obj_camera)) exit;

draw_set_halign(1)
draw_set_valign(1)

cade_alp -= .05

if (global.debug){
	
	var obj = instance_nearest(x,y,obj_player)
	var ang = 180
	var h = obj.x
	var v = obj.y
	
	var dira = point_direction(0,0,h,v)
	var dir = angle_difference(dira,image_angle)
	
	draw_text(x,y,tecla_pressionada)
	
}

var cx = x + lengthdir_x(sprite_width/2,image_angle) + lengthdir_x(sprite_height/2,image_angle)
var cy = y + lengthdir_y(sprite_width/2,image_angle) + lengthdir_y(sprite_height/2,image_angle)

var obj = player_prox
var ct = obj!= -4 and instance_exists(obj) and variable_instance_exists(obj,"controle") ? obj.controle : 0
var cn = ct

var tec_texto = !cn ? tecla_abrir[0] : "B"

draw_set_alpha(cade_alp)

draw_set_font(fnt_menu)

if ( trancado) draw_sprite(spr_cadeado,0,cx,cy)
if (!trancado) draw_text(cx,cy,tec_texto)

desenha_chute()

draw_set_font(-1)

draw_set_alpha(1)
draw_set_halign(-1)
draw_set_valign(-1)
