if (!dano){
	
	if (!array_length(tracejante)){
		
		instance_destroy()
		
	}
	
	exit;
	
}

if (!point_in_rectangle(x,y,0,0,room_width,room_height)){
	
	instance_destroy()
	exit
	
}

if (global.pause) exit;

var tmd = array_length(tracejante)

if ((x!=xstart or y!=ystart) and place_meeting(x,y,obj_camera)){

	tracejante[tmd][0] = x
	tracejante[tmd][1] = y
	tracejante[tmd][2] = 0

}

var _x =lengthdir_x(vel,image_angle)
var _y =lengthdir_y(vel,image_angle)

x+=_x
y+=_y

if (dano<=0){ 
	
	instance_destroy()
	exit;
	
}

var col = place_meeting(x,y,global.parts_tiro)

if (col){
	
	var obj = instance_place(x,y,global.parts_tiro)
	
	if (obj != pai){
	
		var b = clamp(achando_na_array(global.parts_tiro,obj.object_index),0,array_length(global.parts_tiro)-1)
	
		#region Criando particulas
	
		var dano_max = clamp(dano*1.5,1,10)
		var dan = dano
		var angt = image_angle
		var meu_i = i
		
		var cor		= existe_variavel("cor"		,,obj)	?		existe_variavel("cor"	,,obj) : c_white
		var velp	= existe_variavel("velp"	,,obj)	? vel * existe_variavel("velp"	,,obj) : vel
		var distc	= existe_variavel("distc"	,,obj)	?		existe_variavel("distc"	,,obj) : 180
		
		seta_part("cria_parede",x-_x,y-_y,[dano/2,dano_max],spr_particula_parede,cor,direction,[velp,velp],[2,2.5],[2,2.5],distc,[velp/2,velp/2],0,0)
	
		#endregion
	
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
		
		if (achando_na_array(global.portas,obj.object_index)){
		
			with(obj){
		
				with(pai){
			
	                trancado = 0
                
					if (global.armas_nome_tipo[global.armas_tipo[meu_i]] = "Shotgun") trancado = 0
			
					var ang = 180
					var ang_min = image_angle-ang+360
					var ang_max = image_angle//+ang

					var fo = angt = clamp(angt,min(ang_min,ang_max),max(ang_min,ang_max)) ? dan*2 : -dan*2
			
					if (!trancado) frc += fo
			
				}
			}
		}
	
		if (object_get_parent(obj.object_index) = obj_level_pai){
	
			with(obj){
			
				if (!variable_instance_exists(id,"vida")) exit;
			
				if (vida<=0){ 
				
					obj_controlador.att = 1 
				
					if (achando_na_array(global.portas,object_index)){
					
						if (instance_exists(pai)){
                        
	                        pai.mudando = 0
                        
	                    } 
				
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
