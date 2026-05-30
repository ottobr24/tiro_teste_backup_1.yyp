#region Extras

if (array_length(global.armas_mods) = 0){

	for (var i1=0;i1<2;i1++){
	
		for (var i2=0;i2<array_length(global.armas_modn);i2++){
	
			for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
				
				global.armas_mods[i1][i2][i3] = 0
				
			}
		}
	}

	for (var i1=0;i1<2;i1++){
	
		for (var i2=0;i2<array_length(global.armas_modn);i2++){
	
			for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
	
				global.armas_modi[i1][i2][i3] = 0
	
			}
		}
	}
	
	for (var i1=0;i1<2;i1++){
	
		for (var i2=0;i2<array_length(global.armas_modn);i2++){
	
			for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
	
				for (var i4=0;i4<array_length(global.armas_modn[i2][i3]);i4++){
					
					global.armas_moda[i1][i2][i3][i4] = !i4
	
				}
			}
		}
	}
}

if (file_exists(global.save_ling				)) carregando_idioma()
if (file_exists(global.saves[global.savei][0]	)) carregando()

if (file_exists(global.save_ling) or file_exists(global.saves[global.savei][0]	)){

	for (var i1=0;i1<2;i1++){

		for (var i2=0;i2<array_length(global.armas_modn);i2++){
			
			var foi = 0
			
			for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
				
				if (global.armas_mods[i1][i2][i3] >= array_length(global.armas_modn[i2][i3])){
					
					global.armas_mods[i1][i2][i3] = clamp(global.armas_mods[i1][i2][i3],0,array_length(global.armas_modn[i2][i3])-1)
					
				}
				
				if (array_length(global.armas_mods[i1][i2])<=i3){
			
					global.armas_mods[i1][i2][i3] = 0
					foi = 1
					
				}
			}
		}
	}
	
	for (var i1=0;i1<2;i1++){
	
		for (var i2=0;i2<array_length(global.armas_modn);i2++){
	
			for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
	
				if (array_length(global.armas_modi[i1][i2])<=i3){
			
					global.armas_modi[i1][i2][i3] = 0
	
				}
			}
		}
	}
	
	for (var i1=0;i1<2;i1++){
	
		for (var i2=0;i2<array_length(global.armas_modn);i2++){
	
			for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
	
				for (var i4=0;i4<array_length(global.armas_modn[i2][i3]);i4++){
					
					if (array_length(global.armas_mods[i1][i2][i3])<=i4){
					
						global.armas_moda[i1][i2][i3][i4] = 1
					
					}
				}
			}
		}
	}
}

#endregion

#region Variaveis

#region Textos gerais

#region Configuração

controles = ["W","S","A","D"]
volumes = [0,0]
resolucao = [0,0]
muda_controle = -1
teste = 0

#endregion

#region Textos

texto_cor = 0
texto_index = 0

textos_cores = [[c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white],[c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white],[c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white],[c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white],[c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white],[c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white],[c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white],[c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white],[c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white],[c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white]]

textos = global.textos[texto.menu]

texto_mostrado = textos[global.configs[2][0]][texto_index]
textos_mostrar = [0]

#endregion

#region Textos extras

controles_texto = ["Controle atual: ","Current control: "]

efeitos_texto = global.textos[texto.shake]

textos_resol = global.textos[texto.resol]

textos_ajuda = [

["","","Para mexer no menu","","Para alterar o menu"],
["","","To move the menu","","To change the menu"]

]

idiomas = global.textos[texto.idiom]

#endregion

#region Menu Controle

vel = 0
equipado = 0
reseta = 1
index = 0
ti=0
muda_save = 0
texto_diminuir=-1
gp = [0,0,0,0]
resol = 

[

[
[640,360],[1024,576],[1280,720],[1536,864],[1792,1008],[1920,1080]
],

[
[640,480],[800,600],[1024,768]
]

]

display_set_gui_size(resol[global.configs[3][1]][global.configs[3][2]][0],resol[global.configs[3][1]][global.configs[3][2]][1])

#endregion

#region Informações

