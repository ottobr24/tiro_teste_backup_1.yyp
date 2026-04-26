xx = x
yy = y
cor = 0
dir = direction
dist = 180
cria_parede = 0
cria_tiro   = 0
cria_pente   = 0
cria_tirof   = 0
t=0
particulas = [[4,0,0,0,0,0,0,0,0,0,0,0,0]]
colisao = [obj_miniparede,obj_miniporta]
particulas_infos = []
ixms = []
iyms = []
vels = []
velm = []
col = []
spri = 0
angl = 0
mxs = []
sprites = 0

cria_as_coisas = function(){
    
	if (array_length(velm)>0){
	
		var a = [c_white,make_color_rgb(80,80,80),make_color_rgb(160,65,13),make_color_rgb(255,10,10)]
		
		randomize()
		var r = irandom_range(mxs[0][0],mxs[0][1])
			
		for (var b=0;b<r;b++){
			
			var odr = array_length(particulas)
			
			for (var m=0;m<array_length(particulas[0]);m++){
				
				//var tmp = random_range(60*3,60*7)
				var di = random_range(-dist[0],dist[0])
				var d = dir[0]+di
				var ix =random_range(ixms[0][0],ixms[0][1])
				var iy =random_range(iyms[0][0],iyms[0][1])
				var hs = random_range(velm[0][1],vels[0][1])
				var vs = random_range(velm[0][0],vels[0][0])
				var itens = [0,d,ix,iy,cor[0],hs,vs,xx[0],yy[0],sprites[0],1,spri[0],angl[0]]
				particulas[odr][m] = itens[m]
				
			}
		}
		
		var arrays = ["xx","yy","cor","ixms","iyms","mxs","dir","vels","sprites","dist","velm","spri","angl"]
		
		for (var ar =0;ar<array_length(arrays);ar++){
		
			if (variable_instance_exists(id,arrays[ar])) array_delete(variable_instance_get(id,arrays[ar]),0,1)
		
		}
	}
}