if (global.debug){

	draw_self()
	draw_set_colour(reg)
	draw_text(x+sprite_width/2,y+sprite_height/2,visao(room_width,"",obj_player.x,obj_player.y,obj_player.direction,id,global.colisao_normal,5,0,0))
	draw_set_colour(-1)
	
}
