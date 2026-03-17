desenha_sprite()

fogo_tempo--

if (fogo_tempo>0){
	
	var sprh = sprite_width*image_xscale
	var dirp2 = image_xscale!=1 ? direction+90 : direction-90
	var margy = lengthdir_y(2,dirp2)
	
	var _x = x + lengthdir_x(sprite_width*image_xscale,direction)
	var _y = y + margy + lengthdir_y(sprh,direction)
			
	var tmdx = global.tiros_velo[i]/10*image_xscale
	var tmdy = global.tiros_velo[i]/10*image_yscale
	
	draw_sprite_ext(spr_fogo,fogo_ii,_x,_y,fogo_ix,fogo_ix,image_angle,image_blend,image_alpha)
	
}

if (keyboard_check_pressed(ord("Z"))) laser=!laser

if (i<array_length(global.armas_mods)){

	for (var m=array_length(global.armas_mods[i])-1;m>=0;m--){
		
		if (array_length(global.armas_modp[i][m])>0 and global.armas_modp[i][m][global.armas_mods[i][m]]!=0){
	
			if (laser and global.armas_modn[i][m][global.armas_mods[i][m]] = "Laser"){
				
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
				//
				//var col = ds_list_create()
				//var dis = room_width //point_distance(x,y,mouse_x,mouse_y)
				//
				//collision_line_list(_x,_y,_x+lengthdir_x(room_width,direction),_y+lengthdir_y(room_height,direction),[obj_miniparede,obj_vidro,obj_porta,obj_inimigo],1,1,col,1)
				//
				//var obj = ds_list_find_value(col,0)
				//
				//if (ds_list_size(col)>0){
				//	
				//	var dirs = [_x>obj.x,_y>obj.y,_x<obj.x,_y<obj.y]
				//	var efec = [[bbox_left,obj.y],[obj.x,obj.bbox_top],[bbox_right,obj.y],[obj.x,obj.bbox_bottom]]
				//	
				//	for (var d = 0;d<array_length(dirs);d++){
				//		
				//		if (dirs[d]){ dis = point_distance(_x,_y,obj.x,obj.y) break }
				//		
				//	}
				//}
				//
				//depth = 400
				//
				//draw_set_color(c_red)
				//draw_line(_x,_y,_x+lengthdir_x(dis,direction),_y+lengthdir_y(dis,direction))
				////if (obj) draw_text(_x,_y,obj.object_index)
				//draw_set_color(-1)
				//
				//depth = 100
				//
				//ds_list_destroy(col)
	
			}
			
			//desenha_sprite()

			var mod_spr = global.armas_modp[i][m][global.armas_mods[i][m]]
			var mod_xo = 0//sprite_get_xoffset(mod_spr)
			var mod_yo = 0//sprite_get_yoffset(mod_spr)
			var mod_x = x + mod_xo 
			var mod_y = y + mod_yo
		
			draw_sprite_ext(mod_spr,0,mod_x,mod_y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	
		}
	}
}
