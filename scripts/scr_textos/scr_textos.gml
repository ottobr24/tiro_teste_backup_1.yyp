var c = global.controles

#region Textos

global.textos = 

[

[

#region Menu

[

["Jogar","Armas","Configuração","Sair"],
["Sons","Efeitos","Idioma","Resolução","Gameplay","Controles","Voltar"],
["Volume dos efeitos: ","Volume da música: ","Voltar"],
["Tremida da tela: ","Voltar"],
["","Voltar"],
["Tela cheia: ","Resolução: ","Exibição: ","Voltar"],
["Zumbis","Humanos","Voltar"],
["Level 1","Voltar"],
["1 Player","2 Players","Voltar"],

[				
"Player",
"",
"Direita: "					,//+ c[controles.anda_d	][global.controle][0][0],		//anda_d	,
"Esquerda: "				,//+ c[controles.anda_e	][global.controle][0][0],		//anda_e	,
"Cima: "					,//+ c[controles.anda_c	][global.controle][0][0],		//anda_c	,
"Baixo: "					,//+ c[controles.anda_b	][global.controle][0][0],		//anda_b	,
"Interação: "				,//+ c[controles.anda_f	][global.controle][0][0],		//anda_f	,	
"Chute na Porta: "					,//+ c[controles.anda_ch	][global.controle][0][0],		//anda_ch	,
"Pause: "					,//+ c[controles.anda_s	][global.controle][0][0],		//anda_s																		//anda_m	,
"",																					
"Armas",																			
"",																						  
"Atiro: "					,//+ c[controles.arma_a	][global.controle][0][0],		//arma_a	,	  
"Mira: "					,//+ c[controles.arma_m	][global.controle][0][0],		//arma_m	,		  
"Granada: "					,//+ c[controles.arma_g	][global.controle][0][0],		//arma_g	,		  
"Laser: "					,//+ c[controles.arma_l	][global.controle][0][0],		//arma_l	,
"Inclina Cima: "			,//+ c[controles.arma_c	][global.controle][0][0],		//arma_c	,
"Inclina Baixo: "			,//+ c[controles.arma_b	][global.controle][0][0],		//arma_b	,
"Engatilha: "				,//+ c[controles.arma_e	][global.controle][0][0],		//arma_e	,
"Recarrega: "				,//+ c[controles.arma_r	][global.controle][0][0],		//arma_r	,
"Equipa / Desequipa: "		,//+ c[controles.arma_t	][global.controle][0][0],		//arma_t	,
"Arma Anterior: "			,//+ c[controles.arma_at	][global.controle][0][0],		//arma_at	,
"Próxima Arma: "			,//+ c[controles.arma_pt	][global.controle][0][0],		//arma_pt	,
"",							//													
"Menu",						//													
"",							//													
"Cima: "					,//+ c[controles.menu_c	][global.controle][0][0],		//menu_c	,
"Baixo: "					,//+ c[controles.menu_b	][global.controle][0][0],		//menu_b	,
"Esquerda: "				,//+ c[controles.menu_e	][global.controle][0][0],		//menu_e	,
"Direita: "					,//+ c[controles.menu_d	][global.controle][0][0],		//menu_d	,
"Ação: "					,//+ c[controles.menu_a	][global.controle][0][0],		//menu_a	,
"Mouse: "					,//+ c[controles.menu_m	][global.controle][0][0],		//menu_m	,
"",							//														//		
"Modificação",				//														//		
"",							//														//		
"Ação: "					,//+ c[controles.mod_a		][global.controle][0][0],		//mod_a	,
"Ação de mouse: "			,//+ c[controles.mod_m		][global.controle][0][0],		//mod_m	,
"Direita: "					,//+ c[controles.mod_d		][global.controle][0][0],		//mod_d	,
"Esquerda: "				,//+ c[controles.mod_e		][global.controle][0][0],		//mod_e	,
"Arma Anterior: "			,//+ c[controles.mod_at	][global.controle][0][0],		//mod_at	,
"Próxima Arma : "			,//+ c[controles.mod_pt	][global.controle][0][0],		//mod_pt	,
"Cima: "					,//+ c[controles.mod_c		][global.controle][0][0],		//mod_c	,
"Baixo: "					,//+ c[controles.mod_b		][global.controle][0][0],		//mod_b	,
"Volta: "					,//+ c[controles.mod_s		][global.controle][0][0],		//mod_s	,
"Compra: "					,//+ c[controles.mod_cm	][global.controle][0][0],		//mod_cm	,
"",																					
"Voltar",																			
],																					
																					
[""],
["Reload Automático: ", "Voltar"],																				
																					
],																					
																				
[																				
																				
["Play","Guns","Settings","Exit"],
["Sounds","Effects","Language","Resolution","Gameplay","Controls","Back"],
["Effects Volume: ","Music Volume: ","Back"],
["Screen Shake: ","Back"],
["","Back"],
["Full Screen: ","Resolution: ","Display: ","Back"],
["Zombies","Humans","Back"],
["Level 1","Back"],
["1 Player","2 Players","Back"],

[				
"Player",
"",
"Right: "					,//+ c[controles.anda_d	][global.controle][0][0],		//anda_d	,
"Left: "					,//+ c[controles.anda_e	][global.controle][0][0],		//anda_e	,
"Up: "						,//+ c[controles.anda_c	][global.controle][0][0],		//anda_c	,
"Down: "					,//+ c[controles.anda_b	][global.controle][0][0],		//anda_b	,
"Interaction: "				,//+ c[controles.anda_f	][global.controle][0][0],		//anda_f	,	
"Kick Door: "				,//+ c[controles.anda_ch	][global.controle][0][0],		//anda_ch	,
"Pause: "					,//+ c[controles.anda_s	][global.controle][0][0],		//anda_s																		//anda_m	,
"",																				
"Guns",																		
"",																					  
"Shoot: "					,//+ c[controles.arma_a	][global.controle][0][0],		//arma_a	,	  
"Aim: "						,//+ c[controles.arma_m	][global.controle][0][0],		//arma_m	,		  
"Granade: "					,//+ c[controles.arma_g	][global.controle][0][0],		//arma_g	,		  
"Laser: "					,//+ c[controles.arma_l	][global.controle][0][0],		//arma_l	,
"Lean Up: "					,//+ c[controles.arma_c	][global.controle][0][0],		//arma_c	,
"Lean Down: "				,//+ c[controles.arma_b	][global.controle][0][0],		//arma_b	,
"Cock :) : "				,//+ c[controles.arma_e	][global.controle][0][0],		//arma_e	,
"Reload: "					,//+ c[controles.arma_r	][global.controle][0][0],		//arma_r	,
"Equip / Unequip: "			,//+ c[controles.arma_t	][global.controle][0][0],		//arma_t	,
"Weapon Previous: "			,//+ c[controles.arma_at	][global.controle][0][0],		//arma_at	,
"Next Weapon: "				,//+ c[controles.arma_pt	][global.controle][0][0],		//arma_pt	,
"",							//													
"Main Menu",						//													
"",							//													
"Up: "						,//+ c[controles.menu_c	][global.controle][0][0],		//menu_c	,
"Down: "					,//+ c[controles.menu_b	][global.controle][0][0],		//menu_b	,
"Left: "					,//+ c[controles.menu_e	][global.controle][0][0],		//menu_e	,
"Right: "					,//+ c[controles.menu_d	][global.controle][0][0],		//menu_d	,
"Action: "					,//+ c[controles.menu_a	][global.controle][0][0],		//menu_a	,
"Mouse: "					,//+ c[controles.menu_m	][global.controle][0][0],		//menu_m	,
"",																					//		
"Modification",																		//		
"",																					//		
"Action: "					,//+ c[controles.mod_a		][global.controle][0][0],		//mod_a	,
"Action W Mouse: "			,//+ c[controles.mod_m		][global.controle][0][0],		//mod_m	,
"Right: "					,//+ c[controles.mod_d		][global.controle][0][0],		//mod_d	,
"Left: "					,//+ c[controles.mod_e		][global.controle][0][0],		//mod_e	,
"Weapon Previous: "			,//+ c[controles.mod_at	][global.controle][0][0],		//mod_at	,
"Next Weapon: "				,//+ c[controles.mod_pt	][global.controle][0][0],		//mod_pt	,
"Up: "						,//+ c[controles.mod_c		][global.controle][0][0],		//mod_c	,
"Down: "					,//+ c[controles.mod_b		][global.controle][0][0],		//mod_b	,
"Back: "					,//+ c[controles.mod_s		][global.controle][0][0],		//mod_s	,
"Buy: "						,//+ c[controles.mod_cm	][global.controle][0][0],		//mod_cm	,
"",																					
"Back",																			
],					
[""],
["Auto Reload: ", "Back"],

]

#endregion Menu

],

[

#region Positivo / Negativo

["Não","Sim"],
["No","Yes"],

#endregion

],

[

#region Shake

["Normal","Diminuido","Zero"],
["Normal","Less","No"],

#endregion

],

[

#region Resolucao

[

["Modo Janela","Tela Cheia"],
["16:9","4:3"],
[["640x360","1024x576","1280x720","1536x864","1792x1008","1920x1080"],["640x480","800x600","1024x768"]]

],

[

["Window Mode","Full Screen"],
["16:9","4:3"],
[["640x360","1024x576","1280x720","1536x864","1792x1008","1920x1080"],["640x480","800x600","1024x768"]]

]

#endregion

],

#region Idiomas

["Português","English"],

#endregion

[

#region Pause

[

["Resumir","Resetar","Armas","Configurações","Sair pro menu","Sair do jogo"],
["Sons","Efeitos","Idioma","Resolução","Gameplay","Controles","Voltar"],
["Volume dos efeitos: ","Volume da música: ","Voltar"],
["Tremida da tela: ","Voltar"],
["","Voltar"],
["Tela cheia: ","Resolução: ","Exibição: ","Voltar"],
["Zumbis","Humanos","Voltar"],
["Level 1","Voltar"],
["1 Player","2 Players","Voltar"],

[				
"Player",
"",
"Direita: "					,//+ c[controles.anda_d	][global.controle][0][0],		//anda_d	,
"Esquerda: "				,//+ c[controles.anda_e	][global.controle][0][0],		//anda_e	,
"Cima: "					,//+ c[controles.anda_c	][global.controle][0][0],		//anda_c	,
"Baixo: "					,//+ c[controles.anda_b	][global.controle][0][0],		//anda_b	,
"Interação: "				,//+ c[controles.anda_f	][global.controle][0][0],		//anda_f	,	
"Chute: "					,//+ c[controles.anda_ch	][global.controle][0][0],		//anda_ch	,
"Menu: "					,//+ c[controles.anda_s	][global.controle][0][0],		//anda_s																		//anda_m	,
"",																				
"Armas",																		
"",																					  
"Atiro: "					,//+ c[controles.arma_a	][global.controle][0][0],		//arma_a	,	  
"Mira: "					,//+ c[controles.arma_m	][global.controle][0][0],		//arma_m	,		  
"Granada: "					,//+ c[controles.arma_g	][global.controle][0][0],		//arma_g	,		  
"Laser: "					,//+ c[controles.arma_l	][global.controle][0][0],		//arma_l	,
"Inclina Cima: "			,//+ c[controles.arma_c	][global.controle][0][0],		//arma_c	,
"Inclina Baixo: "			,//+ c[controles.arma_b	][global.controle][0][0],		//arma_b	,
"Engatilha: "				,//+ c[controles.arma_e	][global.controle][0][0],		//arma_e	,
"Recarrega: "				,//+ c[controles.arma_r	][global.controle][0][0],		//arma_r	,
"Equipa / Desequipa: "		,//+ c[controles.arma_t	][global.controle][0][0],		//arma_t	,
"Arma Anterior: "			,//+ c[controles.arma_at	][global.controle][0][0],		//arma_at	,
"Próxima Arma: "			,//+ c[controles.arma_pt	][global.controle][0][0],		//arma_pt	,
"",							//													
"Menu",						//													
"",							//													
"Cima: "					,//+ c[controles.menu_c	][global.controle][0][0],		//menu_c	,
"Baixo: "					,//+ c[controles.menu_b	][global.controle][0][0],		//menu_b	,
"Esquerda: "				,//+ c[controles.menu_e	][global.controle][0][0],		//menu_e	,
"Direita: "					,//+ c[controles.menu_d	][global.controle][0][0],		//menu_d	,
"Ação: "					,//+ c[controles.menu_a	][global.controle][0][0],		//menu_a	,
"Mouse: "					,//+ c[controles.menu_m	][global.controle][0][0],		//menu_m	,
"",							//														//		
"Modificação",				//														//		
"",							//														//		
"Ação: "					,//+ c[controles.mod_a		][global.controle][0][0],		//mod_a	,
"Direita: "					,//+ c[controles.mod_m		][global.controle][0][0],		//mod_m	,
"Direita: "					,//+ c[controles.mod_d		][global.controle][0][0],		//mod_d	,
"Esquerda: "				,//+ c[controles.mod_e		][global.controle][0][0],		//mod_e	,
"Arma Anterior: "			,//+ c[controles.mod_at	][global.controle][0][0],		//mod_at	,
"Próxima Arma : "			,//+ c[controles.mod_pt	][global.controle][0][0],		//mod_pt	,
"Cima: "					,//+ c[controles.mod_c		][global.controle][0][0],		//mod_c	,
"Baixo: "					,//+ c[controles.mod_b		][global.controle][0][0],		//mod_b	,
"Volta: "					,//+ c[controles.mod_s		][global.controle][0][0],		//mod_s	,
"Compra: "					,//+ c[controles.mod_cm	][global.controle][0][0],		//mod_cm	,
"",																					
"Voltar",																			
],
[""],
["Reload Automático: ", "Voltar"],

],

[

["Resume","Reset","Guns","Settings","Exit to menu","Exit game"],
["Sounds","Effects","Language","Resolution","Gameplay","Controls","Back"],
["Effects volume: ","Music volume: ","Back"],
["Screen Shake: ","Back"],
["","Back"],
["Full screen: ","Resolution: ","Display: ","Back"],
["Zombies","Humans","Voltar"],
["Level 1","Voltar"],
["1 Player","2 Players","Voltar"],
[				
"Player",
"",
"Right: "					,//+ c[controles.anda_d	][global.controle][0][0],		//anda_d	,
"Left: "					,//+ c[controles.anda_e	][global.controle][0][0],		//anda_e	,
"Up: "						,//+ c[controles.anda_c	][global.controle][0][0],		//anda_c	,
"Down: "					,//+ c[controles.anda_b	][global.controle][0][0],		//anda_b	,
"Interaction: "				,//+ c[controles.anda_f	][global.controle][0][0],		//anda_f	,	
"Kick Door: "				,//+ c[controles.anda_ch	][global.controle][0][0],		//anda_ch	,
"Pause: "					,//+ c[controles.anda_s	][global.controle][0][0],		//anda_s																		//anda_m	,
"",																				
"Guns",																		
"",																					  
"Shoot: "					,//+ c[controles.arma_a	][global.controle][0][0],		//arma_a	,	  
"Aim: "						,//+ c[controles.arma_m	][global.controle][0][0],		//arma_m	,		  
"Granade: "					,//+ c[controles.arma_g	][global.controle][0][0],		//arma_g	,		  
"Laser: "					,//+ c[controles.arma_l	][global.controle][0][0],		//arma_l	,
"Lean Up: "					,//+ c[controles.arma_c	][global.controle][0][0],		//arma_c	,
"Lean Down: "				,//+ c[controles.arma_b	][global.controle][0][0],		//arma_b	,
"Cock :) : "				,//+ c[controles.arma_e	][global.controle][0][0],		//arma_e	,
"Reload: "					,//+ c[controles.arma_r	][global.controle][0][0],		//arma_r	,
"Equip / Unequip: "			,//+ c[controles.arma_t	][global.controle][0][0],		//arma_t	,
"Weapon Previous: "			,//+ c[controles.arma_at	][global.controle][0][0],		//arma_at	,
"Next Weapon: "				,//+ c[controles.arma_pt	][global.controle][0][0],		//arma_pt	,
"",							//													
"Main Menu",						//													
"",							//													
"Up: "						,//+ c[controles.menu_c	][global.controle][0][0],		//menu_c	,
"Down: "					,//+ c[controles.menu_b	][global.controle][0][0],		//menu_b	,
"Left: "					,//+ c[controles.menu_e	][global.controle][0][0],		//menu_e	,
"Right: "					,//+ c[controles.menu_d	][global.controle][0][0],		//menu_d	,
"Action: "					,//+ c[controles.menu_a	][global.controle][0][0],		//menu_a	,
"Mouse: "					,//+ c[controles.menu_m	][global.controle][0][0],		//menu_m	,
"",																					//		
"Modification",																		//		
"",																					//		
"Action: "					,//+ c[controles.mod_a		][global.controle][0][0],		//mod_a	,
"Action W Mouse: "			,//+ c[controles.mod_m		][global.controle][0][0],		//mod_m	,
"Right: "					,//+ c[controles.mod_d		][global.controle][0][0],		//mod_d	,
"Left: "					,//+ c[controles.mod_e		][global.controle][0][0],		//mod_e	,
"Weapon Previous: "			,//+ c[controles.mod_at	][global.controle][0][0],		//mod_at	,
"Next Weapon: "				,//+ c[controles.mod_pt	][global.controle][0][0],		//mod_pt	,
"Up: "						,//+ c[controles.mod_c		][global.controle][0][0],		//mod_c	,
"Down: "					,//+ c[controles.mod_b		][global.controle][0][0],		//mod_b	,
"Back: "					,//+ c[controles.mod_s		][global.controle][0][0],		//mod_s	,
"Buy: "						,//+ c[controles.mod_cm	][global.controle][0][0],		//mod_cm	,
"",																					
"Back",																			
],
[""],
["Auto Reload: ", "Back"],

]

#endregion Pause

]

]

#endregion
