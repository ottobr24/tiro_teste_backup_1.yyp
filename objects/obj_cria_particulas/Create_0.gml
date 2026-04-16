xx = x
yy = y
cor = 0
dir = direction
dist = 180
cria_parede = 0
cria_tiro   = 0
t=0
particulas = [[4,0,0,0,0,0,0,0,0,0,0,0]]
colisao = [obj_miniparede,obj_miniporta]
particulas_infos = []
ixms = [0,0]
vels = [0,0]
velm = [0,0]
spri = 0
angl = 0
mxs = [1,1]
sprites = 0

cria_as_coisas = function(vrv,mn,mx,spr,co = cor,vsmx = 5,hsmx = 5,col=1,ixmn = 1.5,ixmx = 3,vsmn = 5,hsmn = 5,sprin = 0,angle = 0){
    
    if (variable_instance_get(id,vrv) = 1){
        
        var a = [c_white,make_color_rgb(80,80,80),make_color_rgb(160,65,13),make_color_rgb(255,10,10)]
    
    	randomize()
    	var r = irandom_range(mxs[0],mxs[1])
    	
        vels = [vsmx,hsmx]
        velm = [vsmn,hsmn]
        
    	for (var b=0;b<r;b++){
    		
    		var odr = array_length(particulas)
    		
    		for (var m=0;m<array_length(particulas[0]);m++){
    			
    			var tmp = random_range(60*3,60*7)
    			var di = random_range(-dist,dist)
    			var d = dir+di
    			var ix =random_range(ixms[0],ixms[1])
    			var hs = random_range(velm[1],vels[1])
    			var vs = random_range(velm[0],vels[0])
    			var itens = [0,d,ix,co,hs,vs,xx,yy,spr,col,spri,angle]
    			particulas[odr][m] = itens[m]
                
    		}
    	}
    	
    	existe_variavel(vrv,0)
    
    }
}