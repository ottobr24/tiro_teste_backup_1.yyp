draw_self()
vendo_tudo()

desenha_barra(vida,vida_max,100,20,c_black,c_green,x,y-50)

if (global.debug){
	
	var dir = direction + coid
			
	var ix = !adi ? -1 : 1
	var ang = ix > 0 ? dir : dir+180
			
	draw_text(x,y		,ang	)
	draw_text(x,y-20	,cd		)
	//draw_text(x,y-40	,cx3	)
	//draw_text(x,y-60	,cy3	)
	//draw_text(x,y-80	,arma.x	)
	//draw_text(x,y-100	,arma.y	)
	
}
