ct = instance_exists(pai) ? pai.controle : 0
cn = ct

if (pai.object_index = obj_menu2) exit;
 
if (!instance_exists(pai)){
	
	instance_destroy()
	exit;
	
}

if (global.pause) exit;

colocando_os_acessorios()
dropa_arma()

if (!equip) exit;

estado()
