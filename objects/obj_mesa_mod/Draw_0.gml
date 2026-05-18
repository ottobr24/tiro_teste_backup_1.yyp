draw_self()

if (instance_exists(obj_player)){

	draw_set_alpha(cade_alp)
	draw_set_font(fnt_menu)

	var alvo = instance_nearest(x,y,obj_player)
	var cn = alvo.controle
		
	var tex = tecla_texto[cn]

	draw_text(x,y-15,tex)

	draw_set_alpha(1)
	draw_set_font(-1)

}