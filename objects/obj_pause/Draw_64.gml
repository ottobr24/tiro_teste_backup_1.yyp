if (!global.pause) exit;

var alp2 = seq = seq_transicao_abrindo ? 1 : 1
var alp3 = seq = seq_transicao_abrindo ? 1 : alp2/layer_sequence_get_length(seq)*seqn
var alp = seq ? alp3 : .4

alp = clamp(alp,.4,infinity)

draw_set_colour(c_black)
draw_set_alpha(alp)

if (!instance_exists(obj_mod)) draw_rectangle(0,0,2000,2000,0)

desenha_a_barra(spr_barra)
mudando_os_controles()
desenha_texto()

draw_set_colour(-1)
draw_set_alpha(1)
