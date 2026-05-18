
#region Acessorios

global.acessorios = {
	
	#region Acessorios Gerais
	
	nada_bloqx : function(pos,idbloq,idr = 300,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [idr,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,idbloq,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	geral_pente : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	geral_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region Revolver
	
	#region RT 85
		
	rt_verde : function(pos,val2 = []){
		
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [15]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	rt_grip : function(pos,val2 = []){
		
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [1]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("x deu erro") array_insert(variaveis,0,0) }
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("y deu erro") array_insert(variaveis,1,0) }
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	#endregion
	
	#region Colt Python
	
	colt_cano : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [2,0,0,.75,0,0,0,-.25,0,0,0,0,0.01,.05,-.1,0,0,-1,0,-35]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region Rhino
	
	rhino_cano : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [2,0,0,.75,0,0,0,-.25,0,0,0,0,0.01,.05,-.1,0,0,-1,0,-35]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	rhino_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-1,0,0,0,0,0,0,0,0.05,0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#endregion
	
	#region Pistolas
	
	#region Geral
	
	pistola_laser : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [9,0,0,0,0,0,0,0,0,0,0,0,0,0.02,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	pistola_grip : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [1]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	pistola_silenciador : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [4,0,0,-.25,-.5,0,-.35,-.35,-.35,0,0,0,0,0.03,0,0,0,-1,0,-100]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	pistola_lanterna : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [8,0,0,0,0,0,0,0,0,0,0,0,0,0.02,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	pistola_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	pistola_cor : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [15]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region M1911
	
	m1911_silenciador : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [4,0,0,-.25,-.5,0,-.5,-.5,-.5,0,0,0,0.01,0.03,0,0,0,-1,0,-150]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	m1911_pente : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,8,0,2,30,3,3,3,0,0,0,.04,0.15,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region Glock
	
	glock_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,-1.5,0,-1,-1,-1,0,0,0,0,0.05,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	glock_pente_extra : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [12,0,0,0,.3,-15,.3,.3,.3,0,0,0,0.03,0.1,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	glock_pente : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,5,0,.5,10,0,0,.5,0,0,0,0.01,0.05,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region M9
	
	berreta_silenciador : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [4,0,0,-.25,-.35,0,0,0,0,0,0,0,0.01,0.03,0,0,0,-1,0,-100]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	berreta_freio : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [3,0,0,0,-.75,0,0,0,-.75,0,0,0,0,0.01,0.2,0,0,-1,0,20]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region Usp
	
	usp_silenciador : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [4,0,0,-.25,-.35,0,0,0,0,0,0,0,0.01,0.03,0,0,0,-1,0,-100]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	usp_pente : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,7,0,1.5,25,1,1,2,0,0,0,0.01,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region Desert Eagle
	
	desert_auto : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [0,-1,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	desert_pente : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,4,0,2,30,1,1,1.5,0,0,0,0.02,0.15,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#endregion
	
	#region Submetralhadoras
	
	#region Geral
	
	sub_laser : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [9,0,0,0,0,0,0,0,0,0,0,0,0.00,0.02,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sub_grip : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [1]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sub_silenciador : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [4,0,0,-.15,-.35,0,0,0,-.5,0,0,0,0.01,0.03,0,0,0,-1,0,-125]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sub_lanterna : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [8,0,0,0,0,0,0,0,0,0,0,0,0,0.02,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sub_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-.75,0,0,0,0,0,0,0,0.04,0.01,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sub_cor : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [15]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sub_fore : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.75,15,-.5,-.5,-1,0,0,0,0.00,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region MP9
	
	mp9_gati : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [0,0,0,-.2,0,0,0,0,0,0,0,0,0,0.015,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	mp9_fore : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-1,5,-1,-1,-1.5,0,0,0,0.00,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	mp9_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,-1.5,0,-1,-1,-1.5,0,0,0,.01,.05,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	mp9_bala : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [16,0,-6,2,3.5,30,2.5,2.5,3,0,0,0,0.00,0.04,0.4,0,0,-1,0,125]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region Uzi
	
	uzi_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,-1.25,0,-1,-1,-1.25,0,0,0,0.01,0.04,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	uzi_coronha1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,-1.25,0,-.8,-.8,-1.25,0,0,0,0.02,0.07,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region Mac-10
	
	mac_pente : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,8,0,.25,10,.15,.15,.25,0,0,0,0.01,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	mac_bala : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [16,0,-3,1.5,3,30,2,2,3,0,0,0,0.00,0.05,0.3,0,0,-1,0,75]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	mac_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,0,0,0,0,0,0,0,0,0.00,0.0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	mac_coronha1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,-1.5,0,-1.25,-1.25,-1.5,0,0,0,0.01,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region Kriss Vector
	
	vector_fore : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.5,15,-.5,-.5,-.75,0,0,0,0.00,0.04,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region PP-19
	
	pp_cano : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [2,0,0,.25,-.5,0,-.5,-.5,-.75,0,0,0,0.03,0.075,0,6,0,-1,0,-50]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	pp_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	pp_coronha1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,1,0,1,1,1.5,0,0,0,-0.01,-0.1,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	pp_coronha2 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,-.5,0,-.5,-.5,-.75,0,0,0,0.01,0.06,0,0,0,-1,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#endregion
	
	#region Shotguns 
	
	#region Geral
	
	sho_auto : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [0,-1,0,0,0,0,0,0,0,0,0,7,0.00,0.0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sho_grip : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [1]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sho_laser : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sho_lanterna : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [8,0,0,0,0,0,0,0,0,0,0,0,0.00,0.02,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sho_cor : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [15]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sho_fore : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.75,15,-.5,-.5,-1,0,0,0,0.00,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sho_fore1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.75,15,-.5,-.5,-1,0,0,0,0.00,0.04,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	sho_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.01,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region M1897
	
	m1897_cano : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [2,0,0,.5,-.5,0,-.5,-.5,-.5,0,0,0,0.02,0.15,0.1,0,0,-1,0,-50]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region M1014
	
	m1014_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,0,-15,0,0,0,0,0,0,0.02,0.15,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region DP-12
	
	dp_cano : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [3,0,0,0,-1.5,0,0,0,0,0,0,0,0.0,0.0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	dp_cano1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [3,0,0,0,1.5,0,0,0,0,0,0,0,0.0,0.0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region Saiga-12
	
	saiga_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,2,0,1.5,1.5,2,0,0,0,-0.02,-0.06,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	saiga_coronha1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [14]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	saiga_cano : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [4,0,0,-.25,-.5,0,0,0,-.25,0,0,0,0.02,0.04,0,0,0,-1,0,-100]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	saiga_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-1.25,0,0,0,0,0,0,0,0.06,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#endregion
	
	#region Fuzis de assalto
	
	#region Geral
	
	cab_pica : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [24,0,0,0,0,0,0,0,0,0,0,0,0.02,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_pica1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [26,0,0,0,0,0,0,0,0,0,0,0,0.02,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_gran : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [11,0,0,0,0,0,0,0,0,0,0,0,0.02,0.1,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_pente : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [7]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [14]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_laser : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_lanterna : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [8,0,0,0,0,0,0,0,0,0,0,0,0,0.02,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_cano : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [2]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_fore : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.5,0,-.4,-.4,-.5,0,0,0,0.01,0.04,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_fore1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.5,0,-.3,-.3,-.4,0,0,0,0.01,0.05,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_grip : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [14]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_cor : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [15]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_gran : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [11,0,0,0,0,0,0,0,0,0,0,0,0.02,0.1,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_frei : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [3,0,0,0,-.15,0,-.25,-.25,-.25,0,0,0,0.00,0.02,0,0,0,-1,0,25]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_sile : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [4,0,0,-.25,-.35,0,-.55,-.55,-.55,0,0,0,0.03,0.06,0,0,0,-1,0,-125]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-.35,0,0,0,0,0,0,0,0.05,0.02,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_mira1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-.5,0,0,0,0,0,0,0,0.1,0.05,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	cab_mira2 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-1,0,0,0,0,0,0,0,0.1,0.07,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	cab_mirf : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,0,0,0,0,0,0,0,0,0.0,0.00,0,0,0,-200,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	cab_magf : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [17,0,0,0,-.25,0,0,0,0,0,0,0,0.04,0.05,0,0,0,20,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region AK-47
	
	ak_gran : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [11,0,0,0,0,0,0,0,0,0,0,0,0.02,0.1,0,0,0,26,0,200]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ak_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-.35,0,0,0,0,0,0,0,0.05,0.02,0,0,0,23,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ak_mira1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-.5,0,0,0,0,0,0,0,0.1,0.05,0,0,0,23,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ak_mira2 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-1,0,0,0,0,0,0,0,0.1,0.07,0,0,0,23,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	ak_laser : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0,0,25,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ak_fore : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.5,0,-.4,-.4,-.5,0,0,0,0.01,0.04,0,0,0,25,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ak_fore1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.5,0,-.3,-.3,-.4,0,0,0,0.01,0.05,0,0,0,25,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region AR-15
	
	ar_magf : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [17,0,0,0,-.25,0,0,0,0,0,0,0,0.04,0.05,0,0,0,-1,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_laser : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0,0,-1,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_laser1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0,0,2,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_fore : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.5,0,-.4,-.4,-.5,0,0,0,0.01,0.04,0,0,0,-1,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_lanterna : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [8,0,0,0,0,0,0,0,0,0,0,0,0,0.02,0,0,0,2,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_fore1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.5,0,-.3,-.3,-.4,0,0,0,0.01,0.05,0,0,0,-1,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_bala : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [16,0,0,-.5,1,-15,1,1,1,0,0,0,-0.025,0.00,-.2,0,0,-1,0,-200]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_bala1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [16,0,-5,1.5,2,30,2.5,2.5,2.5,0,0,0,0.025,0.05,.3,0,0,-1,0,100]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_raja : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [0,0,0,0,0,0,0,0,0,3,4,13,0.0,0.0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [20,0,0,0,-.25,0,0,0,0,0,0,0,-0.05,0.02,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_cano : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [2,0,0,-.15,.25,0,.25,.25,.35,0,0,0,-0.05,-0.05,0,-3,0,-1,0,25]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_cano1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [21,0,0,.25,-.35,0,-.35,-.35,-.5,0,0,0,0.075,0.1,0,4,0,-1,0,-45]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	ar_pente : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,10,0,.5,30,.5,.5,.5,0,0,0,0.3,0.05,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	ar_pente1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,-10,0,-.5,-15,-.5,-.5,-.5,0,0,0,-0.1,-0.05,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	ar_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,-.125,0,-.125,-.125,-.25,0,0,0,0.02,-0.025,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region M4A1
	
	m4_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,-.25,0,-.25,-.25,-.36,0,0,0,0.02,0.05,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	m4_laser : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0,0,11,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	m4_lanterna : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [8,0,0,0,0,0,0,0,0,0,0,0,0,0.02,0,0,0,11,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region HK 416
	
	hk_laser : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0,0,2,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	hk_lanterna : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [8,0,0,0,0,0,0,0,0,0,0,0,0,0.02,0,0,0,2,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	hk_cano : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [2,0,0,.15,-.25,0,-.25,-.25,-.35,0,0,0,0.05,0.05,0,2,0,-1,0,-25]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	hk_cano1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [21,0,0,.25,-.5,0,-.5,-.5,-.75,0,0,0,0.05,0.15,0,6,0,-1,0,-45]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	hk_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,0,0,0,0,0,0,0,0,0.0,0.00,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	hk_pente : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,30,0,1.5,60,2,2,2,0,0,0,0.1,0.15,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	#endregion
	
	#region ACR Bushmaster 
	
	acr_semi : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [0,1,0,0,-1,0,-1,-1,-1,0,0,0,0.0,0.0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	acr_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [20,0,0,0,-1.5,0,0,0,0,0,0,0,0.175,0.125,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	acr_magf : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [17,0,0,0,-.25,0,0,0,0,0,0,0,0.04,0.05,0,0,0,20,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	acr_bala : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [16,0,-5,.75,1,30,1,1,1,0,0,0,0.025,0.035,.2,0,0,-1,0,60]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	acr_fore : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-.75,0,-.5,-.5,-.5,0,0,0,0.03,0.075,0,0,0,2,1,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	acr_cano : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [2,0,0,-.25,.35,0,.35,.35,.35,0,0,0,-0.075,-0.05,0,-2,0,-1,0,40]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	acr_cano1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [2,0,0,.15,.25,0,.25,.25,.25,0,0,0,0.05,0.05,0,2,0,-1,0,-20]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	acr_cano2 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [21,0,0,.35,.5,0,.5,.5,.5,0,0,0,0.1,0.1,0,5,0,-1,0,-40]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	acr_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,1,0,1.5,1.5,1.5,0,0,0,-0.1,-0.15,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	acr_coronha1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,-.5,0,-.5,-.5,-.5,0,0,0,0.075,0.1,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region FN Scar-H
	
	scar_fore : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [10,0,0,0,-1,0,-.4,-.4,-.5,0,0,0,0.03,0.1,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	scar_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [20,0,0,0,-2,0,0,0,0,0,0,0,0.185,0.15,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	scar_mira1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	scar_magf : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [17,0,0,0,-.25,0,0,0,0,0,0,0,0.04,0.05,0,0,0,20,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region XM8
	
	xm8_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-1.5,0,0,0,0,0,0,0,0.125,0.1,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region IA2
	
	ia2_coronha : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [13,0,0,0,1.5,0,1.5,1.5,2,0,0,0,-0.05,-0.15,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#endregion
	
	#region Fuzis
	
	#region BAR M1918
	
	bar_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-1.5,0,0,0,0,0,0,0,0.1,0.1,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region M1 Garand
	
	m1_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [20,0,0,0,-2,0,0,0,0,0,0,0,0.175,0.13,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#region Winchester Model 1894
	
	win_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-.75,0,0,0,0,0,0,0,0.02,0.01,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	#endregion
	
	#region Lee Enfield
	
	lee_mira : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [5,0,0,0,-1,0,0,0,0,0,0,0,0.03,0.02,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
		
	#endregion
	
	#region M249
	
	m249_pente : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,0,0,0,-0,-0,-0,-0,0,0,0,-00,-0,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	m249_pente1 : function(pos,val2 = []){
	
		//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq,xbloq,baru
		var variaveis = [6,0,-100,0,-2.5,-28,-2,-2,-2.5,0,0,0,-0.05,-0.3,0,0,0,-1,0,0]
		
		for (var i=0;i<array_length(val2);i++){
			
			if (val2[i]!=0) variaveis[i] = val2[i]
			
		}
		
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,0,pos[0]) }else{ show_message("erro no x") array_insert(variaveis,0,0)}
		if (is_array(pos) and array_length(pos)>1){ array_insert(variaveis,1,pos[1]) }else{ show_message("erro no y") array_insert(variaveis,1,0)}
		if (is_array(pos) and array_length(pos)>2){ array_insert(variaveis,2,pos[2]) }else{ array_insert(variaveis,2,0)}
		
		return variaveis 
		
	},
	
	#endregion
	
	#endregion
	
}

#endregion
