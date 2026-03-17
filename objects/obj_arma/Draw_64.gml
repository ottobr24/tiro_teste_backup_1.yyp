draw_text(20,20,global.armas_nome[i])
draw_text(20,60,global.armas_sons[i])
draw_text(20,80,array_length(global.armas_sons[i]))
draw_text(20,100,sons)
draw_text(20,120,global.armas_part[i])
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