draw_set_font(fnt_menu_2)

var gui_h		= resol[global.configs[3][1]][global.configs[3][2]][1]
var texto_yesc	= gui_h / 768
var texto_margy	= (string_height("I") + 20) * texto_yesc
var texto_tmd	= array_length(texto_mostrado)
var y1			= gui_h/2-(texto_tmd/2)*texto_margy
		
draw_set_font(-1)
		
textos_y	= [y1,y1,y1,y1,y1,y1,y1,y1,y1,y1,y1]
texto_x = [0,0]
texto_y2 = [0,0]
textos_alp = []
textos_esc = []
texto_acerto_alp = []
textos_acerto_alp = []
seq=0
seqn=0

#endregion

#region Barra

barra_y = -880

#endregion

#endregion

#endregion

#region Setando umas coisas

pai = id

gamepad_set_axis_deadzone(0,.5)
layer_sequence_create("Transicao",0,0,seq_transicao_abrindo)

var i = global.arma
						
arma = instance_create_layer(x,y,layer,obj_arma)
arma.pai = id

arma.equip = 0

arma.mods = [] array_copy(arma.mods,0,global.armas_mods[0][i],0,array_length(global.armas_mods[0][i]))
arma.modi = [] array_copy(arma.modi,0,global.armas_modi[0][i],0,array_length(global.armas_modi[0][i]))

window_set_size(resol[global.configs[3][1]][global.configs[3][2]][0],resol[global.configs[3][1]][global.configs[3][2]][1])
window_set_fullscreen(global.configs[3][0])

global.pause = 0
global.player_ord = 0
global.zumbi = 0
global.rodada = 1

#endregion

#region Metodos

#region Draws

mudando_os_controles = function(){
	
	var win_tmd = [[1280,720],[1408,792],[1536,864],[1664,936],[1792,1008],[1920,1080]]
	var menu_tmd	= array_length(textos_mostrar)-1
	var menu_index	= textos_mostrar[menu_tmd]
	
	if (muda_controle){
		
		#region Mudando o controle
		
		//if (menu_index == 2){
		//
		//	var gui_w = display_get_gui_width ()
		//	var gui_h = display_get_gui_height()
		//
		//	var texto_xesc	= gui_w / 1366
		//	var texto_yesc	= gui_h / 768
		//
		//	var y1 = 100*texto_yesc
		//
		//	draw_set_halign(1)
		//	draw_set_valign(1)
		//	draw_set_font(fnt_menu_2)
		//
		//	draw_text_transformed(gui_w/2,y1,controles_texto[global.configs[2][0]] + global.configs[0][index],texto_xesc/1.25,texto_yesc/1.25,0)
		//
		//	draw_set_font(-1)
		//	draw_set_halign(-1)
		//	draw_set_valign(-1)
		//
		//	if (keyboard_check_released(vk_anykey) and !keyboard_check_released(vk_enter)){
		//	
		//		var let = string_upper(keyboard_lastchar)
		//		var tmd = array_length(global.configs[0])
		//	
		//		for (var i=0;i<tmd;i++){
		//		
		//			if (i==tmd-1 and global.configs[0][i]!=let){
		//	
		//				global.configs[0][index] = let
		//				muda_controle = -1
		//		
		//			}else if (global.configs[0][i]=let){
		//			
		//				////show_message("Ja esta em uso")
		//				break;
		//			
		//			}
		//		}
		//	}
		//}
		
		#endregion
		
		if (texto_cor!=0){
			
			textos_cores[ti][index] = texto_cor
			
		}
	}
}

