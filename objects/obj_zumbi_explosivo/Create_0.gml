#region Variaveis

randomise()

var vid_mar = 1+global.rodada/12.5
var ply_mar = 1+(instance_number(obj_player)-1)/2
var ply_num = instance_number(obj_player)

var vid = random_range(3*vid_mar,7*vid_mar)	* ply_mar
var dan_mar = 1+global.rodada/20
var moe = random_range(7,42) * ply_num
			
event_inherited()

cor		= global.parts_cores[objetos.zumbi_exp]
velp	= global.parts_vel	[objetos.zumbi_exp]
distc	= global.parts_distc[objetos.zumbi_exp]
danos	= global.parts_danos[objetos.zumbi_exp]

moedas = moe

hspd =0 
vspd =0

vela = random_range(.5,1.2)
vel = vela

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

dano_dmg = random_range(1.3*dan_mar,4.5*dan_mar)	* ply_mar

drops = []

colisao = [] array_copy(colisao,0,global.colisao_normal,0,array_length(global.colisao_normal))

braco_dir = direction
braco_spr = spr_zumbi_braco_explosivo
ii = 0

image_alpha = 0
ataque_dist = irandom_range(24,48)//clamp(ataque_dist,caminho_dist+1,infinity)
ataque_tempo = random_range(90,180)
ataque_timer = ataque_tempo

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
		
		var x1 = dano_pos[0]
		var y1 = dano_pos[1]
		var x2 = x1 + lengthdir_x(sprite_width ,dano_ang)
		var y2 = y1 + lengthdir_y(sprite_height,dano_ang)
		
		var col = collision_line(x1,y1,x2,y2,hitbox,0,0)
	
		if (col) vida = -10
	
		vermelho += 3
		vida-=dano
		dano = 0
		
	}
}

#endregion

#region Movimentação

#region Movimentacao2

#endregion

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
	var dir = point_direction(x,y,ply.x,ply.y)
	
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
	atacando()
	
    estado = estado_seguindo
    estado_txt = "estado_seguindo"       
	
	muda_estados()
	
}
	
estado_morrendo = function(){
	
	instance_create_depth(x,y,depth,obj_gas)
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