if (!instance_exists(pai)){
	
	instance_destroy()
	exit;
	
}

image_speed=0

if (global.pause) exit;

colocando_os_acessorios()

if (!equip) exit;
estado()