desenha_texto = function(){
	
	#region Variaveis e fonte
	
	draw_set_font(fnt_menu_2)
	draw_set_halign(1)
	
	var gui_w = display_get_gui_width()
	var gui_h = display_get_gui_height()
	
	static textos_alp = []
	static textos_esc = []
	static textos_setas = [0,0,0,1,1,1,0,0]
	
	var textos_mostrar_tmd = array_length(textos_mostrar) 
	var texto_alp2 = .1*(textos_mostrar_tmd-1)
	var texto_esc2  = .1*(textos_mostrar_tmd-1)
	
	var ordemx = 0
	var ordemy = 0
	
	var esquerda	= (keyboard_check_pressed(vk_left)	or gamepad_button_check_pressed(0,gp_padl) or gp[1]<0)
	var direita		= (keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr) or gp[1]  )
	
	#endregion
	
	for (var t = 0;t<textos_mostrar_tmd;t++){
		
		if (textos_mostrar_tmd>1){
			
			ordemx = t=0 ? -1 : 1
			
		}
		
		#region Textos
		
		ti = textos_mostrar[t]
		
		if ((array_length(textos_alp)<=ti or textos_alp[ti] == 0) or (texto_diminuir = ti)){
			
			textos_alp[ti] = [0,0,0,0,0,0,0,0,0]
			textos_esc[ti] = [0,0,0,0,0,0,0,0,0]
			textos_acerto_alp[ti] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			texto_acerto_alp[ti] =  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			texto_diminuir = -1
			
		}
		
		texto_mostrado = textos[global.configs[2][0]][ti]
		
		var texto_xesc	= gui_w / 1366
		var texto_yesc	= gui_h / 768
		var texto_margy	= (string_height("I") + 20) * texto_yesc
		var texto_margx	= (gui_w*.25)*ordemx
		var texto_tmd	= array_length(texto_mostrado)
		var x1 = gui_w/2
		var x2 = 40* texto_xesc
		var x3 = x1// + (gui_w*.2)
		
		var y1 = textos_y[0]
		
		var textos_x	= [x1,x1,x3,x3,x3,x3,x1,x1,x1,x1,x1]
		
		if (array_length(texto_x) < array_length(textos_x)){ 
			
			texto_x = textos_x // array_copy(texto_x,0,textos_x,0,array_length(textos_x))
			texto_y2 = array_create(array_length(textos_y),-100)
			
			for (var i=0;i<array_length(textos_x);i++){
			
				if (textos_x[i] == x1){
				
					texto_y2[i] = y1
				
				}
			}
		}
		
		if (ti = 6){ 
			
			if (texto_x[t]=x1){
			
				//show_message(string(texto_x[ti]) + "aaaaa")
		
			}
		}
		
		texto_x[t] = lerp(texto_x[t],textos_x[ti]+texto_margx,.1)
		texto_y2[ti] = lerp(texto_y2[ti],textos_y[ti],.1)
		
		#endregion
		
		#region Corrigindo o textos_y da mudança de resolução
		
		if ((achando_na_array(textos_mostrar,5)>-1 and (direita!=0 or esquerda!=0) and textos_y[ti] < gui_h) or reseta){ 
			
			if (t!=1){
			
				textos_y[ti] = gui_h/2-(texto_tmd/2)*texto_margy+texto_margy 
				
			}else{
				
				textos_y[ti] = (gui_h+525)*texto_yesc
				
			}
		}
		
		#endregion
		
		for (var i=0;i<texto_tmd;i++){
			
			var texto = texto_mostrado[i]
			
			var texto_w = string_width (texto) /2 * textos_esc[ti][i]
			var texto_h = string_height(texto) 
			
			var texto_y = texto_y2[ti] + texto_margy * i
			var texto_alp = .6-texto_alp2
			
			var texto_esc = texto_xesc//(1.-texto_esc2)*texto_xesc
			
			var mox = device_mouse_x_to_gui(0)
			var moy = device_mouse_y_to_gui(0)
			
			var texto_marg = -texto_h/2
			
			if (point_in_rectangle(mox,moy,texto_x[t]-texto_w,texto_y-texto_h-texto_marg,texto_x[t]+texto_w,texto_y+texto_h)){
			
				index = i
			
			}
		
			if (t = textos_mostrar_tmd-1){
			
				if (i == index){
			
					texto_alp+=.4
			
				}
			}
			
			draw_set_color(textos_cores[ti][i])
			draw_set_alpha(textos_alp[ti][i])
			
			draw_set_halign(1)
			draw_text_transformed(texto_x[t],texto_y,texto,textos_esc[ti][i],textos_esc[ti][i],0)
			
			draw_set_color(-1)
			draw_set_alpha(1)
			
			textos_alp[ti][i] = lerp(textos_alp[ti][i],texto_alp,0.1)
			textos_esc[ti][i] = lerp(textos_esc[ti][i],texto_esc,0.1)
			
			textos_cores[ti][i] = c_white //resetando a cor
			
		}
		
		texto_alp2-=.1
		texto_esc2-=.1*texto_xesc
		ordemx = 0
		
	}
	
	draw_set_font  (-1)
	draw_set_halign(-1)
	reseta = 0
	
}

