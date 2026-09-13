var qtd = 1//round(3 * image_xscale)
var i = 0

repeat(qtd){
    
    var tmdx = sprite_width
    var tmdy = sprite_width
    
    var margx = tmdx / qtd
    var margy = tmdy / qtd
    
    var _x = image_angle = 0 ? x + (margx * i) : x
    var _y = image_angle = 0 ? y : y - (margx * i)
    
    var bloc = cria_minis(_x,_y,obj_miniportao,qtd,spr_portao_ferro,objetos.portao)
	
    i++
    
}

instance_destroy()