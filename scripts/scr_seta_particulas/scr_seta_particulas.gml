function seta_part(vrv,_x,_y,mns,spr,co,di,vel,ixns,iyns,dist,velm,spri,ang){
    
	static varsc	= ["xx","yy","cor","ixms","iyms","mxs","dir","vels","sprites","dist","velm","spri","angl"]
    
    var c = obj_cria_particulas.id
    var varss		= [_x,_y,co,ixns,iyns,mns,di,vel,spr,dist,velm,spri,ang]
    
    for (var i=0;i<array_length(varss);i++){
       
		var array = variable_instance_get(c,varsc[i])
		var tmd = array_length(array)
	   
	    array[tmd] = varss[i]
        variable_instance_set(c,varsc[i],array)
        
    }
}