desenha_a_barra = function(spr = spr_barra){
	
	var gui_w = display_get_gui_width()
	var gui_h = display_get_gui_height()
	var spr_w = sprite_get_width (spr)
	var spr_h = sprite_get_height(spr)
	
	var _x = gui_w/2
	
	var escw = gui_w / 1366//* spr_w
	var esch = gui_h / 768 //* spr_h
	var ys  = [-esch*spr_h,gui_h/2]
	
	var menu_tmd = array_length(textos_mostrar)-1
	var menu_index = textos_mostrar[menu_tmd]
	
	barra_y = lerp(barra_y,ys[sign(menu_tmd)],0.1)
	
	draw_sprite_ext(spr,0,_x,barra_y,escw,esch,0,c_white,1)
	
}

#endregion

colocando_o_controle = function(imputs=[gp_axislv,gp_axislh]){
	
	static timer_controle	= 0
	var tempo_controle		= 15
	
	if (gamepad_is_connected(0) and !timer_controle){
		
		gp = array_create(array_length(imputs),0)
	
		for (var i=0;i<array_length(imputs);i++){
		
			gp[i] = gamepad_axis_value(0,imputs[i])
		
		}
		
		if (gp[0]!=0 or gp[1]!=0)timer_controle = tempo_controle
		
	}
	
	timer_controle--
	
}

adicionando_coisas_em_arrays = function(array,pos1,pos2,val){
	
	var array2 = []
	//show_message(array2)
	
	for (var ind =0;ind<array_length(idiomas);ind++){
	
		array2[ind] = copiando_array(array,ind,5)
	
	}
	//array_copy(array2,0,array,0,array_length(array))
	
	//array_
	
	for (var i=0;i<array_length(pos1);i++){
	
		var p1 = pos1[i]
		var p2 = pos2[i]
		array2[global.configs[2][0]][p1][p2]+=string(val[i])
	
	}
	
	//show_message(array2)
	//show_message(array)
	return array2
	
}

resetando_o_texto = function(){
	
	static saves = ["","","",""]
	
	if (!muda_save){
		
	}
	
	textos = adicionando_coisas_em_arrays(global.textos[texto.menu],[2,2,3,4,5,5,5],[0,1,0,0,0,1,2],[global.configs[0][0],global.configs[0][1],efeitos_texto[global.configs[2][0]][global.configs[1][0]],idiomas[global.configs[2][0]],textos_resol[global.configs[2][0]][0][global.configs[3][0]],textos_resol[global.configs[2][0]][1][global.configs[3][1]],textos_resol[global.configs[2][0]][2][global.configs[3][1]][global.configs[3][2]]])
	
}

resetando_o_texto()

