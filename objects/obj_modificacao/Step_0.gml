i = global.arma
enter = 0

var cn = gamepad_is_connected(0)
var esc_tec = !cn ? keyboard_check_pressed(vk_escape)	: gamepad_button_check_pressed(0,gp_start)

var mas_tec = !cn ? keyboard_check_pressed(vk_right)	: gamepad_button_check_pressed(0,gp_padr)
var mes_tec = !cn ? keyboard_check_pressed(vk_left)		: gamepad_button_check_pressed(0,gp_padl)
var cim_tec = !cn ? keyboard_check_pressed(vk_up)		: gamepad_button_check_pressed(0,gp_padu)
var bai_tec = !cn ? keyboard_check_pressed(vk_down)		: gamepad_button_check_pressed(0,gp_padd)
var mod_tec = !cn ? keyboard_check_pressed(vk_enter)	: gamepad_button_check_pressed(0,gp_face1)
	
if (!lista and alp){
	
	#region Indo da esquerda pra direita
	
	if (mas_tec){
		
		var px1 = array_length(global.armas_modx[i][index])>1 ? global.armas_modx[i][index][0] : -8
		var py1 = array_length(global.armas_modx[i][index])>1 ? global.armas_modx[i][index][1] : -8
		
		index+=1
		var qtd = index
		var foi = 0
		var pos = []
		var posi = -100
		var posdif = -100
		
		for (var p=0;p<array_length(global.armas_modx[i]);p++){
			
			var px2 = array_length(global.armas_modx[i][p])>1 ? global.armas_modx[i][p][0] : -9
			var py2 = array_length(global.armas_modx[i][p])>1 ? global.armas_modx[i][p][1] : -9
			
			if (p = 0){
			
				for (var m=0;m<array_length(global.armas_modx[i]);m++){
				
					pos[m][0] = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][0] : -9 
					pos[m][1] = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][1] : -9
				
					if (pos[m][0]>-6 and px1<pos[m][0] and ((px1-pos[m][0]>posdif)) and px1-pos[m][0]!=0){ 
					
						//show_message(px1-pos[m][0])
						//show_message(posdif)
						posdif = px1-pos[m][0]
						posi = m
						//show_message(string(posi) + "aaa")
				
					}
				}
			}
			
			if (posi = p){
				
				//show_message(p)
				index = p
				foi = 1
				break;
				
			}
		}
		
		if (!foi){
			
			index-=1
			
		}
	}
	
	#endregion Indo Da esqureda pra direita
	
	#region Indo da direita pra esquerda
	
	if (mes_tec){
		
		var px1 = array_length(global.armas_modx[i][index])>1 ? global.armas_modx[i][index][0] : -8
		var py1 = array_length(global.armas_modx[i][index])>1 ? global.armas_modx[i][index][1] : -8
		
		index-=1
		var qtd = index
		var foi = 0
		var pos = []
		var posi = 100
		var posdif = 100
		
		for (var p=0;p<array_length(global.armas_modx[i]);p++){
			
			var px2 = array_length(global.armas_modx[i][p])>1 ? global.armas_modx[i][p][0] : -9
			var py2 = array_length(global.armas_modx[i][p])>1 ? global.armas_modx[i][p][1] : -9
			
			if (p = 0){
			
				for (var m=0;m<array_length(global.armas_modx[i]);m++){
				
					pos[m][0] = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][0] : -9 
					pos[m][1] = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][1] : -9
					
					if ((pos[m][0]>-6 and px1>pos[m][0] and ((px1-pos[m][0]<posdif)) and px1-pos[m][0]!=0) or (index=-1 and array_length(global.armas_modx[i][0])<1)){ 
						
						posdif = px1-pos[m][0]
						posi = m
				
					}
				}
			}
			
			if (posi = p){
				
				//show_message(p)
				index = p
				foi = 1
				break;
				
			}
		}
		
		if (!foi){
			
			index+=1
			
		}
	}
	
	#endregion Indo pra direita pra esquerda
	
	#region Indo pra baixo
	
	if (bai_tec){
		
		var px1 = array_length(global.armas_modx[i][index])>1 ? global.armas_modx[i][index][0] : -8
		var py1 = array_length(global.armas_modx[i][index])>1 ? global.armas_modx[i][index][1] : -8
		
		index+=1
		var qtd = index
		var foi = 0
		var pos = []
		var posi = -100
		var posdif = -100
		
		for (var p=0;p<array_length(global.armas_modx[i]);p++){
			
			var px2 = array_length(global.armas_modx[i][p])>1 ? global.armas_modx[i][p][0] : -9
			var py2 = array_length(global.armas_modx[i][p])>1 ? global.armas_modx[i][p][1] : -9
			
			if (p = 0){
			
				for (var m=0;m<array_length(global.armas_modx[i]);m++){
				
					pos[m][0] = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][0] : -9 
					pos[m][1] = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][1] : -9
				
					if ((pos[m][0]>-6 and py1<pos[m][1] and ((py1-pos[m][1]>posdif)) and py1-pos[m][1]!=0) or (index=-1 and array_length(global.armas_modx[i][0])<1)){ 
					
						//show_message(px1-pos[m][0])
						//show_message(posdif)
						posdif = px1-pos[m][0]
						posi = m
						//show_message(string(posi) + "aaa")
				
					}
				}
			}
			
			if (posi = p){
				
				//show_message(p)
				index = p
				foi = 1
				break;
				
			}
		}
		
		if (!foi){
			
			index-=1
			
		}
	}
	
	#endregion
	
	#region Indo pra cima
	
	if (cim_tec){
		
		var px1 = array_length(global.armas_modx[i][index])>1 ? global.armas_modx[i][index][0] : -8
		var py1 = array_length(global.armas_modx[i][index])>1 ? global.armas_modx[i][index][1] : -8
		
		index-=1
		var qtd = index
		var foi = 0
		var pos = []
		var posi = 100
		var posdif = 100
		
		for (var p=0;p<array_length(global.armas_modx[i]);p++){
			
			var px2 = array_length(global.armas_modx[i][p])>1 ? global.armas_modx[i][p][0] : -9
			var py2 = array_length(global.armas_modx[i][p])>1 ? global.armas_modx[i][p][1] : -9
			
			if (p = 0){
			
				for (var m=0;m<array_length(global.armas_modx[i]);m++){
				
					pos[m][0] = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][0] : -9 
					pos[m][1] = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][1] : -9
				
					if ((pos[m][0]>-6 and py1>pos[m][1] and ((py1-pos[m][1]<posdif)) and py1-pos[m][1]!=0) or (index=-1 and array_length(global.armas_modx[i][0])<1)){ 
					
						posdif = px1-pos[m][0]
						posi = m
				
					}
				}
			}
			
			if (posi = p){
				
				//show_message(p)
				index = p
				foi = 1
				break;
				
			}
		}
		
		if (!foi){
			
			index+=1
			
		}
	}
	#endregion
}

