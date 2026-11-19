i=0
tecla_pegar = ["F"		,gp_face2	]
mods = []
modi = []
grd = 0
tirg = 0
recarregando = 0
cock		 = 0
modo		 = 0
cano_quente_max = 0
cano_quente = 0
pai = -4

image_alpha = 0

rodando = function(ixmin = -1,ixmax = 1,vel = 1){
	
	//image_xscale = cos(get_timer()/(500000))*vel
	//image_xscale = clamp(image_xscale,ixmin,ixmax)
	//image_yscale = ixmax
	
}

desenha_modificacao = function(){
	
	#region Variaveis
	
	var ct = instance_exists(pai) ? pai.controle : 0
	var cn = ct and gamepad_is_connected(0)
	var pente_ext = 0
	var silenciador = 0
	var las_tec = usa_controle(controles.arma_l,1,,cn)//!cn ? keyboard_check_pressed(ord("Z")) : gamepad_button_check_pressed(0,gp_stickr)
	var mira_co = [c_red,make_colour_rgb(0,200,0)]
	
	#endregion
	
	#region Modificação
	
	if (i<array_length(global.armas_mods[0])){

		for (var m=array_length(mods)-1;m>=0;m--){
		
			if (array_length(global.armas_modn[i][m])>0 and is_array(global.armas_mode[i][m][mods[m]])){
	
				if (global.armas_mode[i][m][mods[m]][3] = 11) grd			= m+1
				if (global.armas_mode[i][m][mods[m]][3] = 12) pente_ext		= m+1
				if (global.armas_mode[i][m][mods[m]][3] = 12) pente_ext		= m+1
				if (global.armas_mode[i][m][mods[m]][3] = 4	) silenciador	= m+1
	
			}
			
			var cabep = array_length(global.armas_modp[i][m])>0
			var pente = cabep and (m != 4 or (!recarregando and !cock) or modo = 1)
			var sprreal = pente and cabep and asset_get_type(global.armas_modp[i][m][mods[m]]) = asset_sprite
			
			if (sprreal){
				
				var mod_px = 0 
				var mod_py = 0
				
				#region Pext
				
				for (var md=0;md<array_length(pext);md++){
				
					if (array_length(pext[md])>4 and array_length(pext)>m and array_length(pext[m])>4 and pext[m][4] = 0)	mod_px += global.armas_modx[i][m][0]>pext[md][2] ? pext[md][0] : 0
					if (array_length(pext[md])>4 and array_length(pext)>m and array_length(pext[m])>4 and pext[m][4] = 0)	mod_py += global.armas_modx[i][m][1]>pext[md][3] ? pext[md][1] : 0
				
				}
			
				#endregion
				
				var mod_spr = global.armas_modp[i][m][mods[m]]
			
				var sprw = sprite_get_width  (mod_spr)
				var sprh = sprite_get_height (mod_spr)
											  
				var sprx = sprite_get_xoffset(mod_spr)
				var spry = sprite_get_yoffset(mod_spr)

				var mod_xx = global.armas_mode[i][m][mods[m]][0]
				var mod_xy = global.armas_mode[i][m][mods[m]][1]
			
				var ang = image_angle
			
	            if mod_xx !=0 or mod_xy !=0{
				
	                mod_xx = -10000000
					mod_xy = -10000000
				
	            }
                
				var mod_an = ang-90
				
				var mod_xm = lengthdir_x(mod_xy*image_xscale,mod_an		)
				var mod_ym = lengthdir_y(mod_xy*image_xscale,mod_an		)
				var mod_xo = lengthdir_x(mod_xx*image_xscale,image_angle) + mod_xm
				var mod_yo = lengthdir_y(mod_xx*image_xscale,image_angle) + mod_ym
			
				var mod_ii = max(modi[m],0)
				
				if (grd-1		= m) mod_ii	= !tirg
				if (pente_ext-1 = m) mod_ii	= !(cabep and ((!recarregando and !cock) or modo = 1))
				
				var mod_mx2 = lengthdir_x(mod_px*image_xscale,image_angle) + lengthdir_x(mod_py*image_xscale,mod_an)
				var mod_my2	= lengthdir_y(mod_px*image_xscale,image_angle) + lengthdir_y(mod_py*image_xscale,mod_an)
			
				var mod_x = x + mod_xo + mod_mx2 
				var mod_y = y + mod_yo + mod_my2
				
				var cano_calor = 255// - 255 / cano_quente_max * cano_quente
				
				var mod_cor = silenciador - 1 = m ? make_colour_rgb(255,cano_calor,cano_calor) : c_white
				
				sprite_set_offset(mod_spr,sprw/2,sprh/2)

				draw_sprite_ext(mod_spr,mod_ii,mod_x,mod_y,image_xscale,image_yscale,image_angle,mod_cor,1)
	
				sprite_set_offset(mod_spr,sprx,spry)
							   
			}
		}
	}
}
