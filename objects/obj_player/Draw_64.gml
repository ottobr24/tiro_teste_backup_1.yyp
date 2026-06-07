var gw = display_get_gui_width()-20

draw_set_halign(fa_right)

if (!global.debug) draw_text(gw,25,round(fps_real2))

draw_set_halign(-1)
	
if (!qtd){
	
	debugando(
	
	[
	
	"fps","vspd","hspd","estado_txt","estado"
	,"x","y","escala","obj_camera.roo","obj_camera.alvo.object_index"
	,"obj_camera.x","obj_camera.y","obj_camera.pose","cx","cy","equipado","objetos"
	,"dir","armas qtd","controle","players","cria_inimigos","mostra_visao"
	,"qtd modificaçoes","spawn_aleatorio","instance_count","pause","colisao","zumbi"
	,"players numb"
	
	]
	,
	
	[
	
	fps,vspd,hspd,estado_txt,estado,x,y,-1,-1,-1,-1,-1,obj_camera.pose,cx,cy,equipado
	,instance_number(all),point_direction(0,0,hspd,vspd),array_length(global.armas_nome)
	,controle,global.players,global.cria_inimigos,global.mostra_visao
	,array_length(global.armas_modn[armai]),global.spawn_aleatorio,instance_count
	,global.pause,colisao,global.zumbi,instance_number(obj_player)
	
	]
	
	,
	
	[
	
	id,id,id,id,id,id,id,obj_camera.id,obj_camera.id,obj_camera.id,obj_camera.id
	,obj_camera.id,obj_camera.id,id,id,id,0,0,0,id,0,0,0,0,0,0,0,id,0
	,0
	
	]
	
	)

}
