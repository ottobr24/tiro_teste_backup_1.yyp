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

limpa_tempo = 60
limpa_timer = limpa_tempo

cria_as_coisas = function(){
    
	if (array_length(velm)>0){
		
        randomise()
        
		for (var i=0;i<array_length(velm);i++){
		
			var r = irandom_range(mxs[i][0],mxs[i][1])
			
			repeat(r){
			
				var odr = array_length(particulas)
			
				var di		= random_range(-dist[i],dist[i])
				var d		= dir[i]+di
				var ix		= random_range(ixms[i][0],ixms[i][1])
				var iy		= random_range(iyms[i][0],iyms[i][1])
				var hs		= random_range(velm[i][1],vels[i][1])
				var vs		= velm[i][0] = "hs" ? hs : random_range(velm[i][0],vels[i][0]) 
                
				var itens	= [0,d,ix,iy,cor[i],hs,vs,xx[i],yy[i],sprites[i],1,spri[i],angl[i]]
			
				for (var m=0;m<array_length(particulas[0]);m++){
				
					particulas[odr][m] = itens[m]
				
				}
			}
		}
		
		var arrays = ["xx","yy","cor","ixms","iyms","mxs","dir","vels","sprites","dist","velm","spri","angl"]
		
		for (var ar =0;ar<array_length(arrays);ar++){
			
            variable_instance_set(id,arrays[ar],[])
		
		}
	}
}
	