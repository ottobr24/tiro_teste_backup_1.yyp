desenha_a_barra(spr_barra)
mudando_os_controles()
desenha_texto()

var alp2 = seq = seq_transicao_abrindo ? 1 : 1
var alp3 = seq = seq_transicao_abrindo ? 1 : alp2/layer_sequence_get_length(seq)*seqn
var alp = seq ? alp3 : 0

draw_set_colour(c_black)
draw_set_alpha(alp)

draw_rectangle(0,0,2000,2000,0)

draw_set_colour(-1)
draw_set_alpha(1)

//draw_text(20,20,global.configs)
draw_text(20,40,global.controle)//resol[global.configs[3][1]][global.configs[3][2]][0])
//
