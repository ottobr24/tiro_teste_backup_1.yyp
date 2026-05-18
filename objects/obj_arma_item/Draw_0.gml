var sprw = sprite_get_width (sprite_index)
var sprh = sprite_get_height(sprite_index)
var sprx = sprite_get_xoffset(sprite_index)
var spry = sprite_get_yoffset(sprite_index)

sprite_set_offset(sprite_index,sprw/2,sprh/2)

draw_self()

sprite_set_offset(sprite_index,sprx,spry)
