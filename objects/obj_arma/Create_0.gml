prec = 0
pai = id
i=0
recarregando = 0
recarregando_timer = 0
municao = 0
tiro = 0 
tiro_timer = 0
tiro_tempo = 0
inimigo = 0
rajando_timer = 0
rajadas = 0
mostrar  =0
sons = []
estado = 0
estado_txt = ""
fogo_tempo = 0
fogo_ii = 0
fogo_dir = 0
prec_menos = 0
coix = 0
coiy = 0
dano = 0
recarregando_tempo = 0
cliq = 0
rajadas_tempo = 0
rajadas_total = 0
shak = 0
bala = 0
rext=0

//audio_falloff_set_model(audio_falloff_exponent_distance)
emitter = audio_emitter_create()
audio_emitter_falloff(emitter,100,400,1)

muda_estados = function(pa=1,at=1,re=1){
	
	var est = estado
	var atr = tiro_timer>=0
	var rec = recarregando
	
	var ests = [!atr and pa		,atr and at		,rec and re			]
	var estz = [estado_parado	,estado_atirando,estado_recarregando]
	
	for (var e=0;e<array_length(estz);e++){
		
		if (ests[e]){
			
			if (estz[e] != estado){
				
				
				
			}
			
			estado = estz[e]	
			
		}
	}
}

desenha_sprite = function(){
	
	sprite_index = global.armas_sprt[i]
	draw_self()
	
	if (global.debug){
	
		draw_set_colour(c_black)
	
		//draw_text(x,y,estado_txt)
		//draw_text(x,y-20,recarregando)
		//draw_text(x,y-40,keyboard_check(ord("R")))
	
		draw_set_colour(-1)
	
	}
}

mira = function(){
	
	if (inimigo = 0){

		draw_text_transformed(10,10,string(tiro) + "/" + string(municao),1,1,0)

		var _x = display_mouse_get_x()
		var _y = display_mouse_get_y()

		var _p = clamp(prec,1,10000000)

		draw_set_color(c_red)

		draw_rectangle(_x-1, _y+10+_p ,_x+2   ,_y+1+_p,0)
		draw_rectangle(_x-1, _y-10-_p ,_x+2   ,_y-1-_p,0)
		draw_rectangle(_x-10-_p, _y-1  ,_x-1-_p,_y+2   ,0)
		draw_rectangle(_x+10+_p, _y-1  ,_x+1+_p,_y+2   ,0)

		draw_set_color(-1)

	}
}

atira = function(){
	
	var tec = !cliq ? mouse_check_button(mb_left) : mouse_check_button_pressed(mb_left)
	var tec2 = mouse_check_button_pressed(mb_right) and rajadas_total
	var atn = (tec or tec2) and !tiro_timer and !recarregando and !rajadas
	var raj = rajadas and !rajando_timer and !recarregando
	
	if (atn or raj){
		
		if (tiro>0){
			 
			if (!rajadas and tec) rajadas = rajadas_total
		
			repeat(bala){
				
				var sprh = sprite_width*image_xscale
				var dirp = image_xscale=1 ? direction+90 : direction-90
				var margy = lengthdir_y(-2,direction)
				
				var tiiv = global.tiros_velo[i]*1
				var tx = x + lengthdir_x(5,direction)
				var ty = y + margy + lengthdir_y(5,direction)
				
				var _x = x + lengthdir_x(sprite_width*image_xscale,direction)
				var _y = y + margy + lengthdir_y(sprh,direction)
			
				randomize()                                 
				var dir = direction - random_range(prec,-prec)
				var t = instance_create_layer(_x,_y,"Level",obj_tiro)
				t.i = i                                     
				t.direction = dir                           
				t.image_angle = dir                         
				t.dano = dano                
				t.pai = pai                                 
				prec+=prec_menos             
	           
				pai.cx -= coix           
				pai.cy -= coiy           
			
				global.shake+=shak     
            
				if (global.armas_part[i][0]) seta_part("cria_tiro",tx,ty,[global.armas_part[i][0],global.armas_part[i][0]],global.tiros_part[i],c_white,dirp,[tiiv,tiiv],[2,2.5],45,[tiiv/2,tiiv/2])
				//toca_som(global.armas_sons[i][0],1,0,1,.15)
				fogo_tempo = 10
				fogo_ii = irandom_range(0,sprite_get_number(spr_fogo))
				fogo_dir = dir
				
			}                                            
	        
			prep--
			tiro--	
			rajadas--
	    
			rajando_timer = rajadas_total
			
			if ((rajadas<=0 and global.armas_prep[i]<0) or (prep<=0 and global.armas_prep[i]>0)){ 
				
				tiro_timer = tiro_tempo    
				
			}
		
		}else{
			
			rajadas = 0
			
		}
	}
}

