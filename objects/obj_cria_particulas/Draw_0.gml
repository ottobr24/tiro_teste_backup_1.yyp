for (var i=1;i<array_length(particulas);i++){
	
	particulas[i][0]++
    
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
		
        sprite_index = spr
        image_xscale = ix
        image_yscale = iy
        
		var x1 = lengthdir_x(hs,d)
		var y1 = lengthdir_y(vs,d)
		
		var sw = sprite_get_width (spr) * ix
		var sh = sprite_get_height(spr) * iy
        
        var obj = instance_place(_x+x1,_y,colisao)
        
        if (obj and col){
        
    		hs=-hs/5
            
        }
        
		_x+=lengthdir_x(hs,d)
		
        obj = place_meeting(_x,_y+y1,colisao)

		if (obj and col){
            
			vs=-vs/5
            
		}
		
		_y+=lengthdir_y(vs,d)

		var m = 0.25

		hs = lerp(hs,0,0.1)
		hs = clamp(hs,0,10000)

		vs = lerp(vs,0,0.1)
		vs = clamp(vs,0,10000)
		
		if (position_meeting(_x,_y,obj_camera)) draw_sprite_ext(spr,ind,_x,_y,ix,iy,ang,co,alp)
		
		particulas[i] = [tm,d,ix,iy,co,hs,vs,_x,_y,spr,col,ind,ang]
		
	}else if (i>0){
		
		array_delete(particulas,i,1)
        
	}
}