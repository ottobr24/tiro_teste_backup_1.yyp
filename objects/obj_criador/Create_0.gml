cria_tempo = 30
cria_timer = cria_tempo

colisao = [] array_copy(colisao,0,global.colisao_normal,0,array_length(global.colisao_normal))

pontos = []

objs_tem	= [0,47	,44,42,39,37,35,34,34,33,32,31,30,29,28,26,25,24,23	,22	,20	,19	,18	,17	,16	,15	]
objs_qtd	= [0,10	,15,20,24,31,37,41,44,50,55,59,70,76,81,86,91,97,104,110,118,125,134,141,150,165]

objs_drps	= [



[[armas.colt,armas.rhino,armas.m1911],1],
[[armas.colt,armas.rhino,armas.m1911,armas.glock,armas.m9,armas.usp],5],
[[armas.colt,armas.rhino,armas.m1911,armas.glock,armas.m9,armas.usp,armas.fnx,armas.desert_eagle,armas.mp9],8],
[[armas.m500,armas.m1911,armas.glock,armas.usp,armas.m9,armas.fnx,armas.desert_eagle,armas.mp9,armas.uzi,armas.pp,armas.a681,armas.kar,armas.lee,armas.win,armas.m1],10],
[[armas.m500,armas.glock,armas.fnx,armas.desert_eagle,armas.mp9,armas.uzi,armas.mac,armas.vector,armas.pp,armas.m1897,armas.a681,armas.kar,armas.lee,armas.win,armas.m1,armas.bar],12],
[[armas.m500,armas.mp9,armas.uzi,armas.mac,armas.vector,armas.pp,armas.m1897,armas.m1014,armas.a681,armas.dp,armas.ak_47,armas.fal,armas.aek,armas.lee,armas.win,armas.m1,armas.bar],15],
[[armas.m500,armas.mac,armas.vector,armas.m1897,armas.m1014,armas.a681,armas.dp,armas.saiga,armas.ak_47,armas.fal,armas.aek,armas.ar,armas.m4a1,armas.ak_12,armas.hk416,armas.acr,armas.scar,armas.xm7,armas.ia,armas.kar,armas.lee,armas.win,armas.m1,armas.bar,armas.m249],18]]

objs_atu	= [0]

lideres = []

rod = global.rodada-1

rod_muda_tempo = 60*3
rod_muda_timer = rod_muda_tempo
rod_dir = -1
rod_y = -50

setando_pontos = function(){
	
	rod = global.rodada-1

	if (array_length(pontos) = 0){
	
		var obj = obj_criador_ponto
	
		with(obj){
		
			other.pontos[array_length(other.pontos)] = id
			
		}
	
		for (var i=0;i<array_length(pontos);i++){
		
			pontos[i].i = i
		
		}
	}
}

criando_coisas = function(){
	
	cria_timer -= !global.pause
	
	if (!cria_timer and objs_atu[0]<objs_qtd[rod]){
		
		randomise()
		
		var vid_mar = 1+global.rodada/12.5
		var dan_mar = 1+global.rodada/17.5
		var moe_mar = 1+global.rodada/9
		var ply_mar = 1+(instance_number(obj_player)-1)/2
		var ply_num = instance_number(obj_player)
		
		var qtd = objs_atu[0] + 2 <= objs_qtd[rod] ? irandom_range(1,2) : 1
		var lug = irandom_range(0,array_length(pontos)-1)
		var lideres_total = 5
		
		var _x = pontos[lug].x
		var _y = pontos[lug].y 
		
		repeat(qtd){
		
			var alet = random_range(.6,1.4)
		
			var vid = random_range(1*vid_mar,3*vid_mar)	* ply_mar
			var dan = random_range(1*dan_mar,3*dan_mar)	* ply_mar
			var moe = random_range(2,20) * ply_num
			var vel = random_range(.8,1.8)
			var dps = []
		
			for (var d=0;d<array_length(objs_drps);d++){
			
				var tmd	= objs_drps[d]
				var ult	= objs_drps[d][1]
			
				if (global.rodada<=ult or d = array_length(objs_drps)-1){
				
					array_copy(dps,0,objs_drps[d][0],0,array_length(objs_drps[d][0]))
					break;
					
				}
			}
		
			var obj = instance_create_layer(_x,_y,"Pessoas",obj_zumbi)
		
			obj.vida = vid 
			obj.vida_max = vid
			obj.vela = vel
			obj.dano_dmg = dan
			obj.drops = dps
			obj.moedas = moe
			obj.numb = objs_atu[0]
			obj.orde = objs_atu[0] % lideres_total
			
			if (objs_atu[0]>lideres_total){
				
				obj.lider = lideres
				
			}else{
				
				lideres[objs_atu[0]] = obj
				
			}
		
			cria_timer = objs_tem[rod]
			objs_atu[0] ++
		
		}	
	}
}

passando_as_rodadas = function(){
	
	if (objs_atu[0] >= objs_qtd[rod] and !instance_exists(obj_zumbi_pai)){
		
		rod_dir = clamp(sign(rod_muda_timer),0,1)
		
		var rod_des = [-50,50]
		
		rod_muda_timer -= !global.pause
		
		if (global.rodada < array_length(objs_qtd)){
		
			if (rod_muda_timer<-rod_muda_tempo){
			
				global.rodada++
				rod_muda_timer = rod_muda_tempo
				obj_player.vida = obj_player.vida_max
				instance_destroy(obj_arma_item)
				
				if (instance_number(obj_player)<global.players){
					
					global.spawn_aleatorio = 0
					var player_atual = obj_player.controle
					var dif = abs(instance_number(obj_player)-global.players)
					global.arma = 0
					
					repeat(dif){
					
						global.player_ord--
						var ply = instance_create_layer(x,y,"Pessoas",obj_player)
						ply.controle = !player_atual
						
					}					
				}
				
				objs_atu[0] = 0
				lideres = []
				
			}
		}else{
			
			if (rod_muda_timer = 6)show_message("acabou")
			
		}
		
		if (rod_dir>-1 and !global.pause) rod_y = lerp(rod_y,rod_des[rod_dir],.1) 
		
	}
}

setando_pontos()