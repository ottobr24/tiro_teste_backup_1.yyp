function debugando_acessorios(){
	
	var ace_qtd = 0
	
	for (var i1=0;i1<array_length(global.armas_mode);i1++){
		
		for (var i2=0;i2<array_length(global.armas_mode[i1]);i2++){
			
			ace_qtd += array_length(global.armas_mode[i1][i2])
			
			for (var i3=0;i3<array_length(global.armas_mode[i1][i2]);i3++){
		
				var ace = global.armas_mode[i1][i2][i3]
				var ace_tmd = array_length(ace)
				
				if (ace_tmd > 8){
					
					show_debug_message([[i1,i2,i3],ace[0]])
					show_debug_message([[i1,i2,i3],ace[1]])
					show_debug_message([[i1,i2,i3],ace[2]])
					show_debug_message([[i1,i2,i3],ace[3]])
					show_debug_message([[i1,i2,i3],ace[4]])
					show_debug_message([[i1,i2,i3],ace[5]])
					show_debug_message([[i1,i2,i3],ace[6]])
					show_debug_message([[i1,i2,i3],ace[7]])
					show_debug_message([[i1,i2,i3],ace[8]])
					show_debug_message([[i1,i2,i3],ace[9]])
					show_debug_message([[i1,i2,i3],ace[10]])
					show_debug_message([[i1,i2,i3],ace[11]])
					show_debug_message([[i1,i2,i3],ace[12]])
					show_debug_message([[i1,i2,i3],ace[13]])
					show_debug_message([[i1,i2,i3],ace[14]])
					show_debug_message([[i1,i2,i3],ace[15]])
					show_debug_message([[i1,i2,i3],ace[16]])
					show_debug_message([[i1,i2,i3],ace[17]])
					show_debug_message([[i1,i2,i3],ace[18]])
					show_debug_message([[i1,i2,i3],ace[19]])
					show_debug_message([[i1,i2,i3],ace[20]])
					show_debug_message([[i1,i2,i3],ace[21]])
					show_debug_message([[i1,i2,i3],ace[22]])
					show_debug_message([[i1,i2,i3],ace[23]])
					show_debug_message([[i1,i2,i3],ace[24]])
					show_debug_message([[i1,i2,i3],ace[25]])
					show_debug_message([[i1,i2,i3],ace[26]])
					show_debug_message([[i1,i2,i3],ace[27]])
					show_debug_message([[i1,i2,i3],ace[28]])
					
				}
			}
		}
	}
	
	show_debug_message(ace_qtd)
	
}

debugando_acessorios()