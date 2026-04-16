ima_org = image_angle
frc = 0
fra = 0
filhos = []
filhos_qtd = 3
mudando = 0
abre_dir = 0

abrindo_e_sendo_empurrada = function(){
	
	var alvos = [obj_player,obj_inimigo]
	var dist = [1000,100]
	var tec_a = keyboard_check_pressed(ord("F"))
	
	for (var a =0;a<array_length(alvos);a++){
		
		if (instance_exists(alvos[a])){
		
			var h = alvos[a].hspd
			var v = alvos[a].vspd
			
			var qtd = 0
			var col = 0
		
			for (var f = 0;f<array_length(filhos);f++){
			
				if (instance_exists(filhos[f])){
				
					with(filhos[f]){
					
						if (place_meeting(x,y,alvos[a])) col = 1
					
					}
				}
			}
		
			if (place_meeting(x,y,alvos[a]) and col){
			
				var dira = point_direction(0,0,h,v)
				var dir = angle_difference(dira,image_angle)
			
				fra -= h*2
				fra -= v*2 //ddadwadlengthdir_y(v*2,dir)
				mudando = 0
			
			}
		
			qtd = 0
		
		}
	}
	
	if (instance_exists(filhos[0]) and point_distance(x,y,obj_player.x,obj_player.y)<150){
	
		for (var f = 0;f<filhos_qtd;f++){
		
			if (instance_exists(filhos[f])){
		
				var _x = filhos[f].x
				var _y = filhos[f].y
		
				if (point_distance(_x,_y,obj_player.x,obj_player.y)<dist[0]){
					
					var obj = instance_nearest(_x,_y,obj_player)
					var ct = instance_exists(obj) and variable_instance_exists(obj,"controle") ? obj.controle : 0
					var cn = ct and gamepad_is_connected(0)
					tec_a = ct = 0 ? keyboard_check_pressed(ord("F")) : gamepad_button_check_pressed(0,gp_face2)
					
					dist[0] = point_distance(_x,_y,obj_player.x,obj_player.y)
					dist[1] = f
					
				}
			}
		}
	}

	if (dist[0]<75 and tec_a and global.portas_abrir = id){//  and visao(75,"",x,y,point_direction(x,y,obj_player.x,obj_player.y),obj_player,adiciona_na_array(global.colisao_normal,obj_player),1,1,0,0)){
	
		if (image_angle = clamp(image_angle,ima_org-20,ima_org+20)){
		
			mudando = 1
			if (ima_org = 90) abre_dir = x>obj_player.x ? -1 : 1
			if (ima_org =  0) abre_dir = y>obj_player.y ? -1 : 1
			
		}else{
		
			mudando = 2
			//show_message("2")
		
		}
	}	
	
	
	if (mudando == 2){
		
		image_angle = lerp(image_angle,ima_org,.15) 
		
		if (image_angle = clamp(image_angle,ima_org-.1,ima_org+.1)){
			
			mudando = 0
			
		}
	}
	
	if (mudando == 1){ 
		
		image_angle = lerp(image_angle,ima_org+(90*abre_dir),.15)
		
		if (image_angle = clamp(image_angle,min(ima_org+(90.1*abre_dir),ima_org+(89.9*abre_dir)),max(ima_org+(90.1*abre_dir),ima_org+(89.9*abre_dir)))){ 
			
			mudando = 0
		
		}
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
	
cria_filhos = function(){
	
	var i = 0
	var qtd = filhos_qtd
	
	repeat(qtd){
		
	    var tmdx = sprite_width
	    var tmdy = sprite_width
    
	    var margx = tmdx / qtd
	    var margy = tmdy / qtd
    
	    var _x = image_angle = 0 ? x + (margx * i) : x
	    var _y = image_angle = 0 ? y : y - (margx * i)
    
	    var bloc = instance_create_layer(_x,_y,"Level",obj_miniporta)
    
		bloc.pai = id
	    bloc.image_angle = image_angle
    
	    bloc.image_xscale = image_xscale / qtd 
	    bloc.image_yscale = 1//image_yscale / qtd 
    
	    bloc.sprite_index = sprite_index
		
		filhos[i] = bloc
		
	    i++
    
	}
}

controla_filhos = function(){
	
	var qtde = 0
	
	for (var f=0;f<array_length(filhos);f++){
			
		var idd = filhos[f]
		
		if (instance_exists(idd)){
		
			idd.image_angle = image_angle
			idd.x = x + lengthdir_x(sprite_width/filhos_qtd*f,image_angle)
			idd.y = y + lengthdir_y(sprite_width/filhos_qtd*f,image_angle)
		
		}else{
			
			qtde++
			
		}
	}
	
	if (qtde = filhos_qtd) instance_destroy()
	
}

cria_filhos()