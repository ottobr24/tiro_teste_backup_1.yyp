#region Variaveis

randomise()

hspd =0 
vspd =0

vela = random_range(1,2)
vel = 0

vida_max = 20
vida = vida_max

dano = 0
dano_pai = -4

estado = 0
estado_txt = ""

alvox = 0
alvoy = 0

xult = x
yult = y

caminho = path_add()
cria_caminho = 1
caminho_dist = random_range(16,48)

ataque_tempo = 90
ataque_timer = ataque_tempo
ataque_dist = random_range(56,96)

dano_dmg = 0

drops = []

colisao = [] array_copy(colisao,0,global.colisao_normal,0,array_length(global.colisao_normal))

braco_dir = direction
ii = 0

visao_inicio()

image_alpha = 0

#endregion

#region Metodos

#region Funcoes

#region Estados metodos

muda_estados = function (se = 1,mo = 1){
    
    var est = estado
	var seg = 1
	var mor = vida<=0
	var pau = global.pause
	var ests = [se and seg 		,mo and mor 	,pau		 ]
    var estz = [estado_seguindo	,estado_morrendo,estado_pause]
	
	for (var e =0;e<array_length(ests);e++){
		
		if (ests[e]){
			
			estado = estz[e]
				
		}
	}
}

#endregion

#region Vida

sofrendo_dano = function(){
	
	if (dano){
		
		vida-=dano
		dano = 0
		
	}
}

#endregion

#region Movimentação

movendo = function(_x = -1,_y = -1){
    
	if (instance_exists(obj_player)){
		
		var ply = instance_nearest(x,y,obj_player)
		var dis = 32
		var diag = 1
	
		if (point_distance(alvox,alvoy,ply.x,ply.y)>caminho_dist or cria_caminho){
		
			var map = obj_controlador.mapa
		
			var dest_x = ply.x
			var dest_y = ply.y
		
			var sel_x = dest_x
			var sel_y = dest_y
			
			if (mp_grid_path(map,caminho,x,y,sel_x,sel_y,diag) == true and mp_grid_get_cell(map,sel_x,sel_y)=-1){
				
				path_start(caminho,vela,path_action_stop,!diag)
			
				alvox = sel_x
				alvoy = sel_y
				
				cria_caminho = 0
				
			}
		}
	}
}

colidindo = function(){
	
	hspd = x-xult
	vspd = y-yult
	
	xult = x
	yult = y
	
}

#endregion 

#region Desenhando

desenhando = function(){
	
	image_angle = point_direction(0,0,hspd,vspd)
	draw_self()
	
}

me_destacando = function(){
	
	ds_list_clear(visao_col)
	
	var obj = []
	
	instance_place_list(x,y,obj_regioes,visao_col,0)
	
	for (var o=0;o<ds_list_size(visao_col);o++){
	
		obj[array_length(obj)] = ds_list_find_value(visao_col,o).vendo
	
	}
	
	if (achando_na_array(obj,1)  = -1) image_alpha = lerp(image_alpha,0,.1)
	if (achando_na_array(obj,1) != -1) image_alpha = lerp(image_alpha,1,.1)
	
	layer = layer_get_id("Level")
	
}

bracos = function(){
	
	var ply = instance_nearest(x,y,obj_player)
	
	braco_dir = point_direction(x,y,ply.x,ply.y) //lerp(braco_dir,direction,.1)
	
	var _x = x + lengthdir_x(8	,braco_dir)

	var y1 = y + lengthdir_y(8	,braco_dir) + lengthdir_y(8	,braco_dir+90)
	var y2 = y - lengthdir_y(8	,braco_dir) + lengthdir_y(8	,braco_dir-90)
	
	draw_set_colour(image_blend)
	draw_set_alpha(image_alpha)
	
	draw_sprite_ext(spr_zumbi_braco,0,_x,y1,1,1,braco_dir-5,c_green,image_alpha)
	draw_sprite_ext(spr_zumbi_braco,0,_x,y2,1,1,braco_dir+5,c_green,image_alpha)
	
	draw_set_alpha(1)
	draw_set_colour(-1)
	
}

#endregion

#endregion

#region Estados

estado_seguindo = function(){
	
	sofrendo_dano()
	movendo()
	
	if (instance_exists(obj_player)){
		
		var obj = instance_nearest(x,y,obj_player)
		direction = point_direction(x,y,obj.x,obj.y)
		
		if (point_distance(x,y,obj.x,obj.y)<ataque_dist){
			
			ataque_timer--
			
			if (!ataque_timer){
				
				image_blend = c_red
				obj.dano+=dano_dmg
				ataque_timer = ataque_tempo
				global.shake+=dano_dmg
				
			}
		}else{
			
			ataque_timer = ataque_tempo
			
		}
	}
	
    estado = estado_seguindo
    estado_txt = "estado_seguindo"       
	
	muda_estados()
	
}
	
estado_morrendo = function(){
    
	randomise()
	var chan_a = irandom_range(0,100)
	var chan_m = irandom_range(0,100)
	
	var chac_e = 94 - 3 * (instance_number(obj_player)-1)
	
    estado = estado_morrendo
    estado_txt = "estado_morrendo"       
	
	if (chan_a>=chac_e){
		
		var armi = irandom_range(0,array_length(drops)-1)
		
		var armai = drops[armi]
		
		var obj = instance_create_layer(x,y,"Arma",obj_arma_item)
		obj.i = armai
		
	}
	
	global.dinheiro += moedas
	
	instance_destroy()
	
}

estado_pause = function(){
    
    estado = estado_pause
    estado_txt = "estado_pause"     
	
	arma_atira = 0
	cria_caminho = 1
	
	x-=hspd
	y-=vspd
	
	muda_estados()
	
	path_end()
	
}

#endregion

#endregion

estado = estado_seguindo

if (instance_exists(obj_player)) direction = point_direction(x,y,obj_player.x,obj_player.y)   