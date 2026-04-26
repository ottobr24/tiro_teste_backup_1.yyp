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
draw_text(20+(gw*qtd),120,recarregando_tempo)
draw_text(20+(gw*qtd),140,peso)

draw_set_colour(-1)
draw_set_halign(-1)

//if (array_length(global.armas_mode[i][2])>0 and array_length(global.armas_mode[i][2][global.armas_mods[i][2]])>0) draw_text(20,160,global.armas_mode[i][2][global.armas_mods[i][2]][0])

//if (array_length(sons)>1){
//	
//	//audio_sound_length(sons[4])
//	draw_text(20,140,audio_sound_get_track_position(sons[1]) = audio_sound_length(sons[1])/2)
//	
//}
//draw_text(20,140,global.armas_mods[i])
//if (array_length(global.armas_mods[i])>2 and array_length(global.armas_modn[i][2])>0) draw_text(20,160,global.armas_modn[i][2][global.armas_mods[i][2]])

mirando()
reseta_coisas()