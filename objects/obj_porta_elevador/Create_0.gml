filhos = []

abrindo = 0
abrindo_tempo = 120
abrindo_timer = abrindo_tempo

aberto_tempo = 240
aberto_timer = aberto_tempo
aberto_dist = 64
aberto = 0

checa_tempo = 60
checa_timer = checa_tempo

var qtd = 2
var i = 0

repeat(qtd){
    
    var tmdx = sprite_width
    var tmdy = sprite_width
    
    var margx = tmdx / qtd
    var margy = tmdy / qtd
    
	var x1 = i ? x + lengthdir_x(margx,image_angle) : x 
	var y1 = i ? y + lengthdir_y(margy,image_angle) : y 
	
    var _x = image_angle = 0 ? x1 + (margx * i) : x1
    var _y = image_angle = 0 ? y1 : y1 - (margx * i)
    
	var cima_imx = i ? -1 : 1

    var bloc = cria_minis(_x,_y,obj_miniporta_elevador,qtd,spr_porta_elevador,objetos.elevador)
    
	bloc.cima = i
	bloc.imx_org = image_xscale * cima_imx / qtd
	
	filhos[i] = bloc
	
    i++
    
}

abrindo_e_fechando = function(){
	
	var objs = [obj_player,obj_zumbi_pai,obj_inimigo]
	
	checa_timer--
	
	if (!checa_timer and !aberto){
		
		for (var o=0;o<array_length(objs);o++){
			
			var dis = instance_nearest(x,y,objs[o])
			
			if (distance_to_object(dis)<aberto_dist){
				
				abrindo = 1
				break;
				
			}
			
			if (o+1 = array_length(objs)){
				
				abrindo = 0
				
			}
		}
		
		checa_timer = checa_tempo
		
	}
	
	if (abrindo){
		
		abrindo_timer--
		
		if (!abrindo_timer){
			
			aberto = 1
			abrindo_timer = abrindo_tempo
			
		}
	}
	
	if (aberto){
		
		aberto_timer--
	
		if (!aberto_timer){
		
			aberto = 0
			abrindo = 0
			aberto_timer = aberto_tempo
		
		}
	}
	
	for (var f=0;f<array_length(filhos);f++){
		
		var imx = filhos[f].imx_org
		
		if (abrindo){
			
			filhos[f].image_xscale -= imx / abrindo_tempo
			
		}else{
			
			filhos[f].image_xscale += imx / abrindo_tempo
			
		}
		
		filhos[f].image_xscale = clamp(filhos[f].image_xscale,min(0,imx),max(imx,0))
		
	}
}
