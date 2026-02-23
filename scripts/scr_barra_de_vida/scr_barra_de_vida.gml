function desenha_barra(vd,vdm,tamx,tamy,cor,cor2 = c_green,posx=x,posy=y){
	
	var w = tamx / vdm * vd
	
	w = clamp(w,4,tamx-4)
	
	draw_set_colour(cor)
	
	draw_rectangle(posx-tamx/2,posy-tamy/2,posx+tamx/2,posy+tamy/2,0)
	
	draw_set_colour(cor2)
	
	draw_rectangle(posx-tamx/2+4,posy-tamy/2+4,(posx-tamx/2)+w,posy+tamy/2-4,0)
	
	draw_set_alpha(1)
	draw_set_colour(-1)
	
}