preparando = function(){
	
	var man = global.armas_prep[i]>0 and prep<=0 and tiro_timer=tiro_tempo div 2
	var sem = tiro_timer == tiro_tempo and recarregando_timer == recarregando_tempo and global.armas_prep[i]<=0 
	var dirp = image_xscale=1 ? direction+90 : direction-90
	var tiiv = global.tiros_velo[i]*.5
	
	if (man or sem){
		
		prep = global.armas_prep[i]
		recarregando_timer--
		tiro_timer--
		if (global.armas_part[i][2]) seta_part("cria_tiro",x,y,[global.armas_part[i][2],global.armas_part[i][2]],global.tiros_part[i],c_white,dirp,[tiiv,tiiv],[2,2.5],45,[tiiv/2,tiiv/2])
		
	}
}

recarrega = function(){
	
	var rec = keyboard_check(ord("R"))
	var atr = mouse_check_button_pressed(mb_left)
	var dirp = image_xscale=1 ? direction+180 : direction-180
	var munp = global.armas_part[i][1] = "mun" ? abs(tiro-municao) : global.armas_part[i][1]
	var munc = rext == 1 ? 0 : 1
	var tiiv = 3.5
	
	if (rec and tiro<municao){
		
		recarregando=1
		
	}
	
	if (recarregando){
		
		recarregando_timer--
		
		if (recarregando_timer<=0){
			
			tiro += rext// - munc
			tiro = clamp(tiro,0,municao)
			tiro_timer = tiro_tempo
			recarregando_timer = recarregando_tempo
			
			var munt = rext == 1 ? tiro >= municao : tiro >= municao-1
			
			if (munt) recarregando=0
			if (global.armas_part[i][1] = "mun" or (!is_string(global.armas_part[i][1]) and global.armas_part[i][1]>0)) seta_part("cria_tiro",x,y,[munp,munp],global.tiros_part[i],c_white,dirp,[tiiv,tiiv],[2,2.5],45,[tiiv/2,tiiv/2])
			
		}
	}
	
	if (atr and recarregando){
		
		recarregando=0
		recarregando_timer = recarregando_tempo
		tiro_timer = tiro_tempo
		rajando_timer = rajadas_tempo
		
	}
}

reseta_coisas = function(){
	
	if (!rajadas) tiro_timer--
	rajando_timer--
	prec = lerp(prec,global.armas_precin[i],.1)
	
	municao = global.armas_munc[i]
	tiro_tempo = global.armas_cade[i]
	prec_menos = global.armas_prec[i]
	coix = global.armas_coix[i]
	coiy = global.armas_coiy[i]
	dano = global.armas_dano[i]
	recarregando_tempo = global.armas_reca[i]
	cliq = global.armas_cliq[i]
	rajadas_tempo = global.armas_raca[i]
	rajadas_total = global.armas_raja[i]
	shak = global.armas_shak[i]
	bala = global.armas_bala[i]
	rext = global.armas_rext[i]
	
}

colocando_os_acessorios = function(){
	
	if (i<array_length(global.armas_mods)){
	
		for (var m=0;m<array_length(global.armas_mode[i]);m++){
		
			var mod_i = global.armas_mods[i][m]
		
			if (array_length(global.armas_mode[i][m])>0 and is_array(global.armas_mode[i][m][mod_i])){
				
				cliq				+=global.armas_mode[i][m][mod_i][0]
				municao				+=global.armas_mode[i][m][mod_i][1]
				rext				+=global.armas_mode[i][m][mod_i][1]
				dano				+=global.armas_mode[i][m][mod_i][2]
				prec_menos			+=global.armas_mode[i][m][mod_i][3]
				recarregando_tempo	+=global.armas_mode[i][m][mod_i][4]
				coix				+=global.armas_mode[i][m][mod_i][5]
				coiy				+=global.armas_mode[i][m][mod_i][6]
				shak				+=global.armas_mode[i][m][mod_i][7]
				rajadas_total		+=global.armas_mode[i][m][mod_i][8]
				rajadas_tempo		+=global.armas_mode[i][m][mod_i][9]
			
			}
		}
	}
}

estado_parado = function(){
	
	preparando()
	recarrega()
	atira()
	
	estado = estado_parado
	estado_txt = "estado_parado"
	image_index=0
	
	muda_estados()
	
}

estado_atirando = function(){
	
	preparando()
	recarrega()
	atira()
	
	estado = estado_atirando
	estado_txt = "estado_atirando"
	image_index=1
	
	muda_estados()
	
}

estado_recarregando = function(){
	
	preparando()
	recarrega()
	
	estado = estado_recarregando
	estado_txt = "estado_recarregando"
	image_index=0
	
	muda_estados()
	
}

estado = estado_parado