for (var i=1;i<array_length(particulas);i++){
	
	particulas[i][0]++
	randomise()
    
	var alp2 = 0.005
	var tm = particulas[i][0]
	var d = particulas[i][1]
	var ix = particulas[i][2]
	var hs = particulas[i][4]
	var vs = particulas[i][5]
	var _x = particulas[i][6]
	var _y = particulas[i][7]
	var spr = particulas[i][8]
	var col = particulas[i][9]
	var co = particulas[i][3]
	var alp = 1-(alp2*(tm-60))
    
	if (alp>0.15){
		
        sprite_index = spr
        image_xscale = ix
        image_yscale = ix
        
		var x1 = lengthdir_x(hs,d)
		var y1 = lengthdir_y(vs,d)
		var sw = sprite_width *ix
		var sh = sprite_height*ix
        
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
		
		draw_sprite_ext(spr,0,_x,_y,ix,ix,0,co,alp)
		
		particulas[i] = [tm,d,ix,co,hs,vs,_x,_y,spr,col]
		
	}else if (i>0){
		
		array_delete(particulas,i,1)
        
	}
}