randomise()

cade_alp = 0
tecla_abrir = ["F"		,gp_face2	]
tecla_texto = ["F"		,"B"		]
tecla_chuta = [vk_space	,gp_face2	]
pai = -4

abrindo_a_modificacao = function(){
	
	if (instance_exists(obj_player)){
		
		cade_alp = clamp(cade_alp,0,1)
	
		var alvo = instance_nearest(x,y,obj_player)
		var cn = alvo.controle
		var dist = point_distance(x,y,alvo.x,alvo.y)
		var dist_total = 96
		var tec_a = !cn ? keyboard_check_pressed(ord(tecla_abrir[cn])) : gamepad_button_check_pressed(0,tecla_abrir[cn])
	
		#region Efetivamente abrindo ela
		
		if (dist<dist_total) cade_alp += .05
		if (dist>dist_total) cade_alp -= .025
				 
		if (dist<dist_total and tec_a){
			
			pai = alvo
			
			global.pause = 2
			obj_camera.roo = 1
			
			var i = pai.armai
			var arm = pai.arma
			var qt = pai.qtd
			
			var mo = instance_create_layer(x,y,"Modificacao",obj_mod)
			mo.alp = 1
			mo.pai = pai
			mo.i = i
			
			array_copy(mo.mods_atual,0,arm.mods,0,array_length(arm.mods))
							
			for (var m=0;m<array_length(global.armas_mods[qt][i]);m++){
			
				var mod_i = global.armas_mods[qt][i][m]
				var ptmd = m
				var ptm1 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>18 ? global.armas_mode[i][m][mod_i][18] : 0
				var ptm2 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>19 ? global.armas_mode[i][m][mod_i][19] : 0
				var ptm3 = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][0]: 0
				var ptm4 = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][1]: 0
				var ptm5 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>21 ? global.armas_mode[i][m][mod_i][21] : 0
			
				mo.pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4,ptm5]
			
			}
		}	
	}
}
	