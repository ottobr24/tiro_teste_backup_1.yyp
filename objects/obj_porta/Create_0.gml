ima_org = image_angle
frc = 0

step = function(){
	
	var alvo = obj_player
	var ang = point_direction(0,0,alvo.hspd,alvo.vspd)
	var ang2= angle_difference(ang,image_angle)
	var dis = ((point_distance(x,y,alvo.x,alvo.y)/sprite_width))
	var vel = ((lengthdir_y(-2,ang2)+lengthdir_x(2,ang2)) / dis)
	var col = instance_place(x,y,alvo)
	
	if (col and (alvo.hspd!=0 or alvo.vspd!=0)){
		
		image_angle+=vel
		
	}
	
	image_angle+=frc
	
	if ((image_angle >= ima_org+90 or image_angle <= ima_org-90) and frc!=0){
		
		var s = -sign(frc)
		
		frc/=5*s
		
	}
	
	frc = lerp(frc,0,0.1)
	image_angle = clamp(image_angle,ima_org-90,ima_org+90)
	
}