if (!equip) exit;

if (!instance_exists(pai)){
	
	instance_destroy()
	exit;
	
}

draw_set_colour(c_black)
//draw_text(x,y-20,mods)
//draw_text(x,y-40,direction)
draw_set_colour(-1)

desenha_sprite()
desenha_modificacao()
desenha_fogo()

if (global.debug){
	
	var x1 = lengthdir_x(16,direction-90)
	var y1 = lengthdir_y(16,direction-90)
	var x2 = lengthdir_x(16,direction-270)
	var y2 = lengthdir_y(16,direction-270)
	
	draw_line(x,y,x+x1,y+y1)
	draw_line(x,y,x+x2,y+y2)
	
}