dando_instrucoes = function(yy1){
	
	static y1 = yy1
	static y2 = yy1
	static y3 = yy1+32
	static timer_comecar = 60*.1
	
	var ajuda = static_get(desenha_texto).textos_setas[ti]
	var tmd = 3+2*ajuda
	var gui_w = display_get_gui_width()
	var gui_h = display_get_gui_height()
		
	var texto_xesc	= gui_w / 1366

	var line_margy = 5*texto_xesc
	
	timer_comecar--
	
	if (timer_comecar<=0){
		
		y1 = lerp(y1,gui_h*.875,0.1)
		y2 = lerp(y2,gui_h*.875,0.1)
		
		if (y2<gui_h*.90){
			
			y3 = lerp(y3,gui_h*(.875+(.125/3)),.1)
			
		}
	}
	
	for (var i=0;i<tmd;i++){
		
		var txt_tmd = string_width(textos_ajuda[global.configs[2][0]][2])
		var lar = sprite_get_width(spr_setas)
		var esc = lar * texto_xesc
		var text_marg = (lar/2 * texto_xesc) + (esc*1.25)*1
		var _x = i<3 ? (lar/2 * texto_xesc) + (esc*1.25)*i : ((lar/2 * texto_xesc) + (esc*1.25)*i) + txt_tmd*1.25
		
		draw_sprite_stretched(spr_setas,i,_x,y3,esc,esc)
		
		draw_text_transformed(_x+text_marg,y3,textos_ajuda[global.configs[2][0]][i],texto_xesc,texto_xesc,0)
			
	}
	
	draw_rectangle(0,y1+line_margy,gui_w,y2,0)
	
}

