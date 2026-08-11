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
    
	static arrays = ["xx","yy","cor","ixms","iyms","mxs","dir","vels","sprites","dist","velm","spri","angl"]
		
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
		
		for (var ar =0;ar<array_length(arrays);ar++){
			
            variable_instance_set(id,arrays[ar],[])
		
		}
	}
}

desenha_as_coisas = function(){
	
	for (var i=1;i<array_length(particulas);i++){
	
		if (!is_array(particulas[i])) continue
	
		particulas[i][0] += !global.pause
    
		static alp2	=	0.005
		
		var tm		=	particulas[i][0]
		var d		=	particulas[i][1]
		var ix		=	particulas[i][2]
		var iy		=	particulas[i][3]
		var hs		=	particulas[i][5]
		var vs		=	particulas[i][6]
		var _x		=	particulas[i][7]
		var _y		=	particulas[i][8]
		var spr		=	particulas[i][9]
		var col		=	particulas[i][10]
		var ind		=	particulas[i][11]
		var ang		=	particulas[i][12]
		var co		=	particulas[i][4]
		var alp		=	1-(alp2*(tm-60))
    
		if (alp>0.15){
		
			if (!global.pause){
		
		        sprite_index = spr
		        image_xscale = ix
		        image_yscale = iy
        
				var x1 = lengthdir_x(hs,d)
				var y1 = lengthdir_y(vs,d)
		
				if (place_meeting(_x+x1,_y+y1,colisao)){
			
			    	hs=-hs/5
					vs=-vs/5
            
				}
		
				x1 = lengthdir_x(hs,d)
				y1 = lengthdir_y(vs,d)
		
				_x+=x1
				_y+=y1

				hs = lerp(hs,0,0.1)
				vs = lerp(vs,0,0.1)
		
			}
		
			if (position_meeting(_x,_y,obj_camera)) draw_sprite_ext(spr,ind,_x,_y,ix,iy,ang,co,alp)
		
			particulas[i] = [tm,d,ix,iy,co,hs,vs,_x,_y,spr,col,ind,ang]
		
		}else if (i>0){
		
			array_delete(particulas,i,1)
        
		}
	}	
}