#region Troca armas

if (alp and (keyboard_check_pressed(ord("Q")) or keyboard_check_pressed(ord("E")))){
    
    if (keyboard_check_pressed(ord("Q"))) global.arma--
    if (keyboard_check_pressed(ord("E"))) global.arma++
        
    global.arma %= array_length(global.armas_nome)
	if (global.arma<0) global.arma = array_length(global.armas_nome)-1
	
    if (instance_exists(obj_player.arma))obj_player.arma.i = global.arma
	pext = []
	listan=0
	
}

#endregion

#region Sai e entra do menu

if (esc_tec){ 
	
	listan=0
	alp=!alp
	lista = -1
	
	if (i<array_length(global.armas_mods)){
	
		for (var m=0;m<array_length(global.armas_mods[i]);m++){
		
			var mod_i = global.armas_mods[i][m]
			var ptmd = m
			var ptm1 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>18 ? global.armas_mode[i][m][mod_i][18] : 0
			var ptm2 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>19 ? global.armas_mode[i][m][mod_i][19] : 0
			var ptm3 = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][0]: 0
			var ptm4 = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][1]: 0
		
			pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4]
		
		}
	}
	
	window_set_cursor(cr_none)
	
}

#endregion

#region Variações e modificações

if (mas_tec){ 
	
	listan=1
	
}

if (mes_tec){ 
	
	listan=0
	
}

#endregion

#region Mudando de modificaçãp

