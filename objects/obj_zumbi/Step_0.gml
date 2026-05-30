sprite_index = spr_zumbi

estado()    
colidindo()

ii += 6 / 60
ii %= 2

image_index = ii

if (!place_meeting(x,y,obj_camera)) exit;

me_destacando()

image_blend = c_white
