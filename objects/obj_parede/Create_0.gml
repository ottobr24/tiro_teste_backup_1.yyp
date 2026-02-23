var qtd = round(3 * image_xscale)
var i = 0

repeat(qtd){
    
    var tmdx = sprite_width
    var tmdy = sprite_width
    
    var margx = tmdx / qtd
    var margy = tmdy / qtd
    
    var _x = image_angle = 0 ? x + (margx * i) : x
    var _y = image_angle = 0 ? y : y - (margx * i)
    
    var bloc = instance_create_layer(_x,_y,layer,obj_miniparede)
    
    bloc.image_angle = image_angle
    
    bloc.image_xscale = image_xscale / qtd 
    bloc.image_yscale = 1//image_yscale / qtd 
    
    bloc.sprite_index = spr_parede
    
    i++
    
}

instance_destroy()