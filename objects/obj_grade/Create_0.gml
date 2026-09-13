var qtd = round(3 * image_xscale)
var i = 0

repeat(qtd){
    
    var tmdx = sprite_width
    var tmdy = sprite_width
    
    var margx = tmdx / qtd
    var margy = tmdy / qtd
    
    var _x = image_angle = 0 ? x + (margx * i) : x
    var _y = image_angle = 0 ? y : y - (margx * i)
    
	cria_minis(_x,_y,obj_minigrade,qtd,spr_grade,objetos.grade)
	
    var bloc = instance_create_layer(_x,_y,"Level",obj_minigrade)
    
    i++
    
}

instance_destroy()