usando_o_menu = function(){
	
	#region Variaveis
	
	resetando_o_texto()
	
	static mudando_texto = []
	
	var gui_w = display_get_gui_width()
	var gui_h = display_get_gui_height()
	
	draw_set_font(fnt_menu_2)
	
	var texto_yesc	= gui_h / 768
	var texto_margy	= (string_height("I") + 20) * texto_yesc
	var texto_tmd	= array_length(texto_mostrado)
	var y1 = gui_h/2-(texto_tmd/2)*texto_margy
	
	var x1 = gui_w/2
	var x2 = 40* texto_yesc
	var x3 = x1// + (gui_w*.2)
	
	var textos_x	= [x1,x1,x3,x3,x3,x3,x1,x1,x1,x1,x1]
	
	draw_set_font(-1)
	
	var menu_tmd = array_length(textos_mostrar)-1
	var menu_index = textos_mostrar[menu_tmd]
	
	var cima		= (keyboard_check_pressed(vk_up)	or gamepad_button_check_pressed(0,gp_padu) or gp[0]<0)* sign(!muda_controle)
	var baixo		= (keyboard_check_pressed(vk_down)	or gamepad_button_check_pressed(0,gp_padd) or gp[0]  )* sign(!muda_controle)
	var esquerda	= (keyboard_check_pressed(vk_left)	or gamepad_button_check_pressed(0,gp_padl) or gp[1]<0)* sign(!muda_controle)
	var direita		= (keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr) or gp[1]  )* sign(!muda_controle)
	var enter		= (keyboard_check_pressed(vk_enter)	or gamepad_button_check_pressed(0,gp_face1) or mouse_check_button_pressed(mb_left)) * sign(!muda_controle)
	
	#endregion
	
	#region Controlando
	
	#region Mudando de pos
	
	if (baixo) index++
	if (cima)   index--
	
	if (index=array_length(texto_mostrado)) index=0
	if (index<0) index=array_length(texto_mostrado)-1
	
	if ((keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face1)) * sign(muda_controle) and !enter){ 
		
		muda_controle=-1
		
	}
	
	#endregion
	
	#region Usando o menu
	
	if (enter){
		
		switch(menu_index){
			
			#region Inicio
			
			case 0:
			
				switch(index){
					
					case 0:
						
						textos_mostrar = [0,6]
				
					break
					
					case 1:
						
						textos_mostrar = [8]
						
						var i = global.arma
						
						var arm = arma
			
						var mo = instance_create_layer(x,y,layer,obj_mod)
						mo.alp = 1
						mo.pai = pai
						mo.i = i
				
						array_copy(mo.mods_atual,0,arm.mods,0,array_length(arm.mods))
							
						for (var m=0;m<array_length(global.armas_mods[0][i]);m++){
						
							var mod_i = global.armas_mods[0][i][m]
							var ptmd = m
							var ptm1 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>18 ? global.armas_mode[i][m][mod_i][18] : 0
							var ptm2 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>19 ? global.armas_mode[i][m][mod_i][19] : 0
							var ptm3 = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][0]: 0
							var ptm4 = array_length(global.armas_modx[i][m])>1 ? global.armas_modx[i][m][1]: 0
							var ptm5 = array_length(global.armas_mode[i][m])>1 and array_length(global.armas_mode[i][m][mod_i])>21 ? global.armas_mode[i][m][mod_i][21] : 0
						
							mo.pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4,ptm5]
						
						}
						
					break;
			
					case 2:
				
						textos_mostrar = [0,1]
				
					break;
			
					case 3:
				
						game_end()
				
					break;
			
				}
			
			break;
			
			#endregion
			
			#region Configurações
			
			case 1:
			
				switch(index){
			
					case 0:
						
						textos_mostrar = [0,1,2]
				
					break;
					
					
					case 1:
						
						textos_mostrar = [0,1,3]
				
					break;
			
					case 2:
				
						textos_mostrar = [0,1,4]
				
					break;
			
					case 3:
				
						textos_mostrar = [0,1,5]
				
					break;
			
					case 4:
				
						textos_mostrar = [0]
						salvando_idioma()
				
					break;
			
				}
			
			break;
			
			#endregion
			
			#region Sons
			
			case 2:
			
				switch(index){
			
					case 2:
				
						mudando_texto = [0,1]
				
					break;
					
					default:
						
						muda_controle = index+1
						texto_cor = c_yellow
						
					break;
					
				}
			
			break;
			
			#endregion
		
			#region Efeitos
			
			case 3:
			
				switch(index){
			
					case 1:
				
						mudando_texto = [0,1]
				
					break;
					
					default:
						
						muda_controle = index+1
						texto_cor = c_yellow
						
					break;
					
				}
			
			break;
			
			#endregion
			
			#region Idiomas
			
			case 4:
			
				switch(index){
				
					case 1:
				
						mudando_texto = [0,1]
				
					break;
					
					default:
						
						muda_controle = index+1
						texto_cor = c_yellow
						
					break;
					
				}
			
			break;
			
			#endregion
		
			#region Resolução
			
			case 5:
			
				switch(index){
			
					case 3:
				
						mudando_texto = [0,1]
				
					break;
					
					default:
						
						muda_controle = index+1
						texto_cor = c_yellow
						
					break;
					
				}
			
			break;
			
			#endregion
			
			#region Modos
			
			case 6:
			
				switch(index){
			
					case 0:
					
						salvando()
						
						global.destino = rm_zumbi
						seq = layer_sequence_create("Transicao",0,0,seq_transicao_fechando)
						global.zumbi = 1
						global.spawn_aleatorio = 1
						global.arma = 0
						
						for (var a=0;a<array_length(global.armas_nome);a++){
				
							global.armas_aval[a] = 1
				
						}
						
						for (var i1=0;i1<2;i1++){
	
							for (var i2=0;i2<array_length(global.armas_modn);i2++){
	
								for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
				
									global.armas_mods[i1][i2][i3] = 0
				
								}
							}

							for (var i2=0;i2<array_length(global.armas_modn);i2++){
	
								for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
	
									global.armas_modi[i1][i2][i3] = 0
	
								}
							}
							
							for (var i2=0;i2<array_length(global.armas_modn);i2++){
	
								for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
	
									for (var i4=0;i4<array_length(global.armas_modn[i2][i3]);i4++){
					
										if (array_length(global.armas_mods[i1][i2][i3])<=i4){
					
											global.armas_moda[i1][i2][i3][i4] = !i4
					
										}
									}
								}
							}
						}
						
					break;
					
					case 1:
						
						textos_mostrar = [0,7]
						
					break;
					
					default:
					
						textos_mostrar = [0]
						
					break;
					
				}
			
			break;
			
			#endregion
			
			#region Levels
			
			case 7:
			
				switch(index){
			
					case 1:
						
						textos_mostrar = [0,6]
						
					break;
					
					default:
				
						global.destino = global.levels[index]
						seq = layer_sequence_create("Transicao",0,0,seq_transicao_fechando)
						salvando()
		
					break;
					
				}
			
			break;
			
			#endregion
			
		}
		
		#region Ajudando
		
		var text = textos[global.configs[2][0]][textos_mostrar[array_length(textos_mostrar)-1]]
		
	#region Muda tudo no texto
		
		//show_message(muda_save)
		
		if (muda_controle==-1 and !muda_save){
			
			//show_message("muda controle = -1 " + string(array_length(mudando_texto)))
			//show_message("menu tmd  " + string(array_length(menu_tmd)))
			
			if (array_length(mudando_texto)=0){
		
				if (array_length(textos_mostrar)-1<menu_tmd){ //diminui
					
					var esc = textos_esc
					
					texto_diminuir = menu_index
					menu_tmd = array_length(textos_mostrar)-1
					menu_index = textos_mostrar[menu_tmd]
				
					//show_message("teste 0")
				
					if (menu_tmd>0){
					
						texto_tmd	= array_length(text)
						y1 = gui_h/2-(texto_tmd/2)*texto_margy+texto_margy
					
						texto_y2[menu_index] = -100*texto_yesc
						textos_y[menu_index] = y1
				
						//show_message(0)
			
					}
			
				}else{ //adiciona
			
					//show_message("teste 1")
				
					if (menu_tmd>0){
						
						y1 = gui_h/2-(texto_tmd/2)*texto_margy+texto_margy
					
						menu_tmd = array_length(textos_mostrar)-1
						menu_index = textos_mostrar[menu_tmd]
						texto_x[menu_tmd] = textos_x[menu_index]
						texto_y2[menu_index] = -100*texto_yesc
						textos_y[menu_index] = y1
			
						//show_message(1)
				
					}else{
						
						//show_message(2)
						menu_tmd = array_length(textos_mostrar)-1
						menu_index = textos_mostrar[menu_tmd]
						texto_x[menu_tmd] = textos_x[menu_index]
				
					}
				}
		
				if (array_length(textos_mostrar)-1>1){
				
					//show_message(3)
					texto_tmd	= array_length(text)
					y1 = gui_h/2-(texto_tmd/2)*texto_margy
					
					textos_y[textos_mostrar[1]] = (gui_h+525)*texto_yesc
					texto_y2[textos_mostrar[1]] = y1
			
				}else{
					
					//show_message(4)
					index = 0
					////show_message(muda_controle)
			
				}
			}
		}
	}
	
	#endregion
	
	#region Adiciona um texto novo
	
	if (array_length(mudando_texto)>0){
		
		var text = textos[global.configs[2][0]][textos_mostrar[array_length(mudando_texto)-1]]
		
		//texto_y2[menu_index] = -100*texto_yesc
		textos_y[menu_index] = gui_h+100*texto_yesc
		
		if (texto_y2[menu_index]>=gui_h){
		
			texto_tmd	= array_length(text)
			y1 = gui_h/2-(texto_tmd/2)*texto_margy
					
			textos_mostrar = mudando_texto
			mudando_texto=[]
		
			menu_tmd = array_length(textos_mostrar)-1
			menu_index = textos_mostrar[menu_tmd]
	
			texto_y2[menu_index] = -100/texto_yesc
			textos_y[menu_index] = y1
			
		}
	}
	
	#endregion
	
	#endregion

	#endregion
		
	#endregion
	
}

