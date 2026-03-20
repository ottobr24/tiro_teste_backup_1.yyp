debugando(

[

"fps","vspd","hspd","estado_txt","estado"
,"x","y","escala","obj_camera.roo","obj_camera.alvo.object_index"
,"obj_camera.x","obj_camera.y","obj_camera.pose","cx","cy","equipado","objetos"
,"dir","armas qtd"

]
,

[

fps,vspd,hspd,estado_txt,estado,x,y,-1,-1,-1,-1,-1,obj_camera.pose,cx,cy,equipado
,instance_number(all),point_direction(0,0,hspd,vspd),array_length(global.armas_nome)

]

,

[

id,id,id,id,id,id,id,obj_camera.id,obj_camera.id,obj_camera.id,obj_camera.id
,obj_camera.id,obj_camera.id,id,id,id,0,id,0

]

)


draw_set_font(fnt_menu)

if (instance_exists(arma)){ 
	
	if (!arma.modo)	draw_text_transformed(20,40,string(arma.tiro) + "/" + string(arma.municao),1,1,0)
	if ( arma.modo)	draw_text_transformed(20,40,string(arma.tirg) + "/" + string(arma.mung),1,1,0)

}
