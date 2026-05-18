if (global.pause) exit;

direction+=2
sprite_index = global.armas_sprt[i]

image_xscale = 1

if (place_meeting(x,y,obj_player)){
	
	var obj = instance_place(x,y,obj_player)
	
	instance_destroy(obj.arma)
	
	obj.arma = -4
	obj.armai = i
	
	instance_destroy()
	
}

rodando()

if (direction>600*4) instance_destroy()