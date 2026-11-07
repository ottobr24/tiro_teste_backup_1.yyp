function fazendo_barulho(_x,_y,baru,pai){
	
	var b = obj_controlador
	
	if (instance_exists(b)){
	
		with(b){
	
			var tmdb = array_length(barulhos)
		
			barulhos[tmdb][0] = _x
			barulhos[tmdb][1] = _y
			barulhos[tmdb][2] = baru / 1.25
			barulhos[tmdb][3] = pai
		
		}
	}
	
	var bar = b.barulhos
	var tmdb = array_length(bar)
	
	for (var i = 0;i < tmdb;i++){
		
		with(obj_pai_pessoas){
			
			randomise()
			var chanc = irandom_range(0,100)
			var chanc_max = 25
			
			#region Barulho
			
			player_perigo = 1
					
			if (point_in_circle(x,y,bar[i][0],bar[i][1],bar[i][2]) and chanc < chanc_max and instance_exists(bar[i][3])){
				
				if (bar[i][3].object_index != object_index){
				
					alvo = bar[i][3]
				
					var dist = 16
			
					randomise()
			
					player_x = random_range(bar[i][0]-dist,bar[i][0]+dist)
					player_y = random_range(bar[i][1]-dist,bar[i][1]+dist)
			
					while(mp_grid_get_cell(obj_controlador.mapa,player_x,player_y) = 0){
			
						randomise()
			
						player_x = random_range(bar[i][0]-dist,bar[i][0]+dist)
						player_y = random_range(bar[i][1]-dist,bar[i][1]+dist)
			
					}
			
					vigia_volta = 0
				
					direction = point_direction(x,y,player_x,player_y)
					
				}else{
					
					var px = bar[i][3].player_x
					var py = bar[i][3].player_y
					var dist = 16
			
					randomise()
			
					player_x = random_range(px-dist,px+dist)
					player_y = random_range(py-dist,py+dist)
			
					while(mp_grid_get_cell(obj_controlador.mapa,player_x,player_y) = 0){
			
						randomise()
			
						player_x = random_range(px-dist,px+dist)
						player_y = random_range(py-dist,py+dist)
			
					}
			
					vigia_volta = 0
			
					direction = point_direction(x,y,player_x,player_y)
					
				}
			}
			#endregion
		}
	}
}