if (lista){

	global.armas_mods[i][lista-1]		= listai
	modx[lista-1][0]	= global.armas_modx[i][lista-1][0]
	modx[lista-1][1]	= global.armas_modx[i][lista-1][1]
		
	if (mod_tec){
		
		#region Pontos ids
			
		var ids = []
		
		for (var m=0;m<array_length(global.armas_mode[i]);m++){
			
			var btmd = array_length(ids)
			ids[m][0] = -2
				
			if (array_length(global.armas_mode[i][m])>0){	
			
				var btmd2 = 0
				var mod_i = global.armas_mods[i][m] //modificador usado
				var ar1 = array_length(global.armas_mode[i][m])>0 //verifica se tem algo na array
				var ar2 = ar1 and is_array(global.armas_mode[i][m][mod_i]) //verifica se tem uma array na array
				var ar3 = ar2 and array_length(global.armas_mode[i][m][mod_i])>3 //verifica se na segunda array tem o id do modificador
				ids[btmd][btmd2] = ar3 ? global.armas_mode[i][m][mod_i][3] : -2
				
			}
		}
		
		#endregion
		
		#region Achando os bloqueados
		
		var bloqs = []
		
		for (var m=0;m<array_length(global.armas_modp[i][lista-1]);m++){
			
			var mod_i = m //modificador usado
			var ar1 = array_length(global.armas_mode[i][lista-1])>0 //verifica se tem algo na array
			var ar2 = ar1 and is_array(global.armas_mode[i][lista-1][mod_i]) //verifica se tem uma array na array
			var ar3 = ar2 and array_length(global.armas_mode[i][lista-1][mod_i])>20 //verifica se na segunda array tem o id do modificador
			var btmd = array_length(bloqs)
			//show_message(global.armas_mode[i])
			bloqs[btmd] = ar3 ? global.armas_mode[i][lista-1][mod_i][20] : -3
			
		}
		
		#endregion
		
		var acha = 0//achando_na_array(ids[lista-1],bloqs[l])>-1
		
		for (var a =0;a<array_length(ids);a++){
			
			if (achando_na_array(ids[a],bloqs[listai])>-1){ 
				
				acha = 1
				
			}
		}
		
		if (!acha){
		
			global.armas_mods[i][lista-1]		= listai
			modx[lista-1][0]	= global.armas_modx[i][lista-1][0]
			modx[lista-1][1]	= global.armas_modx[i][lista-1][1]
			lista = -1
			listai = 0
			listan = 0
			enter = 1
			
		}else{
			
			show_message("erro")
			
		}
	}
	
	if (cim_tec and lista){
	
		if (array_length(pext)>lista-1) pext[lista-1] = 0
		if (!listan)listai--
		if ( listan)global.armas_modi[i][lista-1] --
		
		listai = clamp(listai	,0,array_length(global.armas_modp[i][lista-1])-1)
		global.armas_modi[i][lista-1] = clamp(global.armas_modi[i][lista-1]	,0,sprite_get_number(global.armas_modp[i][lista-1][listai])-1)
		
		var mod_i = lista-1
				
		var m = listai
		
		var ptmd = lista-1
		var ptm1 = array_length(global.armas_mode[i][mod_i])>1 and array_length(global.armas_mode[i][mod_i][m])>18 ? global.armas_mode[i][mod_i][m][18] : 0
		var ptm2 = array_length(global.armas_mode[i][mod_i])>1 and array_length(global.armas_mode[i][mod_i][m])>19 ? global.armas_mode[i][mod_i][m][19] : 0
		var ptm3 = array_length(global.armas_modx[i][mod_i])>1 ? global.armas_modx[i][mod_i][0]: 0
		var ptm4 = array_length(global.armas_modx[i][mod_i])>1 ? global.armas_modx[i][mod_i][1]: 0
		pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4]
		
	}
	
	if (bai_tec and lista){
		
		if (array_length(pext)>lista-1) pext[lista-1] = 0
		if (!listan)listai++
		if ( listan)global.armas_modi[i][lista-1]++
		
		listai = clamp(listai	,0,array_length(global.armas_modp[i][lista-1])-1)
		global.armas_modi[i][lista-1] = clamp(global.armas_modi[i][lista-1]	,0,sprite_get_number(global.armas_modp[i][lista-1][listai])-1)
		
		var mod_i = lista-1
					
		var m = listai
		
		var ptmd = lista-1
		var ptm1 = array_length(global.armas_mode[i][mod_i])>1 and array_length(global.armas_mode[i][mod_i][m])>18 ? global.armas_mode[i][mod_i][m][18] : 0
		var ptm2 = array_length(global.armas_mode[i][mod_i])>1 and array_length(global.armas_mode[i][mod_i][m])>19 ? global.armas_mode[i][mod_i][m][19] : 0
		var ptm3 = array_length(global.armas_modx[i][mod_i])>1  ? global.armas_modx[i][mod_i][0]: 0
		var ptm4 = array_length(global.armas_modx[i][mod_i])>1  ? global.armas_modx[i][mod_i][1]: 0
		pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4]
		
	}
}

#endregion

#region Extras

rot = clamp(rot,-1,1)
global.pause  = alp
obj_camera.roo= alp

#endregion