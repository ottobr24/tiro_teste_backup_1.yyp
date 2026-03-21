
function retira_da_array(ar,re){
	
	var ar2 = [] array_copy(ar2,0,ar,0,array_length(ar))
	var ad2 = !is_array(re) ? [re] : re
	
	for (var i=0;i<array_length(ar2);i++){
		
		for (var r =0;r<array_length(ad2);r++){
			
			if (ar2[i] = ad2[r]){ 
				
				array_delete(ar2,i,1) 
				break
			
			}
		}
	}
	return ar2
}

function adiciona_na_array(ar,ad){
	
	var i=0
	var ar2 = [] array_copy(ar2,0,ar,0,array_length(ar))
	var ad2 = !is_array(ad) ? [ad] : ad
	
	repeat(array_length(ad2)){
		
		var tmd = array_length(ar2)	
		ar2[tmd] = ad2[i]
		i++
		
	}
	
	return ar2
}

function achando_na_array(ar,o){
	
	var ar2 = [] array_copy(ar2,0,ar,0,array_length(ar))
	
	for (var i=0;i<array_length(ar2);i++){
		
		var o2 = ar2[i]
		
		if (o = o2){
			
			return i;
			
		}
	}
	return -1
}

function copiando_array(a1,ind,qtd){
	
	var voltar = 0
	var qtds = -1
	var a6 = []
	array_copy(a6,0,a1,0,array_length(a1))
	
	repeat(qtd){
	
		var a3 = []
		var a4 = []
		var a5 = []
		array_copy(a3,0,a1,0,array_length(a1))
		
		if (array_length(a3[ind])>0){
			
			a5 = [[]]
			
			if (!is_array(a3[ind][0]) or voltar){
			
				array_copy(a3,0,a6,0,array_length(a6))
				
				var ind2 = 0
					
				repeat(qtds){
				
					if (ind2=0){ 
						
					}
					
					if (qtds) a3 = a3[ind]
					
				}
				
				qtds--
				
				for (var i=0;i<array_length(a3[ind]);i++){
				
					a5[i] = []
					if (is_array(a3[ind][i])) array_copy(a5[i],0,a3[ind][i],0,array_length(a1))
					voltar = 1
				
				}
				
			}
		
		}else{
		
		}
		if (!voltar){ 
			
			a1 = a1[ind]
			qtds++
			qtd++
			
		}
	}
	
	return a5
}
