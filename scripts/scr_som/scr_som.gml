function toca_som(_som,_volume,dismn,dismx,fall = audio_falloff_none,_loop=0,pt = .1,alet = 0,d3 = 1){
	
	if (asset_get_type(_som) == asset_sound or is_array(_som)){
		
		randomise()
		
		var som = _som
		var ind = 0
		var pit = 1
		
		if (!is_array(_som)){
			
			som = [_som]
			
		}
		
		if (alet) ind = irandom_range(0,array_length(som)-1)
		
		pit = random_range(1-pt,1+pt)
		
		var vol = _volume/1.75 * (global.configs[0][0] / 50)
		
		if ( d3) return audio_play_sound_at	(som[ind],x,y,0,dismn,dismx,fall,_loop,10,vol,,pit	)//_on(em,som[ind],_loop,10,_volume/4,,pit)
		if (!d3) return audio_play_sound	(som[ind],10,_loop,vol,,pit							)//_on(em,som[ind],_loop,10,_volume/4,,pit)
		
	}
}
