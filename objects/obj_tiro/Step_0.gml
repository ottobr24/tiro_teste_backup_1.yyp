if (global.pause) exit;

var tmd = array_length(tracejante)

if (x!=xstart or y!=ystart){

	tracejante[tmd][0] = x
	tracejante[tmd][1] = y
	tracejante[tmd][2] = 0

}

if (!point_in_rectangle(x,y,0,0,room_width,room_height)){
	
	instance_destroy()
	exit
	
}

vel =global.tiros_velo[i]
var _x =lengthdir_x(vel,image_angle)
var _y =lengthdir_y(vel,image_angle)
var colisao = [[obj_miniparede],[obj_porta],[obj_player,obj_inimigo],[obj_vidro]]
	  
sprite_index = global.tiros_sprt[i]

if (!place_meeting(x,y,obj_camera)) instance_activate_region(x-_x,y-_y,x+_x,y+_x,1)

for (var b=0;b<array_length(colisao);b++){
	
	for (var m = 0;m<array_length(colisao[b]);m++){
		
		var obj = instance_place(x,y,colisao[b][m])
		var col = place_meeting(x,y,colisao[b][m])

		if (col and obj!=pai){
			
			#region Criando particulas
			
			var dano_max = clamp(dano*1.5,1,10)
			
			var cores = [make_color_rgb(80,80,80)	,make_color_rgb(160,65,13)	,make_color_rgb(255,10,10)	,make_color_rgb(163,205,200)]
			var distc = [180						,180						,90							,180						]
			var vels  = [vel/2						,vel/2						,global.tiros_velo[i]		,vel/2						]
			var velm  = [vel/4						,vel/4						,global.tiros_velo[i]/2		,vel/4						]
            seta_part("cria_parede",x-_x,y-_y,[dano/2,dano_max],spr_particula_parede,cores[b],direction,[vels[b],vels[b]],[2,2.5],distc[b],[velm[b],velm[b]])
			
			#endregion
			
			#region Mexendo portas e entre outros
			
			if (variable_instance_exists(obj,"vida") and obj.vida>=0){
				
				var dan = dano
				
				dano-=obj.vida
				obj.vida-=dan
				
			}
			
			switch(obj.object_index){
				
				#region Porta
				
				case obj_porta:
					
					with(obj){
						
						var ang = 180
						var ang_min = image_angle-ang+360
						var ang_max = image_angle//+ang

						var fo = other.image_angle = clamp(other.image_angle,min(ang_min,ang_max),max(ang_min,ang_max)) ? other.dano*2 : -other.dano*2
						frc += fo
						
					}
					
				break;
				
				#endregion
				
			}
			
			#endregion
			
			if (!variable_instance_exists(obj,"vida")){
				
				dano=-10
				
			}
			
			#region Morrendo
			
			if (dano<=0) instance_destroy()
			
			#endregion
			
		}
	}
}

x+=_x
y+=_y
