#region Variaveis

var gw = room_width 
var gh = room_height
var cn = gamepad_is_connected(0)

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
var mod_tec = !cn ? mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter) : gamepad_button_check_pressed(0,gp_face1)

#endregion

#region Desenha fundo

draw_set_alpha(alp)
draw_set_colour(c_navy)
draw_rectangle(0,0,gw,gh,0)
draw_set_colour(-1)

#endregion

#region Desenha Arma

draw_set_font(fnt_modificacao)
draw_set_halign(1)
draw_set_valign(1)

sprite_set_offset(spr,sprite_get_width(spr)/2,sprite_get_height(spr)/2)
draw_sprite_ext(spr,0,sprx,spry,sprxs,sprys,0,c_white,alp)

#endregion

if (i<array_length(global.armas_mods) and alp){
	
	#region Desenha Sprite
	
	for (var m=array_length(global.armas_mods[i])-1;m>=0;m--){

		if (array_length(global.armas_modp[i][m])>0 and global.armas_modp[i][m][global.armas_mods[i][m]]!=0){ //vendo se tem alguma sprite pra desenhar

			var mod_spr =  global.armas_modp[i][m][global.armas_mods[i][m]] //sprite
			var mod_xo = sprite_get_xoffset(mod_spr) //xoff
			var mod_yo = sprite_get_yoffset(mod_spr) //yoff
			var mod_mx = 0 
			var mod_my = 0
			var mod_x1 = global.armas_mode[i][m][global.armas_mods[i][m]][0]//xspr
			var mod_y1 = global.armas_mode[i][m][global.armas_mods[i][m]][1]//yspr
			
			for (var md=0;md<array_length(pext);md++){
				
				if (array_length(pext[md])>4 and pext[m][4] = 0)mod_mx += global.armas_modx[i][m][0]>pext[md][2] ? pext[md][0] : 0
				if (array_length(pext[md])>4 and pext[m][4] = 0)mod_my += global.armas_modx[i][m][1]>pext[md][3] ? pext[md][1] : 0
				
			}
			
			var mod_x = round(sprx + (mod_mx - mod_xo+mod_x1) * 20 * rot)
			var mod_y = round(spry + (mod_my - mod_yo+mod_y1) * 20	   )
			
			var mod_l = clamp(m,0,1000)
			var mod_i = global.armas_modi[i][mod_l]
			
			sprite_set_offset(mod_spr,sprite_get_width(spr)/2,sprite_get_height(spr)/2)

			draw_sprite_ext(mod_spr,mod_i,mod_x,mod_y,sprxs,sprys,0,c_white,alp)
			
			if (index = m){
				
				draw_sprite_ext(mod_spr,mod_i,mod_x,mod_y,sprxs,sprys,0,c_yellow,alp)
			
			}
			
			sprite_set_offset(mod_spr,mod_xo,mod_yo)
		
		}
	}
	
	#endregion
	
	#region Pontos de modificação
	
	for (var p=0;p<array_length(global.armas_modx[i]);p++){
	
		if (array_length(global.armas_modx[i][p])>0){
	
			var mod_mx = 0 
			var mod_my = 0
			var deb = keyboard_check_pressed(ord("A"))
			
			#region Adiantando o ponto
			
			for (var md=0;md<array_length(pext);md++){
				
				// (deb and pext[md][4] = 1) show_message(mod_mx)
				
				if (array_length(pext[md])>4 and pext[p][4] = 0) mod_mx += global.armas_modx[i][p][0]>pext[md][2] ? pext[md][0] : 0
				if (array_length(pext[md])>4 and pext[p][4] = 0) mod_my += global.armas_modx[i][p][1]>pext[md][3] ? pext[md][1] : 0
				
				//if (deb and pext[md][4] = 1) show_message(mod_mx)
				
			}
			
			#endregion
			
			var mod_spr = global.armas_modp[i][p][global.armas_mods[i][p]]
			var mod_x1	= global.armas_modx[i][p][0]+.5 + mod_mx
			var mod_y1	= global.armas_modx[i][p][1]+.5 + mod_my
			
			var mod_x = sprx+mod_x1*sprxs-((sprw*sprxs)/2)
			var mod_y = spry+mod_y1*sprys-((sprh*sprys)/2)
			var col = point_in_circle(mouse_x,mouse_y,mod_x,mod_y,abs(mod_esc)) or index = p
			
			var cor = c_white
			pontos = []
			pontos_perto = [infinity,10]
			
			#region Pontos ids
			
			var bloq = []
			
			for (var m=0;m<array_length(global.armas_mode[i]);m++){
				
				var btmd = array_length(bloq)
					
				if (array_length(global.armas_mode[i][m])>0){	
				
					//for (var m1=0;m1<array_length(global.armas_mode[i][m]);m1++){
					
						var btmd2 = 0
						var mod_i = global.armas_mods[i][m] //modificador usado
						var ar1 = array_length(global.armas_mode[i][m])>0 //verifica se tem algo na array
						var ar2 = ar1 and is_array(global.armas_mode[i][m][mod_i]) //verifica se tem uma array na array
						var ar3 = ar2 and array_length(global.armas_mode[i][m][mod_i])>3 //verifica se na segunda array tem o id do modificador
						bloq[btmd][btmd2] = ar3 ? global.armas_mode[i][m][mod_i][3] : -2
					
					//}
				}else{
					
					btmd = array_length(bloq)
					bloq[m][0] = -2
					
				}
			}
			
			#endregion
			
			#region Pontos bloqueados
			
			var ids = []
			
			for (var m=0;m<array_length(global.armas_mode[i]);m++){
				
				var btmd = array_length(ids)
					
				if (array_length(global.armas_mode[i][m])>0){	
					
					for (var m1=0;m1<array_length(global.armas_mode[i][m]);m1++){
					
						var btmd2 = m1
						var mod_i = m1 //modificador usado
						var ar1 = array_length(global.armas_mode[i][m])>0 //verifica se tem algo na array
						var ar2 = ar1 and is_array(global.armas_mode[i][m][mod_i]) //verifica se tem uma array na array
						var ar3 = ar2 and array_length(global.armas_mode[i][m][mod_i])>20 //verifica se na segunda array tem o id do modificador
						ids[btmd][btmd2] = ar3 ? global.armas_mode[i][m][mod_i][20] : -3
					
					}
				}else{
					
					btmd = array_length(ids)
					ids[m][0] = -3
					
				}
			}
			
			#endregion
			
			#region Testando se deu algum erro na minha modificação atual
			
			for (var m=0;m<array_length(ids);m++){
				
				var deb = keyboard_check(ord("K")) and m = 9
			
				var mod_i = global.armas_mods[i][m]
				var ar1 = array_length(global.armas_mode[i][m])>0 //verifica se tem algo na array
				var ar2 = ar1 and is_array(global.armas_mode[i][m][mod_i]) //verifica se tem uma array na array
				var ar3 = ar2 and array_length(global.armas_mode[i][m][mod_i])>20 //verifica se na segunda array tem o id do modificador
				var bid = ar3 ? global.armas_mode[i][m][mod_i][20] : -3
				var bloqs2 = []
					
				for (var blo = 0;blo<array_length(bloq);blo++){
					
					var btmd3 = array_length(bloqs2)
					
					bloqs2[btmd3] = bloq[blo][0]
					
				}
				
				if (achando_na_array(bloqs2,bid)>-1){ 
				
					global.armas_mods[i][m] = 0
				
				}
					
				//for (var h=0;h<array_length(ids[m]);h++){
					
				//	//show_message(bloq[0])
					
					
				//	//if(deb) show_message(bloqs2)
				//	//if(deb) show_message(ar1)
				//	//if(deb) show_message(ar2)
				//	//if(deb) show_message(ar3)
				//	//if(deb) show_message(bid)
				//	//if(deb) show_message(bloq)
				//	//if(deb) show_message()
					
				//}	
			}
			
			#endregion
			
			var acha = 1
			var bqtd = 0
			var bmes = global.armas_modp[i][p][0] = 0 //asset_get_type(global.armas_modp[i][p][0]) != asset_sprite
			
			for (var h=0;h<array_length(bloq);h++){
				
				if (array_length(bloq)>0){
					
					var idsa = [] array_copy(idsa,0,ids[p],0,array_length(ids[p]))
					
					for (var b=0;b<array_length(ids[p]);b++){
					
						if (achando_na_array(idsa,bloq[h][0])>-1){
						
							bqtd++
							array_delete(idsa,achando_na_array(idsa,bloq[h][0]),1)
							if(deb)show_message(ids[p])
							if(deb)show_message(bloq[h][0])
							if(deb)show_message(b)
							//bloqueados[h][achando_na_array(idsa,bloq[h][0])] = 1
							
						}
					}
				}
			}
			
			acha = bqtd - (bmes) > 0
			draw_set_halign(0)
			
			//draw_text(10,499,bloq)
			
			draw_set_halign(-1)
			
			if (lista = p+1) cor = make_colour_rgb(200,200,0)
			
			#region Muda cor
			
			if (col){ //toca no ponto
				
				index = p
				if (point_in_circle(mouse_x,mouse_y,mod_x,mod_y,abs(mod_esc))) colidindo = 1
				cor = c_yellow
			
			}
			
			#endregion
			
			if (!acha){
				
				draw_set_colour(cor)
				
				draw_circle(mod_x,mod_y,mod_esc,0)

				draw_set_colour(-1)

				if (col){
	
					if ( point_in_circle(mouse_x,mouse_y,mod_x,mod_y,abs(mod_esc))) window_set_cursor(cr_drag)
				
					if (mod_tec){
				
						if (lista != p+1 and !enter){
				
							lista = p+1
							listai = global.armas_mods[i][lista-1]
						
							var mod_i = lista-1
					
						}else{
						
							//pext = []
							lista = -1
				
						}
					
						listan = 0
					
					}
				}
			}
		}
	}
	
	#endregion
	
}

