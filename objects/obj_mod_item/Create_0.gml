rodando = function(ixmin = -1,ixmax = 1,vel = 1){
	
	image_xscale = cos(get_timer()/(500000))*vel
	image_xscale = clamp(image_xscale,ixmin,ixmax)
	image_yscale = ixmax
	
}
