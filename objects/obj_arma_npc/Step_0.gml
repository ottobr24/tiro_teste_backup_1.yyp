if (!instance_exists(pai)){
	
	instance_destroy()
	exit;
	
}

reseta_coisas()

if (global.pause or !usar or !place_meeting(x,y,obj_camera)) exit;

colocando_os_acessorios()
estado()