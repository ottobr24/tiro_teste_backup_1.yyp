if(global.pause) exit;

estado()
colidindo()

if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(vk_up)){
    
    instance_destroy(arma)
    
    if (keyboard_check_pressed(vk_down) ) global.arma++
    if (keyboard_check_pressed(vk_up)) global.arma--
        
    global.arma %= array_length(global.armas_nome)
	if (global.arma<0) global.arma = array_length(global.armas_nome)-1
	
}

if (keyboard_check_pressed(vk_backspace)) room_restart()