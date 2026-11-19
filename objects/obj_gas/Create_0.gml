randomise()

tempo = 3
timer = tempo
vida = irandom_range(200,400)
dano_dmg = 1

dando_dano = function(){
	
	timer--
	
	var objs = [obj_inimigo,obj_player]
	
	if (place_meeting(x,y,objs) and !timer){
		
		var obj = instance_place(x,y,objs)
		
		if (existe_variavel("dano",,obj) >  -1) obj.dano+=dano_dmg
		if (existe_variavel("dano",,obj) <= -1) obj.vida-=dano_dmg
		
		global.shake+=dano_dmg
		timer = tempo
		
	}
}
