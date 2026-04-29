image_blend = !controle ? c_white : c_purple
draw_self()

desenha_barra(vida,vida_max,100,20,c_black,c_green,x,y-50)

if (global.debug){
	
	draw_set_alpha(.1)
	mp_grid_draw(obj_controlador.mapa)
	draw_set_alpha( 1)
	
}
