i = global.arma

if (alp and (keyboard_check_pressed(ord("Q")) or keyboard_check_pressed(ord("E")))){
    
    if (keyboard_check_pressed(ord("Q"))) global.arma--
    if (keyboard_check_pressed(ord("E"))) global.arma++
        
    global.arma %= array_length(global.armas_nome)
	if (global.arma<0) global.arma = array_length(global.armas_nome)-1
	
    if (instance_exists(obj_player.arma))obj_player.arma.i = global.arma
	pext = []
	
}

if (keyboard_check(vk_right)){ 
	
	rotd = 1
	//if (rot>=1) rotd=!rotd
	
	rot+=.005*rotd 
	
}

if (keyboard_check(vk_left)){ 
	
	rotd = 1
	//if (rot<=-1) rotd=!rotd
	
	rot-=.005*rotd 
	
}

if (keyboard_check_pressed(vk_escape)){ 
	
	alp=!alp
	lista = -1
	
	for (var m=0;m<array_length(global.armas_mods[i]);m++){
		
		var mod_i = global.armas_mods[i][m]
		var ptmd = m
		var ptm1 = array_length(global.armas_mode[i][m])>0 and array_length(global.armas_mode[i][m][mod_i])>15 ? global.armas_mode[i][m][mod_i][15] : 0
		var ptm2 = array_length(global.armas_mode[i][m])>0 and array_length(global.armas_mode[i][m][mod_i])>16 ? global.armas_mode[i][m][mod_i][16] : 0
		var ptm3 = array_length(global.armas_modx[i][m])>0 ? global.armas_modx[i][m][0]: 0
		var ptm4 = array_length(global.armas_modx[i][m])>0 ? global.armas_modx[i][m][1]: 0
		
		pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4]
		
	}
	
	window_set_cursor(cr_none)
	
}

if (lista){

	global.armas_mods[i][lista-1]		= listai
	modx[lista-1][0]	= global.armas_modx[i][lista-1][0]
	modx[lista-1][1]	= global.armas_modx[i][lista-1][1]
		
	if (keyboard_check_pressed(vk_enter)){
		
		global.armas_mods[i][lista-1]		= listai
		modx[lista-1][0]	= global.armas_modx[i][lista-1][0]
		modx[lista-1][1]	= global.armas_modx[i][lista-1][1]
		lista = 0
		listai = 0
		
	}
	
	if (keyboard_check_pressed(vk_up)){
	
		if (array_length(pext)>lista-1) pext[lista-1] = 0
		listai--
		
		if (lista) listai = clamp(listai,0,array_length(global.armas_modp[i][lista-1])-1)
		
		var mod_i = lista-1
				
		var m = listai
		
		var ptmd = lista-1
		var ptm1 = array_length(global.armas_mode[i][mod_i][m])>15 ? global.armas_mode[i][mod_i][m][15] : 0
		var ptm2 = array_length(global.armas_mode[i][mod_i][m])>16 ? global.armas_mode[i][mod_i][m][16] : 0
		var ptm3 = array_length(global.armas_modx[i][mod_i])>1 ? global.armas_modx[i][mod_i][0]: 0
		var ptm4 = array_length(global.armas_modx[i][mod_i])>1 ? global.armas_modx[i][mod_i][1]: 0
		pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4]
		
	}
	
	if (keyboard_check_pressed(vk_down)){
		
		if (array_length(pext)>lista-1) pext[lista-1] = 0
		listai++
		
		if (lista)listai = clamp(listai,0,array_length(global.armas_modp[i][lista-1])-1)
		
		var mod_i = lista-1
					
		var m = listai
		
		var ptmd = lista-1
		var ptm1 = array_length(global.armas_mode[i][mod_i][m])>15 ? global.armas_mode[i][mod_i][m][15] : 0
		var ptm2 = array_length(global.armas_mode[i][mod_i][m])>16 ? global.armas_mode[i][mod_i][m][16] : 0
		var ptm3 = array_length(global.armas_modx[i][mod_i])>1  ? global.armas_modx[i][mod_i][0]: 0
		var ptm4 = array_length(global.armas_modx[i][mod_i])>1  ? global.armas_modx[i][mod_i][1]: 0
		pext[ptmd]			 =[ptm1,ptm2,ptm3,ptm4]
		
	}
}

rot = clamp(rot,-1,1)
global.pause  = alp
obj_camera.roo= alp
