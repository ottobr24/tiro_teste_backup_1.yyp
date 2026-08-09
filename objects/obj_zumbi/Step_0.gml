sprite_index = spr_zumbi

estado()    
colidindo()

var qtd = 14
var dif = qtd / ataque_tempo
var rea = dif * (abs(ataque_timer-ataque_tempo)+1)

ii += (2 + rea) / 60 * !global.pause

image_blend = c_white
