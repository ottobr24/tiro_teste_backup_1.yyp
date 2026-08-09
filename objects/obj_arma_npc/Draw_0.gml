if (!instance_exists(pai)){
	
	instance_destroy()
	exit;
	
}

if (!place_meeting(x,y,obj_camera)) exit;

draw_set_colour(c_black)
//draw_text(x,y-20,image_angle)
//draw_text(x,y-40,direction)
draw_set_colour(-1)

desenha_sprite()

fogo_tempo--

var ct = instance_exists(pai) and variable_instance_exists(pai,"controle") ? pai.controle : 0
var cn = ct and gamepad_is_connected(0)
var grd = 0
var las_tec = 0
			
if (las_tec) laser=!laser

desenha_modificacoes()

desenha_fogo()