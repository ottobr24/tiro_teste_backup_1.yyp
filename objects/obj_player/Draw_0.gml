image_blend = !controle ? c_white : c_purple
draw_self()
//draw_set_colour(c_red)
//draw_text(x,y-20,cd)
//draw_text(x,y-40,cdm)
//draw_text(x,y-60,cdm-cd)
//draw_set_colour(-1)
desenha_barra(vida,vida_max,100,25,c_black,c_green,x,y-50)

if (global.debug){
	
	//draw_set_alpha(.4)
	//mp_grid_draw(obj_controlador.mapa)
	//draw_set_alpha(1 )
	//var grid = ds_grid_create(room_width div 32,room_height div 32)
	//var x1 = 0 
	//var y1 = 0 
	//
	//mp_grid_to_ds_grid(obj_controlador.mapa,grid)
	//
	//for (var c=0;c<room_width div 32;c++){
	//	
	//	for (var l=0;l<room_height div 32;l++){
	//		
	//		x1 = 32 * c
	//		y1 = 32 * l
	//		draw_text(x1,y1,ds_grid_get(grid,c,l))
	//		
	//	}
	//}
	//
	//ds_grid_destroy(grid)
	
}