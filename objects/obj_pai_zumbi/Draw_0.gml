image_alpha = 1

if (!place_meeting(x,y,obj_camera)) exit;

var obj = instance_nearest(x,y,obj_player)
var ply = obj
			
desenhando()
bracos()

if (distance_to_object(obj)<ataque_dist){
	
	draw_sprite(spr_zumbi_atacando,ii,x,y)
	
}

if (global.debug) draw_path(caminho,x,y,1)