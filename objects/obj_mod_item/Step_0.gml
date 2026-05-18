rodando()
direction+=2

if (place_meeting(x,y,obj_player)){
	
	global.mods_possivels++
	instance_destroy()
	
}

if (direction>600*4) instance_destroy()