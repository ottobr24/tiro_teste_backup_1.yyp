visao_inicio()

caminho = path_add()
cria_caminho = 1
cria_caminho_tempo = random_range(15,30)
cria_caminho_timer = cria_caminho_tempo
caminho_dist = random_range(24,48)
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
player = -4

volta_atirar_tempo = 5
volta_atirar_timer = volta_atirar_tempo

arma_atira = 1
arma_usar = 1

criando_caminho = 0

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

movendo = function(_x = -1,_y = -1){
    
	if !instance_exists(obj_player) exit;
	
	criando_caminho[0] = 0
	var ply = instance_nearest(x,y,obj_player)
	var dis = abs(distance_to_object(ply) - distance_to_point(alvox,alvoy)) > caminho_dist
		
	caminho_dist = clamp(caminho_dist,ataque_dist+1,100)
	
	if (dis or cria_caminho or path_get_closed(caminho)){
		
		player = ply
		
		randomise()
		
		var diag = 1
		var map = obj_controlador.mapa
		
		var xalet = irandom_range(-16,16)
		var yalet = irandom_range(-16,16)
		
		var dest_x = ply.x + xalet
		var dest_y = ply.y + yalet
		
		var sel_x = dest_x
		var sel_y = dest_y
		
		criando_caminho[0] = 1
		criando_caminho[1] = [dest_x,dest_y]
		criando_caminho[2] = [mp_grid_path(map,caminho,x,y,sel_x,sel_y,diag),mp_grid_get_cell(map,sel_x,sel_y)]
			
		if ((mp_grid_path(map,caminho,x,y,sel_x,sel_y,diag) and mp_grid_get_cell(map,sel_x,sel_y)=-1)){
			
			player = ply
		
			path_start(caminho,vela,path_action_stop,!diag)
		
			alvox = sel_x
			alvoy = sel_y
		
			cria_caminho = 0
			cria_caminho_timer = cria_caminho_tempo
			criou_caminho =  1
			
			criando_caminho = [0]
			
		}
	}
}

desenhando = function(){
	
	image_index = sign(vermelho)

	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	
}

image_speed = 0