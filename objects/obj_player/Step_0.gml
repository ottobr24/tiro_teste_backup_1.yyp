if(global.pause) exit;

var ct = controle
var cn = ct and gamepad_is_connected(0)
	
var men_tec = !cn ? keyboard_check_pressed(vk_down) : gamepad_button_check_pressed(0,gp_padd)
var mas_tec = !cn ? keyboard_check_pressed(vk_up) : gamepad_button_check_pressed(0,gp_padu)
	
estado()
colidindo()

if (mas_tec or men_tec){
    
    instance_destroy(arma)
    
    if (men_tec) global.arma++
    if (mas_tec) global.arma--
        
    global.arma %= array_length(global.armas_nome)
	if (global.arma<0) global.arma = array_length(global.armas_nome)-1
	
}

if (keyboard_check_pressed(vk_backspace)) room_restart()