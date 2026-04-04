ima_org = image_angle
frc = 0
fra = 0

abrindo_e_sendo_empurrada = function(){
	
	var alvos = [obj_player]
	
	for (var a =0;a<array_length(alvos);a++){
		
		var h = alvos[a].hspd
		var v = alvos[a].vspd
			
		var qtd = 0
		
		if (place_meeting(x,y,alvos[a])){
			
			var dira = point_direction(0,0,h,v)
			var dir = angle_difference(image_angle,dira)
			
			fra -= h*2
			fra -= v*2 //lengthdir_y(v*2,dir)
		
		}
		
		qtd = 0
		
	}
	
	image_angle+=frc
	image_angle = lerp(image_angle,image_angle+fra,0.1)
	fra = lerp(fra,0,0.1)
	
	if ((image_angle >= ima_org+90 or image_angle <= ima_org-90) and frc!=0){
		
		var s = -sign(frc)
		
		frc/=5*s
		
	}
	
	frc = lerp(frc,0,0.1)
	image_angle = clamp(image_angle,ima_org-90,ima_org+90)
	
}
	