mexendo_em_coisas = function(vel,i,val,val_max,val_min=0,index_max=100){
	
	var menu_tmd = array_length(textos_mostrar)-1
	var menu_index = textos_mostrar[menu_tmd]
	
	var esquerda	= (keyboard_check_pressed(vk_left)	or gamepad_button_check_pressed(0,gp_padl) or gp[1]<0)
	var direita		= (keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr) or gp[1]  )
	var enter		= (keyboard_check_pressed(vk_enter)	or gamepad_button_check_pressed(0,gp_face1)) 
	vel *= sign(muda_controle+1)
	
	if (textos_cores[ti][index] == c_gray) muda_controle = -1
	
	if (menu_index == i and index<index_max and textos_cores[ti][index] != c_gray){
		
		if (is_array(val)){
			
			val[index]+= direita* vel
			val[index]-= esquerda* vel
			val[index] = clamp(val[index],val_min,val_max)
			
		}else{
			
			val+= direita* vel
			val-= esquerda* vel
			val = clamp(val,val_min,val_max)
			
		}
		
		if (direita or esquerda){ 
			
			
		
		}
	}
	
	return val
	
}

trocando_cores = function(){
	
	var menu_tmd = array_length(textos_mostrar)-1
	var menu_index = textos_mostrar[menu_tmd]
	
	for (var i=0;i<array_length(texto_mostrado);i++){
		
		switch(menu_index){
			
			//case 6:
				
			//	static saves_infos = [-1,-1,-1,-1]
			//	//textos_cores[menu_index][i] = i<3 and file_exists(global.saves[i][0]) ? c_white  : make_color_rgb(190,190,190);
			//	//textos_cores[menu_index][array_length(saves_infos)-1] = c_white
				
			//	if (saves_infos[i] == -1 and i<3 and file_exists(global.saves[i][0])){
					
			//		var info = carregando(i,1)
					
			//		textos[global.configs[2][0]][menu_index][i] += " (" + string(info) + ")%"
					
			//	}
				
			//	saves_infos[i] = 0
					
			//break;
			
			case 7:
				
				textos_cores[menu_index][0] = file_exists(global.saves[global.savei][0]) ? c_white  : make_color_rgb(190,190,190);
				textos_cores[menu_index][2] = file_exists(global.saves[global.savei][0]) ? c_white  : make_color_rgb(190,190,190);
				
			break;
			
		}
	}
}

