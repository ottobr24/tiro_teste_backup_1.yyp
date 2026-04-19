if (!instance_exists(pai) or (!equip and rajando_timer!=global.armas_raca)){
	
	instance_destroy()
	if (instance_exists(pai)) pai.arma = -4
	exit;
	
}

image_speed=0

if (global.pause or !usar) exit;

colocando_os_acessorios()
estado()
