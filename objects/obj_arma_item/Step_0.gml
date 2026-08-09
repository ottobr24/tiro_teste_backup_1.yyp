if (global.pause or !instance_exists(obj_player)) exit;

direction+=2
sprite_index = global.armas_sprt[i]

image_xscale = 1
image_alpha -= .05
	
var obj = instance_nearest(x,y,obj_player)
var dis = 48
	
if (point_distance(obj.x,obj.y,x,y)<dis){
	
	var cn = obj.controle

	image_alpha += .1
	var tec_a = !cn ? keyboard_check_pressed(ord(tecla_pegar[cn])) : gamepad_button_check_pressed(0,tecla_pegar[cn])
		
	if (tec_a and obj.arma_prox = id){
		
		instance_destroy(obj.arma)
	
		for (var a=0;a<array_length(global.armas_mods[obj.qtd][i]);a++){
		
			global.armas_mods[obj.qtd][i][a] = 0
		
		}
	
		obj.arma = -4
		obj.armai = i
	
		instance_destroy()
	
	}
}

rodando()

image_alpha = clamp(image_alpha,0,1)