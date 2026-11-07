if (!dano){
	
	if (!array_length(tracejante)){
		
		instance_destroy()
		ds_list_destroy(atacados)
		
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

var col = place_meeting(x,y,global.parts_tiro)

if (col){
	
	var obj = instance_place(x,y,global.parts_tiro)
	
	if (obj != pai and ds_list_find_index(atacados,obj) = -1){
	
		var b = clamp(achando_na_array(global.parts_tiro,obj.object_index),0,array_length(global.parts_tiro)-1)
	
		#region Criando particulas
	
		var dan = dano
		var angt = image_angle
		var meu_i = i
		
		var cor		= existe_variavel("cor"		,,obj)>-1	?			existe_variavel("cor"	,,obj) : c_white
		var velp	= existe_variavel("velp"	,,obj)>-1	? vel *		existe_variavel("velp"	,,obj) : vel
		var distc	= existe_variavel("distc"	,,obj)>-1	?			existe_variavel("distc"	,,obj) : 180
		var dano2	= existe_variavel("danos"	,,obj)>-1	? dano *	existe_variavel("danos"	,,obj) : dano / 2
		
		dano2 = dano2 = 0 ? 0 : min(1,dano2)
		var dano_max = dano2 = 0 ? 0 : dano2 * 1.5
		
		seta_part("cria_parede",x-_x,y-_y,[dano2,dano_max],spr_particula_parede,cor,direction,[velp,velp],[2,2.5],[2,2.5],distc,[velp/2,velp/2],0,0)
		
		ds_list_add(atacados,obj)
			
		#endregion
	
		#region Mexendo portas e entre outros
	
		if (variable_instance_exists(obj,"vida") and obj.vida>=0 and dan>0){
	
			var dane = variable_instance_exists(obj,"dano")
			var vid = obj.vida
			
			if (dan < vid){
				
				if (!tipo) dano -= vid / tipo + 1
				
				if ( tipo){ 
					
					if (ds_list_size(atacados)>1) dano = -1
					
					dano /= 2
				
				}
			}
	
			if (dane = 0) obj.vida-=dan
			
			if (dane = 1){ 
		
				obj.dano+=dan 
				if (variable_instance_exists(obj,"dano_pai")) obj.dano_pai = pai
			
			}
		}
		
		if (object_get_parent(obj.object_index) = obj_pai_level){
	
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
	
		if (existe_variavel("pai",,obj)){
		
			with(obj){
				
				if (instance_exists(pai) and achando_na_array(global.portas,pai.object_index)>-1){
					
					with(pai){
			
						if (dan > 3) trancado = 0
			
						var ang = 180
						var ang_min = image_angle-ang+360
						var ang_max = image_angle//+ang

						var fo = angt = clamp(angt,min(ang_min,ang_max),max(ang_min,ang_max)) ? dan*2 : -dan*2
			
						if (!trancado) frc += fo
			
					}
				}
			}
		}
	
		#endregion
	
	}
}
