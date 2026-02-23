debugando(

[

"fps","vspd","hspd","estado_txt","estado"
,"x","y","escala","obj_camera.roo","obj_camera.alvo.object_index"
,"obj_camera.x","obj_camera.y","cx","cy","equipado","objetos"

]
,

[

fps,vspd,hspd,estado_txt,estado,x,y,-1,-1,-1,-1,-1,cx,cy,equipado
,instance_number(all)

]

,

[

id,id,id,id,id,id,id,obj_camera.id,obj_camera.id,obj_camera.id,obj_camera.id
,obj_camera.id,id,id,id,0

]

)


window_set_cursor(cr_none)
draw_set_font(fnt_menu)

if (instance_exists(arma)) draw_text_transformed(20,40,string(arma.tiro) + "/" + string(arma.municao),1,1,0)

var _x = device_mouse_x_to_gui(0)
var _y = device_mouse_y_to_gui(0)

var prc = instance_exists(arma) ? arma.prec : 1

var _p = prc*2

draw_set_color(c_red)

draw_rectangle(_x-1, _y+10+_p ,_x+2   ,_y+1+_p,0)
draw_rectangle(_x-1, _y-10-_p ,_x+2   ,_y-1-_p,0)
draw_rectangle(_x-10-_p, _y-1  ,_x-1-_p,_y+2   ,0)
draw_rectangle(_x+10+_p, _y-1  ,_x+1+_p,_y+2   ,0)

draw_set_color(-1)
draw_set_font(-1)
	

hspd=0
vspd=0