var gw = room_width 
var gh = room_height

var spr = global.armas_sprt[i]
var sprw = sprite_get_width (spr)
var sprh = sprite_get_height(spr)
var sprxs = 20 * rot
var sprys = 20 
var sprx = gw/2
var spry = gh/2
var sprxo = sprite_get_xoffset(spr)
var spryo = sprite_get_yoffset(spr)
var mod_esc = sprxs / 4

draw_set_alpha(alp)
draw_set_colour(c_navy)
draw_rectangle(0,0,gw,gh,0)
draw_set_colour(-1)

draw_set_font(fnt_modificacao)
draw_set_halign(1)
draw_set_valign(1)

sprite_set_offset(spr,sprite_get_width(spr)/2,sprite_get_height(spr)/2)
draw_sprite_ext(spr,0,sprx,spry,sprxs,sprys,0,c_white,alp)

if (i<array_length(global.armas_mods)){

	for (var m=array_length(global.armas_mods[i])-1;m>=0;m--){
	
		if (global.armas_mods[i][m]!=0){
	
			var mod_spr =  global.armas_modp[i][m][global.armas_mods[i][m]]
			var mod_xo = sprite_get_xoffset(mod_spr)
			var mod_yo = sprite_get_yoffset(mod_spr)
			var mod_x = sprx - mod_xo * 20 * rot//od_x1*sprxs-((sprw*sprxs)/2)
			var mod_y = spry - mod_yo * 20//od_y1*sprys-((sprh*sprys)/2)
		
			sprite_set_offset(mod_spr,sprite_get_width(spr)/2,sprite_get_height(spr)/2)
	
			draw_sprite_ext(mod_spr,0,mod_x,mod_y,sprxs,sprys,0,c_white,alp)
	
			sprite_set_offset(mod_spr,mod_xo,mod_yo)
			
			//draw_text(100,40+20*m,sprite_get_name(mod_spr))
			//draw_text(300,40+20*m,mod_xo)
			//draw_text(500,40+20*m,mod_yo)
			
		}
	}
	
	for (var p=0;p<array_length(global.armas_modx[i]);p++){
		
		if (array_length(global.armas_modx[i][p])>0){
		
			var mod_x1 = global.armas_modx[i][p][0]+.5
			var mod_y1 = global.armas_modx[i][p][1]+.5
			var mod_x = sprx+mod_x1*sprxs-((sprw*sprxs)/2)
			var mod_y = spry+mod_y1*sprys-((sprh*sprys)/2)
			var col = point_in_circle(mouse_x,mouse_y,mod_x,mod_y,abs(mod_esc))
			var cor = col ? c_yellow : c_white
	
			draw_set_colour(cor)
	
			draw_circle(mod_x,mod_y,mod_esc,0)
	
			draw_set_colour(-1)
	
			if (col and mouse_check_button_pressed(mb_left)){
		
				if (lista != p+1){
					
					lista = p+1
					listai = global.armas_mods[i][lista-1]
					
				}else{
					
					lista = -1
					
				}
				//modss = array_create(array_length(global.armas_modp[i]),0)
				//modxs = array_create(array_length(global.armas_modp[i]),[])
		
			}
		}
	}
	//draw_text(100,20,global.armas_mods[i])
}

sprite_set_offset(spr,sprxo,spryo)

//draw_text(60,20,global.armas_mods[i])

if (lista){
	
	for (var l=0;l<array_length(global.armas_modp[i][lista-1]);l++){
		
		var col2 = l = listai
		var cor2 = col2 ? c_yellow : c_white
		
		draw_set_colour(cor2)
		
		draw_text(sprx,20+20*l,global.armas_modn[i][lista-1][l])
		
		draw_set_colour(-1)

	}
}

draw_set_alpha(1)
draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)