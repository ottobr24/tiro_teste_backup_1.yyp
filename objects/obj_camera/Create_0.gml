alvo = 0
estado = 0
estado_txt = ""
seg = 0
ind = 0
// >0 = parada -1 = segue
var es = 1//application_surface_is_enabled()+1
cpos = [[[-1,-1],[0,0],[-1,-1],[-2,-2]]]
		  
cesc = [[.5,1,.43,1]]
pose = [0,0]
roo = 0
cmw = 1280
cmh = 720
cap = 0//global.capitulo
escala = cesc[cap][roo]

x = cpos[cap][roo][0]
y = cpos[cap][roo][1]

zoom = function(){
	
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
		var alvos = [obj_player,obj_zumbi_pai,obj_inimigo]
		var numb = 0
		
		if (instance_exists(alvos[seg])){
		
			with(alvos[seg].object_index){
			
				if (!numb)alvos = [[],[]]
			
				alvos[other.seg][numb] = id
				numb++
			
			}
		}
		
		if (!global.debug) escala =	lerp(escala,cesc[cap][roo],0.1)
		
		ind = clamp(ind,0,array_length(alvos[seg])-1)
		
		estado_txt = "Segue Player"
		estado = segue_player
		alvo = obj_player//alvos[seg][ind]
		
		if (keyboard_check_pressed(vk_space)){ 
			
			ind = 0
			seg=!seg
			
			//if (!instance_exists(alvos[seg][ind])) seg=!seg
			
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
		
		if ((!global.debug or !keyboard_check(vk_shift)) and instance_number(obj_player)>=1){
			
			var falha = 0
			
			var objs = []

			with(obj_player){
	
				objs[array_length(objs)] = id
	
			}
				
			if (cpos[cap][roo][0]=-2 and array_length(objs)=2){
				
				var pos_marg = 100
				
				var x1 = clamp(min(objs[0].x,objs[1].x)-pos_marg,0,room_width )
				var y1 = clamp(min(objs[0].y,objs[1].y)-pos_marg,0,room_height)

				var x2 = abs(objs[0].x - objs[1].x) 
				var y2 = abs(objs[0].y - objs[1].y) * (cmw / cmh )

				var camera_mag = pos_marg*2
				var camera_tmd = x2 + y2
				var camera_rel = camera_tmd + camera_mag

				var x4 = clamp(x1,-camera_rel,room_width  - camera_rel	)
				var y4 = clamp(y1,-camera_rel,room_height - camera_rel/(cmw/cmh)	)

				cesc[cap][roo] = camera_rel/cmw
				cesc[cap][roo] = abs(clamp(cesc[cap][roo],.5,room_width/cmw))
				
				image_xscale = cesc[cap][roo]
				image_yscale = cesc[cap][roo]
				
				x = lerp(x,x4,0.05)
				y =	lerp(y,y4,0.05)
		
			}else{
				
				falha = 1
				
			}
			
			if (cpos[cap][roo][0]>-1){
		
				x = lerp(x,cpos[cap][roo][0]+pose[0],0.05)
				y =	lerp(y,cpos[cap][roo][1]+pose[1],0.05)
				falha = 0
				
			}
			
			if (cpos[cap][roo][0]=-1 or falha){
		
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
		
		randomise()
		var shak	= random_range(-global.shake,global.shake)
		var shakx	= global.shakex
		var shaky	= global.shakey
	
		view_set_xport(0,shak + shakx)
		view_set_yport(0,shak + shaky)

		global.shake	= lerp(global.shake	,0,0.15)
		global.shakex	= lerp(global.shakex,0,0.1)
		global.shakey	= lerp(global.shakey,0,0.1)
	
		instance_deactivate_region(bbox_left,bbox_top,bbox_right,bbox_bottom,0,1)
		instance_activate_region(bbox_left,bbox_top,bbox_right,bbox_bottom,1)
		
		var objs_espcs = [obj_player,obj_miniparede,obj_miniporta,obj_criador,obj_criador_ponto,obj_pause,obj_mod,obj_inimigo,obj_zumbi_pai,obj_granadas_exp,obj_tiro,object_index,obj_arma,obj_controlador,obj_cria_particulas,obj_granadas,obj_regioes,obj_arma_npc]
		
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