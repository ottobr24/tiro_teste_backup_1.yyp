if (global.debug){
	
	var cores = [c_aqua,c_black,c_blue,c_dkgray,c_fuchsia,c_gray,c_green,c_lime,c_ltgray,c_maroon,c_navy]

	draw_self()
	draw_set_colour(cores[reg])
	draw_text(x+sprite_width/2,y+sprite_height/2,reg)
	draw_set_colour(-1)
	
}
