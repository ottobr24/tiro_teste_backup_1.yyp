desenha_sprite()

fogo_tempo--

if (fogo_tempo>0){
	
	var sprv  = !modo ? (sprite_width + 4)*image_xscale : global.armas_modx[i][6][0]
	var sprh  = !modo ? (sprite_width + 4)*image_xscale : global.armas_modx[i][6][0]
	var dirp2 = image_xscale!=1 ? direction+90 : direction-90
	var margy = !modo ? lengthdir_y(3,dirp2) : lengthdir_y(3+global.armas_modx[i][6][1],dirp2)
	
	var _x = x + lengthdir_x(sprh,direction)  
	var _y = y + margy + lengthdir_y(sprv,direction)
			
	var tmdx = global.tiros_velo[i]/10*image_xscale
	var tmdy = global.tiros_velo[i]/10*image_yscale
	
	draw_sprite_ext(spr_fogo,fogo_ii,_x,_y,fogo_ix,fogo_ix,image_angle,image_blend,image_alpha)
	
}

if (keyboard_check_pressed(ord("Z"))) laser=!laser

if (i<array_length(global.armas_mods)){

	for (var m=array_length(global.armas_mods[i])-1;m>=0;m--){
		
		if (array_length(global.armas_modp[i][m])>0 and global.armas_modp[i][m][global.armas_mods[i][m]]!=0){
			
			if (laser and is_array(global.armas_mode[i][m][global.armas_mods[i][m]]) and global.armas_mode[i][m][global.armas_mods[i][m]][0] = 9){
				
				var sprh = global.armas_modx[i][m][0] * image_xscale 
                var margy = global.armas_modx[i][m][1] * image_xscale 
                
                var ang = image_angle

                if image_xscale = -1{
					
                    ang += 180
					//sprh+=10
					
                }
                
                var _x = x + lengthdir_x(sprh,image_angle) + lengthdir_x(margy, ang - 90)
                var _y = y + lengthdir_y(sprh,image_angle) + lengthdir_y(margy, ang - 90);
                
                visao(room_width,"",_x,_y,ang,undefined,adiciona_na_array(global.colisao_normal,obj_porta),1,0,0,c_red)
				
			}
			
			var mod_spr = global.armas_modp[i][m][global.armas_mods[i][m]]
			var mod_xo = 0//sprite_get_xoffset(mod_spr)
			var mod_yo = 0//sprite_get_yoffset(mod_spr)
			var mod_ii = i<array_length(global.armas_mods) and array_length(global.armas_mods[i])>6 and array_length(global.armas_modn[i][6])>0 and is_array(global.armas_mode[i][m][global.armas_mods[i][m]]) and global.armas_mode[i][m][global.armas_mods[i][m]][0] = 11 ? !tirg : 0
			var mod_x = x + mod_xo 
			var mod_y = y + mod_yo
		
			draw_sprite_ext(mod_spr,mod_ii,mod_x,mod_y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	
		}
	}
}
