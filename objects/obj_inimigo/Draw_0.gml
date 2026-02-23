if (!place_meeting(x,y,obj_camera)) exit;

draw_self() //desenhando()

if (global.debug){ 

	draw_set_colour(c_black)

	draw_text(x,y,estado_txt)
	draw_text(x,y-20,perigo)
	draw_text(x,y+20,player_perigo)
	draw_text(x,y-40,vendo_player_timer)

	draw_set_colour(c_white)

	draw_path(caminho,x,y,1)
	draw_circle(alvox,alvoy,2,1)
	draw_circle(x,y,vendo_player_dist,1)

	draw_set_colour(c_orange)

	draw_circle(x,y,pra_atirar_player_dist,1)

	draw_set_colour(c_red)

	draw_circle(x,y,atirar_player_dist,1)

	visao(vendo_player_dist,"vendo_player")

	draw_set_colour(c_yellow)

	var alv = obj_player
	var x1 = alv.x + lengthdir_x(vendo_player_dist,alv.direction)
	var y1 = alv.y + lengthdir_y(vendo_player_dist,alv.direction)
	draw_line(alv.x,alv.y,x1,y1)

}

desenha_barra(vida,vida_max,140,20,c_black,c_green,x,y-40)
desenha_barra(vendo_player_timer,60,100,20,c_black,c_navy,x,y-70)

draw_set_colour(-1)
