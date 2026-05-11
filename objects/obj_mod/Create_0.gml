i = global.arma
index = 0
rot = 1
rotd = 1
alp=0
lista =0
listai =0
listan =0
pext = []
colidindo = 0
pontos_perto = [0,0]
pontos = [] 
bloqueados = []
enter = 0
pai = -4
ind = 0
criou = 0

cria_botoes = function(){
	
	if (!criou){
		
		var sx1 = room_width-50
		var sy1 = room_height/2
		
		var sx2 = 50
		var sy2 = sy1
		
		var cx1 = room_width/2
		var cy1 = room_height-100
		
		var vx1 = 50
		var vy1 = 50
		
		if (!instance_exists(obj_pause)){
		
			var prox = instance_create_layer(sx1,sy1,"UI",obj_mod_seta	)
			var ante = instance_create_layer(sx2,sy2,"UI",obj_mod_seta	)
			var comp = instance_create_layer(cx1,cy1,"UI",obj_mod_compra)
			
			prox.prox = 1
			ante.prox = 0
		
		}
			
		var volt = instance_create_layer(vx1,vy1,"UI",obj_mod_volta	)
		
		criou = 1
		
	}
}