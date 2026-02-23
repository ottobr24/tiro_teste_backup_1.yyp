function toca_som(_som,_volume,_loop=0,p = 1,pt = .1,alet = 0){
	
	var em = id.emitter
	
	if (asset_get_type(_som) == asset_sound){
		
		randomise()
		
		var som = _som
		var ind = 0
		var pit = 1
		
		if (!is_array(_som)){
			
			som = [_som]
			
		}
		
		if (alet) ind = irandom_range(0,array_length(som)-1)
		
		if (p) pit = random_range(1-pt,1+pt)
		
		audio_play_sound_on(em,som[ind],_loop,10,_volume*8,,pit)
		//audio_play_sound(_som,10,_loop,_volume*8,,pit)
		
	}
}
