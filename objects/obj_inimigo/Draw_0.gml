if (!place_meeting(x,y,obj_camera) or image_alpha=0) exit;

draw_self() //desenhando()

var ve_e_pe = player_perigo and vendo_player and instance_exists(alvo) and point_distance(x,y,alvo.x,alvo.y)<atirar_player_dist

//draw_text(x,y,text)

//if (alvo) draw_text(x,y		,[ve_e_pe,(place_meeting(x,y,obj_camera) or alvo.object_index != obj_player)])//alvo.object_index,player_perigo,vendo_player,[point_distance(x,y,alvo.x,alvo.y),atirar_player_dist,point_distance(x,y,alvo.x,alvo.y)<atirar_player_dist],vendo_player_timer])
//if (alvo) draw_text(x,y-20	,[player_perigo,vendo_player,instance_exists(alvo) , point_distance(x,y,alvo.x,alvo.y)<atirar_player_dist])//alvo.object_index,player_perigo,vendo_player,[point_distance(x,y,alvo.x,alvo.y),atirar_player_dist,point_distance(x,y,alvo.x,alvo.y)<atirar_player_dist],vendo_player_timer])
//if (alvo) draw_text(x,y+20	,[estado_txt])

if (global.debug){ 

	draw_set_colour(c_yellow)

	draw_text(x-32,y+40,arma)
	draw_text(x-32,y+20,arma_usar)
	draw_text(x-32,y,estado_txt)
	draw_text(x-32,y-20,arma_atira)
	draw_text(x-32,y-40,instance_exists(arma))

	draw_set_colour(c_white)

	draw_path(caminho,x,y,1)
	draw_circle(alvox,alvoy,2,1)
	draw_circle(x,y,vendo_player_dist,1)

	draw_set_colour(c_red)

	draw_circle(x,y,atirar_player_dist,1)

	if (global.mostra_visao and instance_exists(obj_player)) visao(vendo_player_dist,"vendo_player",,,,alvo,,35,1,1)

	draw_set_colour(c_yellow)

	var alv = obj_player
	var x1 = alv.x + lengthdir_x(vendo_player_dist,alv.direction)
	var y1 = alv.y + lengthdir_y(vendo_player_dist,alv.direction)
	draw_line(alv.x,alv.y,x1,y1)

	draw_set_colour(-1)

}