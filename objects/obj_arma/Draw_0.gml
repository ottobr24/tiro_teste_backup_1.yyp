desenha_sprite()

fogo_tempo--
//draw_text(x,y,global.armas_mods[i])

//draw_text(x,y,municao)

if (fogo_tempo>0){
	
	var marg = sprite_width*image_xscale// + 10
	var margy = lengthdir_y(2*image_xscale,direction)
	var _x = x + lengthdir_x(marg,direction)
	var sprh = sprite_width*image_xscale-margy
	var _y = margy+y + lengthdir_y(marg,direction)
	var tmdx = global.tiros_velo[i]/10*image_xscale
	var tmdy = global.tiros_velo[i]/10*image_yscale
	
	draw_set_colour(c_navy)
	//draw_line(x,y,_x,_y)
	draw_set_colour(-1)
	
	if (i>=array_length(global.armas_mods) or (array_length(global.armas_mods[i])>2 and global.armas_mods[i][2]=0)) draw_sprite_ext(spr_fogo,fogo_ii,_x,_y,tmdx,tmdy,image_angle,image_blend,image_alpha)
	
}

if (i<array_length(global.armas_mods)){

	for (var m=array_length(global.armas_mods[i])-1;m>=0;m--){
	
		if (global.armas_mods[i][m]!=0){
	
			var mod_spr = global.armas_modp[i][m][global.armas_mods[i][m]]
			var mod_xo = 0//sprite_get_xoffset(mod_spr)
			var mod_yo = 0//sprite_get_yoffset(mod_spr)
			var mod_x = x + mod_xo 
			var mod_y = y + mod_yo
		
			draw_sprite_ext(mod_spr,0,mod_x,mod_y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	
		}
	}
}


	

//draw_set_colour(c_navy)

//var x1 = x+lengthdir_x(10,direction-90)
//var y1 = y+lengthdir_y(10,direction-90)
//var x2 = x+lengthdir_x(10,direction+90)
//var y2 = y+lengthdir_y(10,direction+90)

//draw_line(x,y,x1,y1)
//draw_line(x,y,x2,y2)
//
//draw_set_colour(-1)