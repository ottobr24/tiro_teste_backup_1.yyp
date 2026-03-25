i = global.arma
rot = 1
rotd = 1
alp=0
lista =0
listai =0
listan =0
listaii =array_create(100,0)
pext = []
colidindo = 0
pontos_perto = [0,0]
pontos = [] 
bloqueados = []

for (var i2=0;i2<array_length(global.armas_modn);i2++){
	
	for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
	
		global.armas_mods[i2][i3] = 0
	
	}
}

for (var i2=0;i2<array_length(global.armas_modn);i2++){
	
	for (var i3=0;i3<array_length(global.armas_modn[i2]);i3++){
	
		global.armas_modi[i2][i3] = 0
	
	}
}

window_set_cursor(cr_none)