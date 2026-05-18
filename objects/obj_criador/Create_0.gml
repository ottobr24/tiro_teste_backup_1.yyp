cria_tempo = 30
cria_timer = cria_tempo

colisao = [] array_copy(colisao,0,global.colisao_normal,0,array_length(global.colisao_normal))

pontos = []

objs_qtd	= [0,7,15,29,50,76,100]
objs_drps	= [[[1,2,3],3],[[1,2,3,4,5,6],5,],[[1,2,3,4,5,6,7,8],8],[[1,2,3,4,5,6,7,8,9,12,15,32,31,30,29],12],[[1,2,3,4,5,6,7,8,9,10,11,12,13,15,32,31,30,29,27],17],[[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19,20,27,29,30,31,32],17]]
objs_atu	= [0]

rod = global.rodada-1

rod_muda_tempo = 120
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
		
		var vid_mar = 1+global.rodada/10
		var dan_mar = 1+global.rodada/20
		var moe_mar = 1+global.rodada/15
		
		var lug = irandom_range(0,array_length(pontos)-1)
		
		var _x = pontos[lug].x
		var _y = pontos[lug].y 
		
		var alet = random_range(.6,1.4)
		
		var vid = random_range(1*vid_mar,5*vid_mar)
		var dan = random_range(1*dan_mar,3*dan_mar)
		var moe = random_range(6*dan_mar,30*dan_mar)
		var vel = random_range(1 ,1.7)
		var dps = []
		
		for (var d=0;d<array_length(objs_drps);d++){
			
			var tmd		= objs_drps[d]
			var ult	= objs_drps[d][1]
			
			if (global.rodada<=ult){
				
				array_copy(dps,0,objs_drps[d][0],0,array_length(objs_drps[d][0]))
				break;
				
			}
		}
		
		var obj = instance_create_layer(_x,_y,"Pessoas",obj_zumbi)
		
		obj.vida = vid obj.vida_max = vid
		obj.vela = vel
		obj.dano_dmg = dan
		obj.drops = dps
		obj.moedas = moe
		
		cria_timer = cria_tempo * alet
		objs_atu[0] ++
		
	}
}

passando_as_rodadas = function(){
	
	if (objs_atu[0] >= objs_qtd[rod] and !instance_exists(obj_zumbi_pai)){
		
		rod_dir = clamp(sign(rod_muda_timer),0,1)
		
		var rod_des = [-50,50]
		
		rod_muda_timer--
		
		if (global.rodada < array_length(objs_qtd)){
		
			if (rod_muda_timer<-rod_muda_tempo){
			
				global.rodada++
				rod_muda_timer = rod_muda_tempo
				obj_player.vida = obj_player.vida_max
				objs_atu[0] = 0
				
			}
		}else{
			
			if (rod_muda_timer = 6)show_message("acabou")
			
		}
		
		if (rod_dir>-1) rod_y = lerp(rod_y,rod_des[rod_dir],.1) 
		
	}
}

setando_pontos()