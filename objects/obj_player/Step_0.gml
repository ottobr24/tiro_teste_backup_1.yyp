image_blend = !controle ? c_white : c_purple
depth = -y
timer++

show_debug_message(obj_camera.roo)

if (timer%10 = 0) fps_real2 = fps_real

abre_modificacao()

if(global.pause) exit;

estado()
colidindo()

var ct = controle
var cn = ct
	
var men_tec = usa_controle(controles.arma_at,1,,controle)///!cn ? keyboard_check_pressed(vk_left	) : gamepad_button_check_pressed(0,gp_padd)
var mas_tec = usa_controle(controles.arma_pt,1,,controle)///!cn ? keyboard_check_pressed(vk_right	) : gamepad_button_check_pressed(0,gp_padu)
	
if ((mas_tec or men_tec) and !global.zumbi){
    
	global.mods_atualiza = 2
	
    instance_destroy(arma)
    
    if (men_tec) armai++
    if (mas_tec) armai--
        
    armai %= array_length(global.armas_nome)
	if (armai<0) armai = array_length(global.armas_nome)-1
	
}

if (keyboard_check_pressed(vk_backspace) or gamepad_button_check_pressed(0,gp_stickl)){ 
	
	//randomise()
	//armai = irandom_range(0,array_length(global.armas_nome)-1)
	//
	//global.player_ord = 0
	//timer=0
	//instance_destroy(arma)
	//game_restart()   
	
}

var dist = 0
var dists = []

var deb = keyboard_check_pressed(vk_f1)

dist = [100000,-4]
	
for (var p = 0; p<array_length(global.portas);p++){
	
	dists[p][0] = 100000
	dists[p][1] = -4
	dists[p][2] = global.portas[p]
	
	if (instance_exists(global.portas[p])){
	
		var obj = instance_nearest(x,y,global.portas[p])
	
		if (instance_exists(obj)){
	
			var dis = distance_to_object(obj)
			var tmd = 0//array_length(dist) - 1
			
			dists[p][0] = dis
			dists[p][1] = obj.object_index
			dists[p][2] = global.portas[p]
	
			if (p = 0 or dist[0]>dis){
		
				interacao_obj = obj
				dist[0] = dis
				dist[1] = obj
		
				if (deb and p = 0) show_message([			dis,tmd])
				if (deb and p > 0) show_message([dist[tmd],	dis,tmd])

			}
		}
	}
}

if (deb) show_message(dists)