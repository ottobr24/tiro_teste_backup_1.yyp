if !equip exit;

if (!instance_exists(pai)){
	
	instance_destroy()
	exit;
	
}

var hs = [fa_left,fa_right]
var co = pai.image_blend
var gw = display_get_gui_width()-40

var gui_w = display_get_gui_width ()
var gui_h = display_get_gui_height()

var texto_xesc	= 1//gui_w / 1280
var texto_yesc	= 1//gui_h / 720

var texto_margy = 20*texto_yesc

draw_set_halign(hs[qtd])
draw_set_colour(co)

if (qtd = 0) 
if (qtd = 1) draw_set_halign(fa_right)

draw_set_font(fnt_menu)

if (!modo)	draw_text_transformed(20+(gw*qtd),texto_margy*2,string(tiro) + "/" + string(municao	),texto_xesc,texto_yesc,0)
if ( modo)	draw_text_transformed(20+(gw*qtd),texto_margy*2,string(tirg) + "/" + string(mung	),texto_xesc,texto_yesc,0)

draw_text_transformed(20+(gw*qtd),texto_margy*1	,global.armas_nome[i]	,texto_xesc,texto_yesc,0)
draw_text_transformed(20+(gw*qtd),texto_margy*3	,som_cock				,texto_xesc,texto_yesc,0)
draw_text_transformed(20+(gw*qtd),texto_margy*4	,som_recc				,texto_xesc,texto_yesc,0)
draw_text_transformed(20+(gw*qtd),texto_margy*5	,som_recf				,texto_xesc,texto_yesc,0)
//draw_text_transformed(20+(gw*qtd),texto_margy*6	,som_tiro				,texto_xesc,texto_yesc,0)
//draw_text_transformed(20+(gw*qtd),texto_margy*7	,pai.direction			,texto_xesc,texto_yesc,0)

draw_set_halign(-1)

var mira_co = [c_red,c_green]
	
var _x = mx
var _y = my

var _p = prec*2

var tmdb	= 10 * texto_xesc
var tmdd1	= 2	 * texto_xesc
var tmdd2	= 1	 * texto_xesc

var bordt	= 0	 //* texto_xesc

draw_set_alpha(mira_alp)
draw_set_color(mira_co[qtd])

draw_rectangle(_x-tmdd2		,_y+tmdb+_p	,_x+tmdd1	,_y+tmdd2+_p,0)
draw_rectangle(_x-tmdd2		,_y-tmdb-_p	,_x+tmdd1	,_y-tmdd2-_p,0)
draw_rectangle(_x-tmdb-_p	,_y-tmdd2	,_x-tmdd2-_p,_y+tmdd1	,0)
draw_rectangle(_x+tmdb+_p	,_y-tmdd2	,_x+tmdd2+_p,_y+tmdd1	,0)

draw_set_colour(c_black)

draw_rectangle(_x-tmdd2		,_y+tmdb+_p	,_x+tmdd1	,_y+tmdd2+_p,1)
draw_rectangle(_x-tmdd2		,_y-tmdb-_p	,_x+tmdd1	,_y-tmdd2-_p,1)
draw_rectangle(_x-tmdb-_p	,_y-tmdd2	,_x-tmdd2-_p,_y+tmdd1	,1)
draw_rectangle(_x+tmdb+_p	,_y-tmdd2	,_x+tmdd2+_p,_y+tmdd1	,1)

draw_set_alpha(1)
draw_set_color(-1)
draw_set_font(-1)
	
reseta_coisas()