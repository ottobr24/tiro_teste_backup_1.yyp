if (!equip) exit;

desenha_sprite()

fogo_tempo--

var ct = instance_exists(pai) and variable_instance_exists(pai,"controle") ? pai.controle : 0
var cn = ct and gamepad_is_connected(0)
var grd = 0
var las_tec = !cn ? keyboard_check_pressed(ord("Z")) : gamepad_button_check_pressed(0,gp_stickr)
			
if (i<array_length(global.armas_mods)){

	for (var m1=0;m1<array_length(global.armas_mods[i]);m1++){
	
		if (array_length(global.armas_modn[i][m1])>0 and is_array(global.armas_mode[i][m1][global.armas_mods[i][m1]]) and global.armas_mode[i][m1][global.armas_mods[i][m1]][3]=11){
	
			grd = m1+1
	
		}
	}
}
	
if (las_tec) laser=!laser

if (i<array_length(global.armas_mods)){

	for (var m=array_length(global.armas_mods[i])-1;m>=0;m--){
		
		if (array_length(global.armas_modp[i][m])>0 and asset_get_type(global.armas_modp[i][m][global.armas_mods[i][m]]) = asset_sprite){
			
			if (laser and is_array(global.armas_mode[i][m][global.armas_mods[i][m]]) and global.armas_mode[i][m][global.armas_mods[i][m]][3] = 9){
				
				var sprh = global.armas_modx[i][m][0] * image_xscale 
                var margy = global.armas_modx[i][m][1]>2 ? global.armas_modx[i][m][1] * image_xscale  : -global.armas_modx[i][m][1] * image_xscale
                
                var ang = image_angle

				var mod_xx = global.armas_mode[i][m][global.armas_mods[i][m]][0]
				var mod_xy = global.armas_mode[i][m][global.armas_mods[i][m]][1]
			
                if image_xscale = -1{
					
                    ang += 180
					mod_xx+=3
					
                }
                
				var mod_an = mod_xy>0 ? ang-90 : ang-90
				var mod_xm = lengthdir_x(mod_xy*image_xscale,mod_an		)
				var mod_ym = lengthdir_y(mod_xy*image_xscale+.5,mod_an		)
				var mod_xo = lengthdir_x(mod_xx*image_xscale,image_angle) + mod_xm
				var mod_yo = lengthdir_y(mod_xx*image_xscale,image_angle) + mod_ym
				
				var mod_ii = grd ? !tirg : global.armas_modi[i][m]
				var mod_mx = 0 
				var mod_my = 0
				
				for (var md=0;md<array_length(pext);md++){
					
					if (array_length(pext[md])>3)	mod_mx += global.armas_modx[i][m][0]>pext[md][2] ? pext[md][0] : 0
					if (array_length(pext[md])>3)	mod_my += global.armas_modx[i][m][1]>pext[md][3] ? pext[md][1] : 0
					
				}
				
				var mod_mx2 = lengthdir_x(max(mod_mx,mod_my)*image_xscale,image_angle)
				var mod_my2	= lengthdir_y(max(mod_mx,mod_my)*image_xscale,image_angle)
				
				var _x = x + mod_xo + mod_mx2 
				var _y = y + mod_yo + mod_my2
		
                visao(room_width,"",_x,_y,ang,undefined,adiciona_na_array(global.colisao_normal,obj_porta),1,0,0,c_red)
				
			}
			
			var mod_spr = global.armas_modp[i][m][global.armas_mods[i][m]]
			
			var mod_xx = global.armas_mode[i][m][global.armas_mods[i][m]][0]
			var mod_xy = global.armas_mode[i][m][global.armas_mods[i][m]][1]
			
			var ang = image_angle
			
            if image_xscale = -1{
				
                ang += 180
				//sprh+=10
				
            }
                
			var mod_an = mod_xy>0 ? ang-90 : ang-90
			var mod_xm = lengthdir_x(mod_xy*image_xscale,mod_an		)
			var mod_ym = lengthdir_y(mod_xy*image_xscale,mod_an		)
			var mod_xo = lengthdir_x(mod_xx*image_xscale,image_angle) + mod_xm
			var mod_yo = lengthdir_y(mod_xx*image_xscale,image_angle) + mod_ym
			
			var mod_ii = grd ? !tirg : global.armas_modi[i][m]
			var mod_mx = 0 
			var mod_my = 0
			
			for (var md=0;md<array_length(pext);md++){
				
				if (array_length(pext[md])>3)	mod_mx += global.armas_modx[i][m][0]>pext[md][2] ? pext[md][0] : 0
				if (array_length(pext[md])>3)	mod_my += global.armas_modx[i][m][1]>pext[md][3] ? pext[md][1] : 0
				
			}
			
			//var mod_dx = 
			
			var mod_mx2 = lengthdir_x(max(mod_mx,mod_my)*image_xscale,image_angle)
			var mod_my2	= lengthdir_y(max(mod_mx,mod_my)*image_xscale,image_angle)
			
			var mod_x = x + mod_xo + mod_mx2 
			var mod_y = y + mod_yo + mod_my2
		
			draw_sprite_ext(mod_spr,mod_ii,mod_x,mod_y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	
		}
	}
}
		
if (fogo_tempo>0){
	
	var sprv  = !modo ? (sprite_width + 4)*image_xscale : global.armas_modx[i][grd-1][0]
	var sprh  = !modo ? (sprite_width + 4)*image_xscale : global.armas_modx[i][grd-1][0]
	var dirp2 = image_xscale!=1 ? direction+90 : direction-90
	var margy = !modo ? lengthdir_y(3,dirp2) : lengthdir_y(3+global.armas_modx[i][grd-1][1],dirp2)
	
	var _x = x + lengthdir_x(sprh,direction)  
	var _y = y + margy + lengthdir_y(sprv,direction)
			
	var tmdx = global.tiros_velo[i]/10*image_xscale
	var tmdy = global.tiros_velo[i]/10*image_yscale
	
	draw_sprite_ext(spr_fogo,fogo_ii,_x,_y,fogo_ix,fogo_ix,image_angle,image_blend,image_alpha)
	
}
