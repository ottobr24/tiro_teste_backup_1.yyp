if (!alp) exit;

cria_botoes()

enter = 0

var cn = gamepad_is_connected(0)

var mas_tec = keyboard_check_pressed(vk_right)	or gamepad_button_check_pressed(0,gp_padr)
var mes_tec = keyboard_check_pressed(vk_left)	or gamepad_button_check_pressed(0,gp_padl)
												
var cim_tec = keyboard_check_pressed(vk_up)		or gamepad_button_check_pressed(0,gp_padu)
var bai_tec = keyboard_check_pressed(vk_down)	or gamepad_button_check_pressed(0,gp_padd)
												
var mod_tec = (colidindo > -2 and (mouse_check_button_pressed(mb_left) and colidindo) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1))
	
#region Me mexendo nas modificações	

if (!lista and alp){
	
	#region Indo da esquerda pra direita
	
	if (mas_tec){
		
		#region Variaveis
		
		var px1 = array_length(global.armas_modx[i][index])>1 ? global.armas_modx[i][index][0] : -8
		var py1 = array_length(global.armas_modx[i][index])>1 ? global.armas_modx[i][index][1] : -8
		
		for (var md=0;md<array_length(pext);md++){
		
			if (array_length(pext[md])>4 and array_length(pext[index])>4 and pext[index][4] = 0 and array_length(global.armas_modx[i][index])>1) px1 += global.armas_modx[i][index][0]>pext[md][2] ? pext[md][0] : 0
			if (array_length(pext[md])>4 and array_length(pext[index])>4 and pext[index][4] = 0 and array_length(global.armas_modx[i][index])>1) py1 += global.armas_modx[i][index][1]>pext[md][3] ? pext[md][1] : 0
		
		}
					
		index+=1
		var qtd = index
		var foi = 0
		var pos = []
		var posi = -100
		var posdif = -100
		
		#endregion
		
		for (var p=0;p<array_length(global.armas_modx[i]);p++){
			
			var px2 = array_length(global.armas_modx[i][p])>1 ? global.armas_modx[i][p][0] : -9
			var py2 = array_length(global.armas_modx[i][p])>1 ? global.armas_modx[i][p][1] : -9
			
			#region NAO TA INDO (ELE É O PROBLEMA)
			
			//show_message(pext)
			
			#endregion
			
			if (p = 0){
			
				for (var m=0;m<array_length(global.armas_modx[i]);m++){
				
					pos[m][0] = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][0] : -9 
					pos[m][1] = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][1] : -9
					
					//show_message(pext)
					
					for (var md=0;md<array_length(pext);md++){
						
						if (m = 2){ 
							
							//show_message(md)
							//show_message(array_length(pext[md])>4)
							//show_message(array_length(pext[m])>4)
							//show_message(pext[p][4] = 0)
							//show_message(global.armas_modx[i][m])
							//if (array_length(global.armas_modx[i][m])>1) show_message(global.armas_modx[i][m][0]>pext[md][2])
							
						}
							
						if (array_length(pext[md])>4 and array_length(pext[m])>4 and pext[m][4] = 0 and array_length(global.armas_modx[i][m])>1) pos[m][0] += global.armas_modx[i][m][0]>pext[md][2] ? pext[md][0] : 0
						if (array_length(pext[md])>4 and array_length(pext[m])>4 and pext[m][4] = 0 and array_length(global.armas_modx[i][m])>1) pos[m][1] += global.armas_modx[i][m][1]>pext[md][3] ? pext[md][1] : 0
				
					}
					
					if (pos[m][0]>-6 and px1<pos[m][0] and ((px1-pos[m][0]>posdif)) and px1-pos[m][0]!=0){ 
					
						posdif = px1-pos[m][0]
						posi = m
						//show_message(string(px1) + "aaa")
						//show_message(string(pos[m][0]) + "aaa")
						//show_message(string(posdif) + "aaa")
				
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
		
		for (var md=0;md<array_length(pext);md++){
		
			if (array_length(pext[md])>4 and array_length(pext[index])>4 and pext[index][4] = 0 and array_length(global.armas_modx[i][index])>1) px1 += global.armas_modx[i][index][0]>pext[md][2] ? pext[md][0] : 0
			if (array_length(pext[md])>4 and array_length(pext[index])>4 and pext[index][4] = 0 and array_length(global.armas_modx[i][index])>1) py1 += global.armas_modx[i][index][1]>pext[md][3] ? pext[md][1] : 0
		
		}
			
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
					
					for (var md=0;md<array_length(pext);md++){
						
						if (m = 2){ 
							
							//show_message(md)
							//show_message(array_length(pext[md])>4)
							//show_message(array_length(pext[m])>4)
							//show_message(pext[p][4] = 0)
							//show_message(global.armas_modx[i][m])
							//if (array_length(global.armas_modx[i][m])>1) show_message(global.armas_modx[i][m][0]>pext[md][2])
							
						}
							
						if (array_length(pext[md])>4 and array_length(pext[m])>4 and pext[m][4] = 0 and array_length(global.armas_modx[i][m])>1) pos[m][0] += global.armas_modx[i][m][0]>pext[md][2] ? pext[md][0] : 0
						if (array_length(pext[md])>4 and array_length(pext[m])>4 and pext[m][4] = 0 and array_length(global.armas_modx[i][m])>1) pos[m][1] += global.armas_modx[i][m][1]>pext[md][3] ? pext[md][1] : 0
				
					}
					
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

#endregion

#region Variações e modificações

if (mas_tec){ 
	
	if (listan = 2) listan = 0
	if (listan = 1) listan = 0
	
	listan++
	
	listan = clamp(listan,0,2)
	
}

if (mes_tec){ 
	
	if (listan = 1) listan = 3
	if (listan = 2) listan = 1
	
	listan--
	
	listan = clamp(listan,0,2)
	
}

#endregion

#region Mudando de modificaçãp

if (lista){
	
	var arm = pai.arma
	
	mods_atual[lista-1]	= listai
		
	if (mod_tec){
		
		if (listan = 2){
		
			for (var s=0;s<array_length(mods_atual);s++){
				
				var cod0 = array_length(global.armas_mode[i][s])>0
				var cod1 = cod0 and array_length(global.armas_mode[i][s][mods_atual[s]])>2
				var cod2 = cod1 and is_array(global.armas_mode[i][s][mods_atual[s]][2])
				var cod3 = array_length(global.armas_mode[i][lista-1][listai]) > 2
				var cod4 = cod3 and array_length(global.armas_mode[i][lista-1][listai][2]) > 0
				
				var var1 = cod2 ? global.armas_mode[i][s][mods_atual[s]][2] : 0
				var var2 = cod4 > 0 ? global.armas_mode[i][lista-1][listai][2][arm.modi[lista-1]] : -10
				
				var cod5 = is_array(var1) ? achando_na_array(var1,var2)>-1 : 0
				
				if (cod5){ 
					
					arm.modi[s] = achando_na_array(var1,var2)//arm.modi[lista-1]
					global.armas_modi[ind][i][s] = achando_na_array(var1,var2)//arm.modi[lista-1]
		
				}
			}
		}
		
		if (global.dinheiro >= global.armas_modc[i][lista-1][mods_atual[lista-1]]){
			
			global.dinheiro -= global.armas_modc[i][lista-1][mods_atual[lista-1]]
			global.armas_moda[ind][i][lista-1][listai] = 1
			
		}
		
		for (var s=0;s<array_length(global.armas_moda[ind][i]);s++){
			
			if (is_array(global.armas_moda[ind][i][s])){
				
				if (global.armas_moda[ind][i][s][mods_atual[s]]){
					
					global.armas_mods[ind][i][s]	= mods_atual[s]
					arm.mods[s]						= mods_atual[s]
					
				}else{
				
					mods_atual[s] = arm.mods[s]	
				
				}
			}
		}
		
		lista = -1
		listai = 0
		listan = 0
		enter = 1
		
	}
	
	show_debug_message(i)
	
	if (cim_tec and lista){
	
		var arm = pai.arma
			
		if (array_length(pext)>lista-1) pext[lista-1] = 0
		if (listan=0) listai--
		if (listan=1) arm.modi[lista-1]--
		
		listai = clamp(listai	,0,array_length(global.armas_modp[i][lista-1])-1)
		
		arm.modi[lista-1] = clamp(arm.modi[lista-1]	,0,sprite_get_number(global.armas_modp[i][lista-1][listai])-1)
		global.armas_modi[ind][i][lista-1]		= arm.modi[lista-1]
		
		var mod_i = lista-1
				
		var m = listai
		
		var ptmd = lista-1
		var ptm1 = array_length(global.armas_mode[i][mod_i])>1 and array_length(global.armas_mode[i][mod_i][m])>18 ? global.armas_mode[i][mod_i][m][18] : 0
		var ptm2 = array_length(global.armas_mode[i][mod_i])>1 and array_length(global.armas_mode[i][mod_i][m])>19 ? global.armas_mode[i][mod_i][m][19] : 0
		var ptm3 = array_length(global.armas_modx[i][mod_i])>1 ? global.armas_modx[i][mod_i][0]: 0
		var ptm4 = array_length(global.armas_modx[i][mod_i])>1 ? global.armas_modx[i][mod_i][1]: 0
		var ptm5 = array_length(global.armas_mode[i][mod_i])>1 and array_length(global.armas_mode[i][mod_i][m])>21 ? global.armas_mode[i][mod_i][m][21] : 0
		
		pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4,ptm5]
			
	}
	
	if (bai_tec and lista){
		
		var arm = pai.arma
			
		if (array_length(pext)>lista-1) pext[lista-1] = 0
		if (listan=0)listai++
		if (listan=1)arm.modi[lista-1]++
		
		listai = clamp(listai	,0,array_length(global.armas_modp[i][lista-1])-1)
		
		arm.modi[lista-1] = clamp(arm.modi[lista-1]	,0,sprite_get_number(global.armas_modp[i][lista-1][listai])-1)
		global.armas_modi[ind][i][lista-1]		= arm.modi[lista-1]
		
		var mod_i = lista-1
					
		var m = listai
		
		var ptmd = lista-1
		var ptm1 = array_length(global.armas_mode[i][mod_i])>1 and array_length(global.armas_mode[i][mod_i][m])>18 ? global.armas_mode[i][mod_i][m][18] : 0
		var ptm2 = array_length(global.armas_mode[i][mod_i])>1 and array_length(global.armas_mode[i][mod_i][m])>19 ? global.armas_mode[i][mod_i][m][19] : 0
		var ptm3 = array_length(global.armas_modx[i][mod_i])>1  ? global.armas_modx[i][mod_i][0]: 0
		var ptm4 = array_length(global.armas_modx[i][mod_i])>1  ? global.armas_modx[i][mod_i][1]: 0
		var ptm5 = array_length(global.armas_mode[i][mod_i])>1 and array_length(global.armas_mode[i][mod_i][m])>21 ? global.armas_mode[i][mod_i][m][21] : 0
		
		pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4,ptm5]
		
	}
}

#endregion

#region Extras

rot = clamp(rot,-1,1)

#endregion
