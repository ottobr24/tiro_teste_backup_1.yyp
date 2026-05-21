if (global.debug){

	for (var b=0;b<array_length(barulhos);b++){
	
		draw_circle(barulhos[b][0],barulhos[b][1],barulhos[b][2],1)
	
	}
}

var objs = []

with(obj_player){
	
	objs[array_length(objs)] = id
	
}

var x1 = objs[0].x
var y1 = objs[0].y

var x2 = (objs[1].x-objs[0].x) / 2
var y2 = (objs[0].y-objs[1].y) / 2

var x3 = x1 + x2
var y3 = y1 - y2

