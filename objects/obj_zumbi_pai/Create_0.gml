visao_inicio()

caminho = path_add()
cria_caminho = 1
cria_caminho_tempo = random_range(30,60)
cria_caminho_timer = cria_caminho_tempo
caminho_dist = random_range(32,64)
criou_caminho = 0

ataque_tempo = random_range(60,100)
ataque_timer = ataque_tempo
ataque_dist = random_range(56,96)

atirar_player_dist = 250

arma = noone
armai = irandom_range(0,array_length(global.armas_nome)-1)

cx = 0
cy = 0
cx3 = x
cy3 = y
cd  = 0
cdm = 0
coid = 0

player_dir = 0

volta_atirar_tempo = 5
volta_atirar_timer = volta_atirar_tempo

arma_atira = 1
arma_usar = 1

morrendo = function(){
	
	randomise()
	var chan_a = irandom_range(0,100)
	
	var chac_e = 94 - 3 * (instance_number(obj_player)-1)
	
	if (chan_a>=chac_e){
		
		var armi = irandom_range(0,array_length(drops)-1)
		armi = clamp(armi,0,array_length(drops)-1)
		
		var armai = drops[armi]
		
		var obj = instance_create_layer(x,y,"Particulas",obj_arma_item)
		obj.i = armai
		
	}
	
	global.dinheiro += moedas
	
	instance_destroy()
	path_delete(caminho)
		
}

desenhando = function(){
	
	image_index = sign(vermelho)

	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	
}

image_speed = 0