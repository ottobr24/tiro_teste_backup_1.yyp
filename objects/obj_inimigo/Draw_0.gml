if (!place_meeting(x,y,obj_camera)) exit;

draw_self() //desenhando()

if (global.debug){ 

	draw_set_colour(c_black)

	draw_text(x-32,y+40,[x,y])
	draw_text(x-32,y+20,player_x)
	draw_text(x-32,y,estado_txt)
	draw_text(x-32,y-20,player_y)
	draw_text(x-32,y-40,point_in_circle(x,y,player_x,player_y,3))

	draw_set_colour(c_white)

	draw_path(caminho,x,y,1)
	draw_circle(alvox,alvoy,2,1)
	draw_circle(x,y,vendo_player_dist,1)

	draw_set_colour(c_red)

	draw_circle(x,y,atirar_player_dist,1)

	if (global.mostra_visao) visao(vendo_player_dist,"vendo_player")

	draw_set_colour(c_yellow)

	var alv = obj_player
	var x1 = alv.x + lengthdir_x(vendo_player_dist,alv.direction)
	var y1 = alv.y + lengthdir_y(vendo_player_dist,alv.direction)
	draw_line(alv.x,alv.y,x1,y1)

	draw_set_colour(-1)

}