mexendo_na_resol = function(){
	
	var vel = 1
	var i = 5
	var menu_tmd = array_length(textos_mostrar)-1
	var menu_index = textos_mostrar[menu_tmd]
	
	var esquerda	= (keyboard_check_pressed(vk_left)	or gamepad_button_check_pressed(0,gp_padl) or gp[1]<0)
	var direita		= (keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padr) or gp[1]  )
	var enter		= (keyboard_check_pressed(vk_enter)	or gamepad_button_check_pressed(0,gp_face1)) 
	vel *= sign(muda_controle+1)
	
	if (global.configs[3][0] and menu_index == i){
		
		textos_cores[ti][1] = c_gray
		textos_cores[ti][2]	= c_gray
		
	}
	
	if (textos_cores[ti][index] == c_gray) muda_controle = -1
	
	if (menu_index == i and textos_cores[ti][index] != c_gray){
		
		if (index<2){
		
			global.configs[3][index] = clamp(global.configs[3][index],0,array_length(textos_resol[global.configs[2][0]][index])-1)
			global.configs[3][index]+= direita* vel
			global.configs[3][index]-= esquerda* vel
			global.configs[3][index] = clamp(global.configs[3][index],0,array_length(textos_resol[global.configs[2][0]][index])-1)
			
			if (direita or esquerda){ 
			
				global.configs[3][2] = clamp(global.configs[3][2],0,array_length(textos_resol[global.configs[2][0]][2][global.configs[3][1]])-1)
				window_set_size(resol[global.configs[3][1]][global.configs[3][2]][0],resol[global.configs[3][1]][global.configs[3][2]][1])
		
				if (index = 0) window_set_fullscreen(global.configs[3][0])
				
			}
			
		}else if (index=2){
			
			global.configs[3][index] = clamp(global.configs[3][index],0,array_length(textos_resol[global.configs[2][0]][index][global.configs[3][1]])-1)
			global.configs[3][index]+= direita* vel
			global.configs[3][index]-= esquerda* vel
			global.configs[3][index] = clamp(global.configs[3][index],0,array_length(textos_resol[global.configs[2][0]][index][global.configs[3][1]])-1)
			
			if (direita or esquerda){ 
				
				window_set_size(resol[global.configs[3][1]][global.configs[3][2]][0],resol[global.configs[3][1]][global.configs[3][2]][1])
				//window_set_size(resol[global.configs[3][1]][global.configs[3][2]][0],resol[global.configs[3][1]][global.configs[3][2]][1])
		
			}
		}
	}
}

#endregion

tecla = ord("A")
muda = 0