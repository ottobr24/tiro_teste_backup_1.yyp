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

var colisao = [obj_miniparede			,obj_miniporta				,obj_player					,obj_inimigo				,obj_vidro					]
var cores	= [make_color_rgb(80,80,80)	,make_color_rgb(160,65,13)	,make_color_rgb(255,10,10)	,make_color_rgb(255,10,10)	,make_color_rgb(163,205,200)]
	  
sprite_index = global.tiros_sprt[i]

for (var b=0;b<array_length(colisao);b++){
	
	#region Morrendo
	
	if (dano<=0) instance_destroy()
	
	#endregion
			
	var obj = instance_place(x,y,colisao[b])
	var col = place_meeting(x,y	,colisao[b])

	if (col and obj!=pai){
		
		#region Criando particulas
		
		var dano_max = clamp(dano*1.5,1,10)
		var dan = dano
		var angt = image_angle
			
		var distc = [180	,180	,90		,90			,180	]
		var vels  = [vel/2	,vel/2	,vel	,vel		,vel/2	]
		var velm  = [vel/4	,vel/4	,vel/2	,vel/2		,vel/4	]
        seta_part("cria_parede",x-_x,y-_y,[dano/2,dano_max],spr_particula_parede,cores[b],direction,[vels[b],vels[b]],[2,2.5],[2,2.5],distc[b],[velm[b],velm[b]],0,0)
		
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
		
		switch(obj.object_index){
			
			#region Porta
			
			case obj_miniporta:
				
				with(obj){
					
					with(pai){
					
						var ang = 180
						var ang_min = image_angle-ang+360
						var ang_max = image_angle//+ang

						var fo = angt = clamp(angt,min(ang_min,ang_max),max(ang_min,ang_max)) ? dan*2 : -dan*2
						frc += fo
					
					}
				}
				
			break;
			
			#endregion
			
		}
		
		#endregion
		
		if (!variable_instance_exists(obj,"vida")){
			
			dano=-10
			
		}
		
	}
}

x+=_x
y+=_y
