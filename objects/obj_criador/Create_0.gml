cria_tempo = 30
cria_timer = [30]

colisao = [] array_copy(colisao,0,global.colisao_normal,0,array_length(global.colisao_normal))

pontos = []

objs_tem	= [[0,0,0,0],[42,0,0,0],[40,0,0,0],[38,0,204,0],[37,0,187,0],[35,140,152,0],[35,133	,111,0],[34,156,95,0],[34,150,88,0],[33,143,84,0],[32,140,81,180],[31,137,77,170],[30,130,73,140],[29,120,70,110],[28,114,66,100],[26,110,62,91],[25,102,57,86],[24,100,53,86],[23,100,51,79],[22,96,49,76],[20,92,47,70],[19,89,44,66],[18,86,41,62],[17,84,39,59],[16 ,81,37,56],[15 ,77,35,52]]
objs_qtd	= [[0,0,0,0],[10,0,0,0],[17,0,0,0],[22,0,4  ,0],[27,0,6  ,0],[31,1	,8  ,0],[36,1	,11 ,0],[41,1  ,14,0],[45,2  ,17,0],[49,3  ,20,0],[55,3  ,23,1  ],[60,3  ,25,1  ],[63,4  ,28,2  ],[66,4  ,31,3  ],[69,5  ,34,4  ],[71,5  ,36,6 ],[74,6  ,38,8 ],[76,6  ,40,9 ],[80,7  ,42,12],[83,8 ,44,13],[87,8 ,47,14],[91,8 ,50,15],[95,9 ,54,17],[99,9 ,57,19],[105,9 ,60,21],[113,10,64,23]]

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
	
	for (var z=0;z<array_length(objs_qtd[rod]);z++){
		
		if (array_length(cria_timer)	<= z ) cria_timer[z] = cria_tempo
		if (array_length(objs_atu)		<= z ) objs_atu[z] = 0
		
		cria_timer[z]--
		
		if (!cria_timer[z] and objs_atu[z]<objs_qtd[rod][z]){
		
			randomise()
		
			var vid_mar = 1+global.rodada/12.5
			var dan_mar = 1+global.rodada/17.5
			var moe_mar = 1+global.rodada/9
			var ply_mar = 1+(instance_number(obj_player)-1)/2
			var ply_num = instance_number(obj_player)
		
			var qtd = 1//objs_atu[z] + 2 <= objs_qtd[rod][z] ? irandom_range(1,2) : 1
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
			
				var armi = irandom_range(0,array_length(dps)-1)
				armi = clamp(armi,0,array_length(dps)-1)
				
				var armai = dps[armi]
				
				var obj = instance_create_layer(_x,_y,"Pessoas",global.zumbis[z])
		
				obj.dano_dmg = dan
				obj.drops = dps
				obj.moedas = moe
				obj.numb = objs_atu[z]
				obj.orde = objs_atu[z] % lideres_total
				obj.armai = armai
			
				if (objs_atu[z]>lideres_total){
				
					obj.lider = lideres
				
				}else{
				
					lideres[objs_atu[z]] = obj
				
				}
		
				cria_timer[z] = objs_tem[rod][z]
				objs_atu[z]++
		
			}	
		}
	}
}

passando_as_rodadas = function(){
	
	var qtd1 = 0
	var qtd2 = 0
	
	for (var z =0;z<array_length(objs_qtd[rod]);z++){
		
		qtd1 += objs_atu[z]
		qtd2 += objs_qtd[rod][z]
		
	}
	
	if (qtd1 >= qtd2 and !instance_exists(obj_pai_zumbi)){
		
		rod_dir = clamp(sign(rod_muda_timer),0,1)
		
		var rod_des = [-50,50]
		
		rod_muda_timer -= !global.pause
		
		if (global.rodada < array_length(objs_qtd)){
		
			if (rod_muda_timer<-rod_muda_tempo){
			
				global.rodada++
				rod_muda_timer = rod_muda_tempo
				obj_player.vida = obj_player.vida_max
				instance_activate_object(obj_arma_item)
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
				
				objs_atu = [0]
				lideres = []
				
			}
		}else{
			
			if (rod_muda_timer = 6)show_message("acabou")
			
		}
		
		if (rod_dir>-1 and !global.pause) rod_y = lerp(rod_y,rod_des[rod_dir],.1) 
		
	}
}

setando_pontos()