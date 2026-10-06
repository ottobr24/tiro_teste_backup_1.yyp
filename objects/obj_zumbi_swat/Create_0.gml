#region Variaveis

event_inherited()
randomise()

var vid_mar = 1+global.rodada/7.5
var ply_mar = 1+(instance_number(obj_player)-1)/2
var ply_num = instance_number(obj_player)

var vid = random_range(1.5*vid_mar,3*vid_mar) * ply_mar
var moe = random_range(5,40) * ply_num
			
cor		= global.parts_cores[objetos.zumbi]
velp	= global.parts_vel	[objetos.zumbi]
distc	= global.parts_distc[objetos.zumbi]
danos	= global.parts_danos[objetos.zumbi]

moedas = moe

hspd =0 
vspd =0

vela = random_range(.6,1.4)
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
braco_spr = spr_zumbi_braco_swat
ii = 0

image_alpha = 0
ataque_dist = clamp(ataque_dist,caminho_dist+1,infinity)

vermelho = 0
player = -4

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

puxa_arma = function(){
	
	if (arma_usar){
		
		if (!instance_exists(arma) and arma = -4){
			
			cx3 = x+16
			cy3 = y+16
			arma = instance_create_layer(cx3,cy3,"Arma",obj_arma_npc)
			arma.pai = id
		
			with(arma){
			
				i = pai.armai
				municao				= global.armas_munc[i]
				recarregando_timer	= global.armas_recn[i]
				tiro				= municao-1
				tiro_tempo			= global.armas_cadn[i] * 2
				rajando_timer		= global.armas_raca[i] * 1.4
				tiro_timer			= tiro_tempo
				prep				= global.armas_prep[i]				
				prec_menos			= global.armas_prec[i] * 5
				coix				= global.armas_coix[i]
				coiy				= global.armas_coiy[i]
				dano				= global.armas_dano[i]
				recarregando_tempo	= global.armas_recn[i]
				cliq				= global.armas_cliq[i]
				rajadas_tempo		= global.armas_raca[i] * 1
				rajadas_total		= global.armas_raja[i]
				shak				= global.armas_shak[i] / 4
				bala				= global.armas_bala[i] 
				rext				= global.armas_rext[i]
				
				baru				= global.armas_baru[i]
				
				part_reca			= global.armas_part[i][1]
				part_tiro			= global.armas_part[i][0]
				part_cock			= global.armas_part[i][2]

				som_tiro			= array_length(global.armas_sons[i])>0 ? global.armas_sons[i][0] : 0
				
				sons				= array_length(global.armas_sons)>i ? array_create(array_length(global.armas_sons[i]),0) : []
				
				mods = array_create(array_length(global.armas_modn[i]),0)
				modi = array_create(array_length(global.armas_modn[i]),0)
				
				for (var m=0;m<array_length(mods);m++){
					
					mods[m] = irandom_range(0,array_length(global.armas_modn[i][m])					-1)
					modi[m] = array_length(global.armas_modp[i][m])>0 ? irandom_range(0,sprite_get_number(global.armas_modp[i][m][mods[m]])) : 0
					
				}
			}
		}
		
		if (instance_exists(arma) and arma!=-4){
			
			var obj = instance_nearest(x,y,obj_player)
	        var marg = 8
        
	        var cx2 = 8
	        var cy2 = 8
        
	        var colisao2 = [obj_miniporta,obj_miniparede]
			var dir2 = point_direction(x,y,obj.x,obj.y)
			
			var x1 = x + lengthdir_x(cx2 + marg,dir2) 
	        var y1 = y + lengthdir_y(cy2 + marg,dir2)
	        var dir = dir2 + coid
			
	        with(arma){
            
	            if (place_meeting(x,y1,colisao2)){
				
	                while(place_meeting(x,y1,colisao2) and cy2>-32){
                    
	                    y1 = y + lengthdir_y(cy2,dir)
	                    cy2--
                    
	                }
	            }
            
	            if (place_meeting(x1,y,colisao2)){
                
	                while(place_meeting(x1,y,colisao2) and cx2>-32){
                    
	                    x1 = x + lengthdir_x(cx2,dir)
	                    cx2--
                    
	                }
	            }
	        }
        
			cx = lerp(cx,cx2,0.1)
			cy = lerp(cy,cy2,0.1)
        
			cx3 = lerp(cx3,x + lengthdir_x(cx,dir2),.25)
			cy3 = lerp(cy3,y + lengthdir_y(cy,dir2),.25)
			
	        var ix = dir = clamp(dir,90,270) ? -1 : 1
			var ang = ix > 0 ? dir : dir+180
		
			if (ang-cdm >  140){ cd = ang-5 if (ang-cdm >  260) cd = ang }
			if (ang-cdm < -140){ cd = ang+5 if (ang-cdm < -260) cd = ang }
			
			cd = lerp(cd,ang,0.15)
			
			arma.x = cx3
			arma.y = cy3
			arma.direction = dir2 + coid
			arma.image_angle = cd
			arma.image_xscale = ix
		
			cdm = ang
			coid = lerp(coid,0,.1)
			
		}
	}
}

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
	
	exit;
	
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
	
	var ply = instance_exists(obj_player) ? instance_nearest(x,y,obj_player) : -4
	var dis = ply ? point_distance (x,y,ply.x,ply.y) : 10
	var dir = ply ? point_direction(x,y,ply.x,ply.y) : 0
	
	var col1 = retira_da_array(global.zumbis,[obj_zumbi_swat])
	var col2 = adiciona_na_array(global.colisao_normal,col1)
	
	arma_atira = visao(dis,,x,y,dir,ply,col2,5,1,,1)

	puxa_arma()
	sofrendo_dano()
	movendo()
	
    estado = estado_seguindo
    estado_txt = "estado_seguindo"       
	
	muda_estados()
	
}
	
estado_morrendo = function(){
    
	randomise()
	var chan_a = irandom_range(0,100)
	
	var chac_e = 33 - 11 * (instance_number(obj_player)-1)
	
	if (chan_a>=chac_e){
		
		var obj = instance_create_layer(x,y,"Particulas",obj_arma_item)
		obj.i = armai
		
	}
	
	global.dinheiro += moedas
	
	instance_destroy()
	path_delete(caminho)
		
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