i = global.arma

if (keyboard_check_pressed(ord("Q")) or keyboard_check_pressed(ord("E"))){
    
    if (keyboard_check_pressed(ord("Q"))) global.arma--
    if (keyboard_check_pressed(ord("E"))) global.arma++
        
    global.arma %= array_length(global.armas_nome)
	if (global.arma<0) global.arma = array_length(global.armas_nome)-1
	
    obj_player.arma.i = global.arma
	
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
	
		listai--
	
	}
	if (keyboard_check_pressed(vk_down)){
	
		listai++
	
	}
	if (lista)listai = clamp(listai,0,array_length(global.armas_modp[i][lista-1])-1)
}

rot = clamp(rot,-1,1)
global.pause  = alp
obj_camera.roo= alp
