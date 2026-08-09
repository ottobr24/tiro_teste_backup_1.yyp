image_alpha = 1

if (!place_meeting(x,y,obj_camera)) exit;

var obj = instance_nearest(x,y,obj_player)
		
draw_self() //desenhando()

bracos()

if (point_distance(x,y,obj.x,obj.y)<ataque_dist){
	
	draw_sprite(spr_zumbi_atacando,ii,x,y)
	
}