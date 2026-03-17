ima_org = image_angle
frc = 0

abrindo_e_sendo_empurrada = function(){
	
	var alvos = [obj_player]
	
	for (var a =0;a<array_length(alvos);a++){
		
		var h = alvos[a].hspd
		var v = alvos[a].vspd
			
		var qtd = 0
			
		while (place_meeting(x+h,y,alvos[a])){
			
			image_angle-=sign(h)
			qtd++
			
			if (qtd>20) break;
			if (image_angle >= ima_org+90 or image_angle <= ima_org-90) break;
			
		}
		
		qtd = 0
		
		while (place_meeting(x,y+v,alvos[a])){
			
			image_angle-=sign(v)
			qtd++
			
			if (qtd>20) break;
			if (image_angle > ima_org+90 or image_angle < ima_org-90) break;
			
		}
	}
	
	image_angle+=frc
	
	if ((image_angle >= ima_org+90 or image_angle <= ima_org-90) and frc!=0){
		
		var s = -sign(frc)
		
		frc/=5*s
		
	}
	
	frc = lerp(frc,0,0.1)
	image_angle = clamp(image_angle,ima_org-90,ima_org+90)
	
}
	
