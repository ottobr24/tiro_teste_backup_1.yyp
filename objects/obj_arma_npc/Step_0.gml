if (!instance_exists(pai)){
	
	instance_destroy()
	exit;
	
}

image_speed=0

if (global.pause or !usar or !place_meeting(x,y,obj_camera)) exit;

colocando_os_acessorios()
estado()
