#region Variaveis

randomise()

var vid_mar = 1+global.rodada/12.5
var ply_mar = 1+(instance_number(obj_player)-1)/2
var ply_num = instance_number(obj_player)

var vid = random_range(1*vid_mar,3*vid_mar)	* ply_mar
var moe = random_range(2,20) * ply_num
			
event_inherited()

cor		= global.parts_cores[objetos.zumbi]
velp	= global.parts_vel	[objetos.zumbi]
distc	= global.parts_distc[objetos.zumbi]
danos	= global.parts_danos[objetos.zumbi]

moedas = moe

hspd =0 
vspd =0

vela = random_range(.8,1.8)
vel = 0

vida_max = vid
vida = vida_max

dano = 0
dano_pai = -4

estado = 0
estado_txt = ""

alvox = 0
alvoy = 0

xult = x
yult = y

dano_dmg = 0

drops = []

colisao = [] array_copy(colisao,0,global.colisao_normal,0,array_length(global.colisao_normal))

braco_dir = direction
braco_spr = spr_zumbi_braco
ii = 0

image_alpha = 0
ataque_dist = clamp(ataque_dist,caminho_dist+1,infinity)

vermelho = 0

#endregion

#region Metodos

#region Funcoes

#region Estados metodos

muda_estados = function (se = 1,mo = 1){
    
    var est = estado
	var seg = 1
	var mor = vida<=0 and !vermelho
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
	
	vermelho--
	vermelho = clamp(vermelho,0,1000)
	
	if (dano){
		
		vermelho += 3
		vida-=dano
		dano = 0
		
	}
}

#endregion

#region Movimentação

movendo = function(_x = -1,_y = -1){
    
	if !instance_exists(obj_player) exit;
	
	var ply = instance_nearest(x,y,obj_player)
		
	cria_caminho_timer--
	caminho_dist = clamp(caminho_dist,ataque_dist+1,100)
	
	if (distance_to_object(ply) > caminho_dist or cria_caminho or !cria_caminho_timer){
	
		var diag = 1
		var map = obj_controlador.mapa
	
		var dest_x = ply.x
		var dest_y = ply.y
		
		var sel_x = dest_x
		var sel_y = dest_y
		
		if ((mp_grid_path(map,caminho,x,y,sel_x,sel_y,diag) == true and mp_grid_get_cell(map,sel_x,sel_y)=-1)){
		
			path_start(caminho,vela,path_action_stop,!diag)
		
			alvox = sel_x
			alvoy = sel_y
		
			cria_caminho = 0
			cria_caminho_timer = cria_caminho_tempo
			criou_caminho =  1
			
		}
	}
}

colidindo = function(){
	
	depth = -y
	hspd = x-xult
	vspd = y-yult
	
	xult = x
	yult = y
	
}

#endregion 

#region Desenhando

bracos = function(){
	
	if !instance_exists(obj_player) exit;
	
	var ply = instance_nearest(x,y,obj_player)
	var dir = direction
	
	if (abs(braco_dir-dir) > 240) braco_dir = dir - sign(dir-braco_dir) * 5
	
	braco_dir = lerp(braco_dir,dir,.1)
	
	var _x = x + lengthdir_x(8	,braco_dir)

	var y1 = y + lengthdir_y(8	,braco_dir) + lengthdir_y(8	,braco_dir+90)
	var y2 = y - lengthdir_y(8	,braco_dir) + lengthdir_y(8	,braco_dir-90)
	
	draw_set_alpha(image_alpha)
	
	draw_sprite_ext(braco_spr,image_index,_x,y1,1,1,braco_dir-5,c_white,image_alpha)
	draw_sprite_ext(braco_spr,image_index,_x,y2,1,1,braco_dir+5,c_white,image_alpha)
	
	draw_set_alpha(1)

}

#endregion

#endregion

#region Estados

estado_seguindo = function(){
	
	sofrendo_dano()
	movendo()
	
	if (instance_exists(obj_player)){
		
		var obj = instance_nearest(x,y,obj_player)
		
		if (point_distance(x,y,obj.x,obj.y)<ataque_dist){
			
			ataque_timer--
			
			if (!ataque_timer){
				
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
	
    morrendo()
	
}

estado_pause = function(){
    
    estado = estado_pause
    estado_txt = "estado_pause"     
	
	cria_caminho = 1
	
	x-=hspd
	y-=vspd
	
	muda_estados()
	
	path_end()
	
}

#endregion

#endregion

estado = estado_seguindo  