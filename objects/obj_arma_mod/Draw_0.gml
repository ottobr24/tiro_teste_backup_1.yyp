var mspr = spr_moldura
var mwid = sprite_get_width (mspr)
var mhei = sprite_get_height(mspr)

var x1 = 32
var y1 = 32

for (var i=0;i<array_length(global.armas_nome);i++){
	
	var aspr = global.armas_sprt[i]
	var awid = sprite_get_width  (aspr)
	var ahei = sprite_get_height (aspr)
	var aofx = sprite_get_xoffset(aspr)
	var aofy = sprite_get_yoffset(aspr)
	
	var xm = x1 * i - mwid/2
	var ym = y1		- mhei/2
	var xa = x1 + mwid/2
	var ya = y1 + mhei/2
	
	draw_sprite(spr_moldura,0,_x,_y)
	
	sprite_set_offset(aspr,awid/2,ahei/2)
	
	draw_sprite_stretched(aspr,0,xa,ya,mwid/1.2,mhei/1.2)
	
	sprite_set_offset(aspr,aofx,aofy)
	
}