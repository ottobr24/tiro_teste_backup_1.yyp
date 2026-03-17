
image_speed=0

if (global.pause) exit;

colocando_os_acessorios()
estado()

//if (!instance_exists(pai)){
//
//	instance_destroy()
//	exit
//
//}
//
//audio_emitter_position(emitter,x,y,0)
//inimigo = pai.object_index == obj_inimigo
//prec = lerp(prec,global.armas_precin[i],0.05)
//
//sprite_index = global.armas_sprt[i]
//
//if ((keyboard_check_pressed(ord("R")) and !inimigo) or (inimigo and tiro<=0) and !recarregando and !rajando){
//
//	recarregando = 1
//	toca_som(global.armas_sons[i][1],1,0,1,.1)
//	
//}
//
//if (recarregando){
//
//	recarregando_timer--
//
//	if (recarregando_timer<=0){
//		
//		var mn = global.armas_rext[i] = 1 ? 0 : -1
//		var tr = global.armas_nome_tipo[global.armas_tipo[i]] = "Fuzil de assalto" or global.armas_nome_tipo[global.armas_tipo[i]] = "Submetralhadora" ? 1 : global.armas_cliq[i]
//		
//		tiro += global.armas_rext[i]
//		tiro = clamp(tiro,0,municao)
//		if (tiro>=municao+mn) recarregando=0
//		recarregando_timer=global.armas_reca[i]
//		tiro_timer = tiro_tempo+tr
//		
//		if (global.armas_part[i][1]) seta_part("cria_tiro",x,y,[1,1],global.tiros_part[i],c_white,direction,[6,6],[2,2.5])
//		
//		toca_som(global.armas_sons[i][2],1,0,1,.15)
//	
//	}
//	
//	if (mouse_check_button(mb_left) and !inimigo){
//		
//		var tr = global.armas_nome_tipo[global.armas_tipo[i]] = "Fuzil de assalto" or global.armas_nome_tipo[global.armas_tipo[i]] = "Submetralhadora" ? 1 : global.armas_cliq[i]
//		
//		recarregando = 0
//		tiro_timer = tiro_tempo+tr
//		recarregando_timer=global.armas_reca[i]
//	
//	}
//}
//
//if ((tiro_timer = 20 and !global.armas_cliq[i]) or (tiro_timer>tiro_tempo) and !audio_is_playing(global.armas_sons[i][2]) and !rajando and !recarregando){
//	
//	if (global.armas_part[i][2]) seta_part("cria_tiro",x,y,[1,1],global.tiros_part[i],c_white,direction,[6,6],[2,2.5])
//	tiro_timer--
//	
//	toca_som(global.armas_sons[i][3],1,0,1,.15)
//	
//}
//
//rajando = rajadas>0
//rajando_timer --//global.armas_raca[i]
//
//if (inimigo = 0){
//
//	if (!rajando and !global.armas_cliq[i] and !recarregando and !audio_is_playing(global.armas_sons[i][3]) and !audio_is_playing(global.armas_sons[i][2])) tiro_timer--
//
//	if ((mouse_check_button(mb_left) and tiro_timer<=0 and global.armas_cade[i] and !rajando) or (mouse_check_button_pressed(mb_left) and global.armas_cliq[i]) or (rajando and !rajando_timer) and !recarregando){
//		
//		if (rajadas<=0)rajadas = global.armas_raja[i]
//		rajando = rajadas>0
//		
//		if (tiro>0){
//	
//			repeat(global.armas_bala[i]){
//		
//				var _x = x + lengthdir_x(sprite_width*image_xscale,direction)
//				var _y = y + lengthdir_y(sprite_height,direction)
//				
//				randomize()                                 
//				var dir = direction - random_range(prec,-prec)
//				var t = instance_create_layer(_x,_y,layer,obj_tiro)
//				t.i = i                                     
//				t.direction = dir                           
//				t.image_angle = dir                         
//				t.dano = global.armas_dano[i]               
//				t.dano = global.armas_dano[i]               
//				t.pai = pai                                 
//				prec+=global.armas_prec[i]                  
//		           
//				pai.cx -= (global.armas_coix[i])            
//				pai.cy -= (global.armas_coiy[i])            
//				
//				global.shake+=global.armas_shak[i]          
//                
//				if (global.armas_part[i][0]) seta_part("cria_tiro",x,y,[1,1],global.tiros_part[i],c_white,direction,[6,6],[2,2.5])
//				toca_som(global.armas_sons[i][0],1,0,1,.15)
//				
//			}                                            
//	              
//			tiro--	
//			rajadas--
//	        
//			rajando_timer = global.armas_raca[i]
//				
//			if (rajadas<=0)tiro_timer = tiro_tempo    
//			
//		}else{
//			
//			recarregando=0
//			rajadas=0
//			
//			if (mouse_check_button_pressed(mb_left)){
//				
//				toca_som(snd_falha,1,0,1,.1)
//				
//			}
//		}
//	}                                           
//}else{                                          
//                                                
//	if (pai.vendo_player){                      
//	                                            
//		tiro_timer--                            
//	                                            
//		if (tiro_timer<=0 and !recarregando){   
//		                                        
//			if (tiro>0){                        
//	                                            
//				repeat(global.armas_bala[i]){   
//		                                        
//    				var _x = x + lengthdir_x(sprite_width*image_xscale,direction)
//    				var _y = y + lengthdir_y(sprite_height,direction)
//				
//					randomize()
//					var dir = direction - irandom_range(prec,-prec)
//					var t = instance_create_layer(_x,_y,layer,obj_tiro)
//					t.i = i
//					t.direction = dir
//					t.image_angle = dir
//					prec+=global.armas_prec[i]
//				    t.pai = pai
//		
//					pai.cx -= (global.armas_coix[i])
//					pai.cy -= (global.armas_coiy[i])
//		          
//				}
//	
//				tiro_timer = global.armas_cade[i]	
//				tiro--	
//	
//			}
//		}
//	}
//}
//