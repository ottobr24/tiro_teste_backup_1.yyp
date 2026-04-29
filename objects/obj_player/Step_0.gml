abre_modificacao()

if(global.pause) exit;

estado()
colidindo()

var ct = controle
var cn = ct and gamepad_is_connected(0)
	
var men_tec = !cn ? keyboard_check_pressed(ord("Q")) : gamepad_button_check_pressed(0,gp_padd)
var mas_tec = !cn ? keyboard_check_pressed(ord("E")) : gamepad_button_check_pressed(0,gp_padu)
	
if (mas_tec or men_tec){
    
    instance_destroy(arma)
    
    if (men_tec) armai++
    if (mas_tec) armai--
        
    armai %= array_length(global.armas_nome)
	if (armai<0) armai = array_length(global.armas_nome)-1
	
}

if (qtd = 0){
	
	if (keyboard_check_pressed(vk_f12)){
		
		var foi = 0
		
		if (window_get_fullscreen() = 0){ 
			
			window_set_fullscreen(1)
			foi = 1
			
		}else{
			
			if (!foi) window_set_fullscreen(0)
			
		}
	}
}

if (keyboard_check_pressed(vk_backspace) or gamepad_button_check_pressed(0,gp_stickl)){ 
	
	with(obj_player){
		
		randomise()
		armai = irandom_range(0,array_length(global.armas_nome)-1)
	
	}
	
	global.player_ord = 0
	game_restart()   
	
}
	
global.portas_abrir = instance_exists(obj_porta) ? instance_nearest(x,y,obj_porta) : -4 
vendo_tudo()