sprite_set_offset(spr,sprxo,spryo)

//draw_text(60,20,global.armas_mods[i])

if (lista){
	
	var stmd = sprite_get_number(global.armas_modp[i][lista-1][listai])
	//var bloqs = []
	
	for (var l=0;l<array_length(global.armas_modp[i][lista-1]);l++){
		
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
			
		var col2 = l = listai and listan=0
		var cor2 = col2 ? c_yellow : c_white
		var bloq = []
		var bloqs = []
		
		#region Achando os bloqueios da modificação usada
		
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
			
			if (achando_na_array(ids[a],bloqs[l])>-1){ 
				
				acha = 1
				
			}
		}
		
		if (acha) cor2 = c_gray
		
		draw_set_colour(cor2)
	
		draw_text(sprx-200,20+20*l,global.armas_modn[i][lista-1][l])
	
		draw_set_colour(-1)

	}
	
	#region Mostrando variações da modificaçãp
	
	for (var c=0;c<stmd;c++){
		
		if (is_array(global.armas_mode[i][lista-1][listai]) and global.armas_mode[i][lista-1][listai][3] = 11) stmd=0  //se a modificação é um lança granadas, vc trava
		
		var col2 = c = global.armas_modi[i][lista-1] and listan=1 //se eu to em cima do texto da modificaçãp
		var cor2 = col2 ? c_yellow : c_white //se o c é o index da modificação, amarelo
		var tex = array_length(global.armas_mode[i][lista-1][listai])=0 or !is_array(global.armas_mode[i][lista-1][listai][2]) ? ["Padrão"] : global.armas_mode[i][lista-1][listai][2] //verificando se tem mais de uma variação da modificação, se tiver mostra o texto dela, se não so mostra o Padrão
		
		draw_set_colour(cor2)
	
		draw_text(sprx+200,20+20*c,tex[c])
	
		draw_set_colour(-1)

	}
	
	#endregion
	
}

if ( alp and !colidindo and !enter) window_set_cursor(cr_arrow)
//draw_text(600,200,pontos_perto)
//draw_text(600,220,pontos)

draw_set_alpha(1)
draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)