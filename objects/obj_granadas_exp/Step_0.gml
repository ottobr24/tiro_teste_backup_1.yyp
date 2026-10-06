if (global.pause) exit;

global.shake+=2 * global.shakes[global.configs[1][0]]    
vel = 12/60
ii += vel

if (ii>= sprite_get_number(sprite_index)){
	
	instance_destroy()
	
}

if (place_meeting(x,y,global.parts_tiro)){
	
	var lista = ds_list_create()
	var obj = instance_place_list(x,y,global.parts_tiro,lista,1)
	
	for (var i=0;i<ds_list_size(lista);i++){
		
		var obj2 = ds_list_find_value(lista,i)
		
		var dan = dano
		var angt = image_angle
		var meu_i = i
		
		obj = obj2
		
		if (!ds_list_find_index(atacados,obj)){
			
			ds_list_add(atacados,obj)
			obj.vida-=dano
		
			#region Mexendo portas e entre outros
	
			if (variable_instance_exists(obj,"vida") and obj.vida>=0 and dan>0){
	
				var dane = variable_instance_exists(obj,"dano")
	
				dano-=obj.vida
	
				if (dane = 0) obj.vida-=dan
				if (dane = 1){ 
		
					obj.dano+=dan 
					if (variable_instance_exists(obj,"dano_pai")) obj.dano_pai = pai
		
				}
			}
		
			if (existe_variavel("pai",,obj)){
		
				with(obj){
				
					if (instance_exists(pai) and achando_na_array(global.portas,pai.object_index)>-1){
					
						with(pai){
			
			                trancado = 0
                                
							var ang = 180
							var ang_min = image_angle-ang+360
							var ang_max = image_angle//+ang

							var fo = angt = clamp(angt,min(ang_min,ang_max),max(ang_min,ang_max)) ? dan*2 : -dan*2
			
							if (!trancado) frc += fo
			
						}
					}
				}
			}
	
			if (object_get_parent(obj.object_index) = obj_level_pai){
	
				with(obj){
			
					if (!variable_instance_exists(id,"vida")) exit;
			
					if (vida<=0){ 
				
						obj_controlador.att = 1 
					
						if (existe_variavel("pai",,id) and instance_exists(pai) and achando_na_array(global.portas,pai.object_index)>-1){
					
		                    pai.mudando = 0
							pai.trancado = 0
							
						}
					
						instance_destroy() 
					
					}
			
					image_index = abs(vida-10)/image_number
					image_index = clamp(image_index,-0,image_number-.1)
			
				}
			}
	
			#endregion
	
		}
	}
	
	ds_list_destroy(lista)
	
}