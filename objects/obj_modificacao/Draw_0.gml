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

if (i<array_length(global.armas_mods) and alp){

	for (var m=array_length(global.armas_mods[i])-1;m>=0;m--){

		if (array_length(global.armas_modp[i][m])>0 and global.armas_modp[i][m][global.armas_mods[i][m]]!=0){

			var mod_spr =  global.armas_modp[i][m][global.armas_mods[i][m]]
			var mod_xo = sprite_get_xoffset(mod_spr)
			var mod_yo = sprite_get_yoffset(mod_spr)
			var mod_mx = 0 
			var mod_my = 0
			var mod_x1 = global.armas_mode[i][m][global.armas_mods[i][m]][0]
			var mod_y1 = global.armas_mode[i][m][global.armas_mods[i][m]][1]
			
			for (var md=0;md<array_length(pext);md++){
				
				if (array_length(pext[md])>3)mod_mx += global.armas_modx[i][m][0]>pext[md][2] ? pext[md][0] : 0
				if (array_length(pext[md])>3)mod_my += global.armas_modx[i][m][1]>pext[md][3] ? pext[md][1] : 0
				
			}
			
			var mod_x = sprx + (mod_mx - mod_xo+mod_x1) * 20 * rot//od_x1*sprxs-((sprw*sprxs)/2)
			var mod_y = spry + (mod_my - mod_yo+mod_y1) * 20//od_y1*sprys-((sprh*sprys)/2)
			
			var mod_l = clamp(m,0,1000)
			var mod_i = global.armas_modi[i][mod_l]
			
			sprite_set_offset(mod_spr,sprite_get_width(spr)/2,sprite_get_height(spr)/2)

			draw_sprite_ext(mod_spr,mod_i,mod_x,mod_y,sprxs,sprys,0,c_white,alp)

			sprite_set_offset(mod_spr,mod_xo,mod_yo)
		
			//draw_text(100,40+20*m,sprite_get_name(mod_spr))
			//draw_text(300,40+20*m,mod_xo)
			//draw_text(500,40+20*m,mod_yo)
		
		}
	}

	for (var p=0;p<array_length(global.armas_modx[i]);p++){
	
		if (array_length(global.armas_modx[i][p])>0){
	
			var mod_mx = 0 
			var mod_my = 0
			
			for (var md=0;md<array_length(pext);md++){
				
				if (array_length(pext[md])>3)	mod_mx += global.armas_modx[i][p][0]>pext[md][2] ? pext[md][0] : 0
				if (array_length(pext[md])>3)	mod_my += global.armas_modx[i][p][1]>pext[md][3] ? pext[md][1] : 0
				
			}
			
			var mod_spr =  global.armas_modp[i][p][global.armas_mods[i][p]]
			var mod_x1 = global.armas_modx[i][p][0]+.5 + mod_mx
			var mod_y1 = global.armas_modx[i][p][1]+.5 + mod_my
			
			var mod_x = sprx+mod_x1*sprxs-((sprw*sprxs)/2)
			var mod_y = spry+mod_y1*sprys-((sprh*sprys)/2)
			var col = point_in_circle(mouse_x,mouse_y,mod_x,mod_y,abs(mod_esc))
			
			var cor = c_white
			
			if (lista = p+1) cor = make_colour_rgb(200,200,0)
			
			if (col){ 
				
				colidindo = 1
				//var mod_xo = sprite_get_xoffset(mod_spr)
				//var mod_yo = sprite_get_yoffset(mod_spr)
				//var mod_x2 = sprx + (mod_mx - mod_xo) * 20 * rot//od_x1*sprxs-((sprw*sprxs)/2)
				//var mod_y2 = spry + (mod_my - mod_yo) * 20//od_y1*sprys-((sprh*sprys)/2)
				//
				//sprite_set_offset(mod_spr,sprite_get_width(spr)/2,sprite_get_height(spr)/2)
				//
				//inicia_shader()
				//inicia_mola(sprxs,sprys)
				//efeito_shader(mod_spr,100)
				//
				//sprite_set_offset(mod_spr,mod_x2,mod_y2)
		
				cor = c_yellow
			
			}
			
			draw_set_colour(cor)

			draw_circle(mod_x,mod_y,mod_esc,0)

			draw_set_colour(-1)

			if (col){
	
				window_set_cursor(cr_drag)
				
				if (mouse_check_button_pressed(mb_left)){
				
					if (lista != p+1){
				
						lista = p+1
						listai = global.armas_mods[i][lista-1]
						
						var mod_i = lista-1
					
					}else{
						
						pext = []
						lista = -1
				
					}
					
					listan = 0
					
					//modss = array_create(array_length(global.armas_modp[i]),0)
					//modxs = array_create(array_length(global.armas_modp[i]),[])
				}
			}
		}
	}
	//draw_text(100,20,global.armas_mods[i])
}

sprite_set_offset(spr,sprxo,spryo)

//draw_text(60,20,global.armas_mods[i])

if (lista){
	
	var stmd = sprite_get_number(global.armas_modp[i][lista-1][listai])
	
	for (var l=0;l<array_length(global.armas_modp[i][lista-1]);l++){
		
		var col2 = l = listai and listan=0
		var cor2 = col2 ? c_yellow : c_white
	
		draw_set_colour(cor2)
	
		draw_text(sprx-200,20+20*l,global.armas_modn[i][lista-1][l])
	
		draw_set_colour(-1)

	}
	
	for (var c=0;c<stmd;c++){
		
		if (is_array(global.armas_mode[i][lista-1][listai]) and global.armas_mode[i][lista-1][listai][3] = 11) stmd=0
		
		var col2 = c = global.armas_modi[i][lista-1] and listan=1
		var cor2 = col2 ? c_yellow : c_white
		var tex = array_length(global.armas_mode[i][lista-1][listai])=0 or !is_array(global.armas_mode[i][lista-1][listai][2]) ? ["Padrão"] : global.armas_mode[i][lista-1][listai][2]
		
		draw_set_colour(cor2)
	
		draw_text(sprx+200,20+20*c,tex[c])
	
		draw_set_colour(-1)

	}
}

if ( alp and !colidindo) window_set_cursor(cr_arrow)

draw_set_alpha(1)
draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)