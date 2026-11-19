if (global.pause or !instance_exists(obj_player)) exit;

image_angle+=2
direction+=2
//image_xscale = direction = clamp(direction,90,270) ? -1 : 1
direction	%= 360
image_angle %= 360

sprite_index = global.armas_sprt[i]

image_alpha -= .05
	
var obj = instance_nearest(x,y,obj_player)
var dis = 48
	
if (point_distance(obj.x,obj.y,x,y)<dis){
	
	var cn = obj.controle

	image_alpha += .1
	var tec_a = usa_controle(controles.anda_f,1,,obj.controle)//!cn ? keyboard_check_pressed(ord(tecla_pegar[cn])) : gamepad_button_check_pressed(0,tecla_pegar[cn])
		
	if (tec_a and obj.arma_prox = id){
		
		instance_destroy(obj.arma)
	
		for (var a=0;a<array_length(global.armas_mods[obj.qtd][i]);a++){
		
			global.armas_mods[obj.qtd][i][a] = mods[a]
			global.armas_modi[obj.qtd][i][a] = modi[a]
		
		}
	
		obj.arma = -4
		obj.armai = i
		obj.tem_arma = 1
		
		instance_destroy()
	
	}
}

rodando()

image_alpha = clamp(image_alpha,0,1)