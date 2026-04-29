if (!qtd){
	
	debugando(

	[

	"fps","vspd","hspd","estado_txt","estado"
	,"x","y","escala","obj_camera.roo","obj_camera.alvo.object_index"
	,"obj_camera.x","obj_camera.y","obj_camera.pose","cx","cy","equipado","objetos"
	,"dir","armas qtd","controle","xx","players","cria_inimigos","mostra_visao"
	,"qtd modificaçoes","spawn_aleatorio"
	
	]
	,

	[

	fps,vspd,hspd,estado_txt,estado,x,y,-1,-1,-1,-1,-1,obj_camera.pose,cx,cy,equipado
	,instance_number(all),point_direction(0,0,hspd,vspd),array_length(global.armas_nome)
	,controle,obj_cria_particulas.xx,global.players,global.cria_inimigos,global.mostra_visao
	,array_length(global.armas_modn[armai]),global.spawn_aleatorio
	
	]

	,

	[

	id,id,id,id,id,id,id,obj_camera.id,obj_camera.id,obj_camera.id,obj_camera.id
	,obj_camera.id,obj_camera.id,id,id,id,0,0,0,id,obj_cria_particulas.id,0,0,0
	,0,0
	
	]

	)

}
