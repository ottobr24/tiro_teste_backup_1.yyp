function seta_part(vrv,_x,_y,mns,spr,co,di,vel,ixns,iyns,dist,velm,spri,ang){
    
    var c = obj_cria_particulas.id
    var varsc = [vrv,"xx","yy","cor","ixms","iyms","mxs","dir","vels","sprites","dist","velm","spri","angl"]
    var varss = [1,_x,_y,co,ixns,iyns,mns,di,vel,spr,dist,velm,spri,ang]
    
    for (var i=0;i<array_length(varss);i++){
       
	   if (i>0){
	   
			var array = existe_variavel(varsc[i],,c)
			var tmd = array_length(array)
	   
	        array[tmd] = varss[i]
		
			existe_variavel(varsc[i],array,c)
		
		}else{
			
			existe_variavel(varsc[i],1,c)
		
		}
    }
}
