for (var i=1;i<array_length(particulas);i++){
	
	if (!is_array(particulas[i])) continue
	
	particulas[i][0] += !global.pause
    
	var alp2	=	0.005
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