alvo = 0
estado = 0
estado_txt = ""
seg = 0
ind = 0
// >0 = parada -1 = segue
var es = 1//application_surface_is_enabled()+1
cpos = [[[-1,-1],[0,0],[-1,-1]]]
		  
cesc = [[.5,1,.45]]
pose = [0,0]
roo = 0
cmw = 1280
cmh = 720
cap = 0//global.capitulo
escala = cesc[cap][roo]

x = cpos[cap][roo][0]
y = cpos[cap][roo][1]

zoom = function(){
	
	window_set_size(1280,720)
	camera_set_view_size(view_camera[0],cmw*escala,cmh*escala)
	
	if (mouse_wheel_down()){
		
		escala+=0.05
		
	}else if (mouse_wheel_up()){
		
		escala-=0.05
		
	}
}

segue_player = function(){
	
	if (instance_exists(obj_player)){
		
		var obj = 0
		var alvos = [obj_player,obj_inimigo]
		var numb = 0
		
		with(alvos[seg].object_index){
			
			if (!numb)alvos = [[],[]]
			
			alvos[other.seg][numb] = id
			numb++
			
		}
		
		with(obj_player){
			
			//obj = instance_place(x,y,obj_colisao_cam)
			
		}
		
		//if (obj){
		//	
		//	roo = obj.i 
		//	
		//}else{ 
		//	
		//	roo= 0
		//	
		//}

		ind = clamp(ind,0,array_length(alvos[seg])-1)
		
		estado_txt = "Segue Player"
		estado = segue_player
		alvo = alvos[seg][ind]
		
		if (keyboard_check_pressed(vk_space)){ 
			
			ind = 0
			seg=!seg
			
		}
		
		if (keyboard_check_pressed(vk_left )) ind--
		if (keyboard_check_pressed(vk_right)) ind++
		
		var cw = cmw/2
		var ch = cmh/2
		var cx = x//-cw
		var cy = y//-ch
		
		cx = clamp(cx,0,room_width -cw)
		cy = clamp(cy,0,room_height-ch)
		
		camera_set_view_pos(view_camera[0],cx,cy)
		
		x = clamp(cx,0+pose[0],room_width +pose[0])
		y = clamp(cy,0+pose[1],room_height+pose[1])
		
		if (!global.debug or !keyboard_check(vk_shift)){
		
			if (cpos[cap][roo][0]>-1){
		
				x = lerp(x,cpos[cap][roo][0]+pose[0],0.05)
				y =	lerp(y,cpos[cap][roo][1]+pose[1],0.05)
		
			}else{
		
				x = lerp(x,alvo.x-cw/2+pose[0],0.05)
				y =	lerp(y,alvo.y-ch/2+pose[1],0.05)
		
			}
		}else{
			
			var d = keyboard_check(vk_right)
			var a = keyboard_check(vk_left )
			var w = keyboard_check(vk_up   )
			var s = keyboard_check(vk_down )
			
			x+= (d-a)*10
			y+= (s-w)*10
			
		}
		
		if (!global.debug) escala =	lerp(escala,cesc[cap][roo],0.1)
		
		randomise()
		var shak = random_range(-global.shake,global.shake)
	
		view_set_xport(0,shak)
		view_set_yport(0,shak)

		global.shake = lerp(global.shake,0,0.1)
	
		instance_deactivate_region(bbox_left,bbox_top,bbox_right,bbox_bottom,0,1)
		instance_activate_region(bbox_left,bbox_top,bbox_right,bbox_bottom,1)
		
		var objs_espcs = [obj_player,obj_modificacao,obj_inimigo,obj_tiro,object_index,obj_arma,obj_controlador,obj_cria_particulas]
		
		for (var o=0;o<array_length(objs_espcs);o++){
			
			instance_activate_object(objs_espcs[o])
			
		}
		
	}else{
	
		estado = naosegue_player
	
	}
}

naosegue_player = function(){
	
	alvo = 0
	estado_txt = "Não Segue Player"
	
}

segue_inimigo = function(){
	
	estado_txt = "Segue Inimigo"
	
}

estado = segue_player