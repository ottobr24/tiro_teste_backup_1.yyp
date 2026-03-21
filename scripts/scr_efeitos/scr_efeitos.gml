function inicia_mola(_cx = 1,_cy = 1){
	
	chatox = _cx
	chatoy = _cy
	
}

function volta_mola (_qtd=0.1,_x=1,_y=1){
	
	chatox=lerp(chatox,_x,_qtd)
	chatoy=lerp(chatoy,_y,_qtd)
	
}

function efeito_mola (_cx = 0.8,_cy = 0.8){
	
	chatox = _cx
	chatoy = _cy
	
	image_xscale = chatox
	image_yscale = chatoy
	
}	

function draw_mola(_sprite=sprite_index){
	
	draw_sprite_ext(_sprite,image_index,x,y,chatox,chatoy,image_angle,image_blend,image_alpha)
	
}

function inicia_shader(){
	
	branco=0	

}

function efeito_shader(_sprite=sprite_index,_qtd=1){
	
	if (branco>0){
	
		branco-=_qtd
		shader_set(sh_efeito)
	
		draw_mola(_sprite)
	
		shader_reset()
		
	}else{
	
		draw_mola(_sprite)	

	}

}
	