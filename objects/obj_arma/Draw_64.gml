if !equip exit;

if (!instance_exists(pai)){
	
	instance_destroy()
	exit;
	
}

var hs = [fa_left,fa_right]
var co = pai.image_blend
var gw = display_get_gui_width()-40

draw_set_halign(hs[qtd])
draw_set_colour(co)

if (qtd = 0) 
if (qtd = 1) draw_set_halign(fa_right)

draw_set_font(fnt_menu)

if (!modo)	draw_text_transformed(20+(gw*qtd),40,string(tiro) + "/" + string(municao	),1,1,0)
if ( modo)	draw_text_transformed(20+(gw*qtd),40,string(tirg) + "/" + string(mung	),1,1,0)

draw_set_font(-1)

draw_text(20+(gw*qtd),20,global.armas_nome[i])
draw_text(20+(gw*qtd),60,dano)
draw_text(20+(gw*qtd),80,prec_menos)
draw_text(20+(gw*qtd),100,tiro_tempo)
draw_text(20+(gw*qtd),120,direction)
draw_text(20+(gw*qtd),140,pai.direction)

draw_set_halign(-1)

draw_set_color(c_red)
draw_set_alpha(mira_alp)

var _x = mx
var _y = my

var _p = prec*2

draw_rectangle(_x-1, _y+10+_p ,_x+2   ,_y+1+_p,0)
draw_rectangle(_x-1, _y-10-_p ,_x+2   ,_y-1-_p,0)
draw_rectangle(_x-10-_p, _y-1  ,_x-1-_p,_y+2   ,0)
draw_rectangle(_x+10+_p, _y-1  ,_x+1+_p,_y+2   ,0)

draw_set_alpha(1)
draw_set_color(-1)
draw_set_font(-1)
	
reseta_coisas()