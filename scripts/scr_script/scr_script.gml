#region Variaveis

#region Macros

randomise()
global.colisao_normal = [obj_miniparede,obj_vidro]

#endregion

#region Extras

global.portas_abrir = -4
global.musica_inicia = 0
global.destino = rm_jogo
global.cont_dialogos=0
global.surf_tiro = 0

#endregion

#region Controlador

global.debug = 0
global.zerou = 0
global.rodada = -1
global.capitulo = 0
global.destinos = [rm_jogo]
global.trilho_ord = 0
global.pause = 0

#endregion

#region Inimigos

//global.inimigo_corp = [0                 ]
//global.inimigo_dano = [4                 ]
//global.inimigo_vida = [2                 ]
//global.inimigo_velc = [1.7               ]
//global.inimigo_cria = [0                 ]
//global.inimigo_cura = [0                 ]
//global.inimigo_time = [20                ]
//global.inimigo_xpss = [2                 ]
//global.inimigo_sprt = [spr_alien_normal  ]
//global.inimigo_ataq = [spr_alien_atacando]
//global.inimigo_morr = [spr_alien_morrendo]

#endregion

#region Armas

var a = global.acessorios

global.shake = 0
global.armas_nome_tipo = ["Revolver" ,"Pistola","Submetralhadora","Shotgun","Fuzil de assalto","Fuzil"]
global.armas_tipo = [0			,0				,0			,1					,1					,1							,1											,2							,2					,2					,2						,2						,1					,3			,3					,3			,3			,3						,4					,4					,4						,4					,4					,4										,4					,4				,4						,5					,5				,5					,5				,5			,5					]
global.armas_nome = ["RT 85"	,"Colt Python"	,"Rhino"	,"M1911"			,"Glock 18"			,"Berreta M9"				,"HK USP"									,"Desert Eagle"				,"MP9"				,"Uzi"				,"Mac-10"				,"Vector"				,"PP-19"			,"M1897"	,"Benelli M1014"	,"A-681"    ,"DP-12"	,"Saiga 12"				,"Ak-47"			,"FN Fal"			,"AEK-971"				,"AR-15"			,"M4A1"				,"HK416"								,"Scar-H"			,"XM8"			,"Imbel IA2"			,"BAR M1918"		,"M1 GARAND"	,"Winchester 1894"	,"Lee Enfield"	,"KAR 98K"	,"M249"				]
global.armas_cliq = [1			,1				,1			,1					,0					,1							,1											,1							,0					,0					,0						,0						,0					,0			,1					,1          ,1			,1						,0					,0					,0						,0					,0					,0										,0					,0				,0						,0					,1				,1					,1				,1			,0					]
global.armas_aval = [0			,0				,0			,0					,0					,0							,0											,0							,0					,0					,0						,0						,0					,0			,0					,0          ,0			,0						,0					,0					,0						,0					,0					,0										,0					,0				,0						,0					,0				,0					,0				,0			,0					]
global.armas_munc = [5			,6				,6			,8					,18					,16							,16											,8							,31					,51					,33						,31						,64					,6			,9					,2          ,14			,10						,31					,28					,31						,31					,31					,31										,21					,31				,31						,21					,10				,14					,10				,5			,201				]
global.armas_dano = [2			,4				,4			,2.5				,1.5				,1.75						,1.25										,5							,1.5				,1					,1						,1						,1.5				,5			,5					,7          ,4			,4						,5					,5					,3						,3					,3.5				,3.5									,6					,5				,3						,6					,5				,4					,5				,7			,4					]
global.armas_prec = [11			,13				,8			,7					,6.5				,8							,4											,20							,7					,6					,6						,3						,9					,7			,6.5				,14         ,7			,10						,10					,8.5				,3.5					,6					,5					,4.5									,7.5				,6				,7.5					,15					,10				,8					,12				,16			,14					]
global.armas_precin=[1			,1				,1			,1					,1					,1							,1											,1							,1					,1					,1						,1						,1					,5			,6					,5          ,6			,7						,3					,3					,1						,2					,1					,1										,3					,3				,3						,1					,1				,2					,5				,1			,7					]
global.armas_reca = [30			,30				,30			,60					,60					,60							,60											,90							,60					,80					,60						,75						,120				,30			,45					,30         ,45			,60						,75					,75					,90						,60					,75					,90										,90					,120			,60						,140				,120			,25					,60				,75			,30					]
global.armas_rext = [1			,1				,1			,7					,17					,15							,15											,7							,30					,50					,32						,30						,63					,1			,1					,1          ,1			,9						,30					,27					,30						,30					,30					,30										,20					,30				,30						,20					,10				,1					,5				,5			,200				]
global.armas_cade = [10			,10				,10			,5					,5					,5							,4											,6							,3					,3					,2						,2						,4					,21			,7					,2          ,30			,6						,5					,15					,4						,4					,3					,4										,5					,4				,3						,6					,5				,5					,5				,5			,4					]
global.armas_cadn = [20			,30				,25			,15					,10					,15							,12											,20							,5					,5					,4						,4						,5					,40			,15					,30			,45			,12						,7					,25					,6						,6					,5					,6										,7					,6				,5						,9					,15				,25					,30				,30			,6					]
global.armas_bala = [1			,1				,1			,1					,1					,1							,1											,1							,1					,1					,1						,1						,1					,4			,4					,4          ,4			,4						,1					,1					,1						,1					,1					,1										,1					,1				,1						,1					,1				,1					,1				,1			,1					]
global.armas_raja = [0			,3				,0			,0					,0					,0							,0											,0							,0					,0					,0						,0						,0					,0			,0					,0          ,0			,0						,0					,3					,0						,0					,0					,0										,0					,0				,0						,0					,0				,0					,0				,0			,0					]
global.armas_raca = [0			,5				,0			,0					,0					,0							,0											,0							,0					,0					,0						,0						,0					,0			,0					,0          ,0			,0						,0					,5					,0						,0					,0					,0										,0					,0				,0						,0					,0				,0					,0				,0			,0					]
global.armas_prep = [1			,1				,1			,-1					,-1					,-1							,-1											,-1							,-1					,-1					,-1						,-1						,-1					,1			,-1					,1			,2			,-1						,-1					,-1					,-1						,-1					,-1					,-1										,-1					,-1				,-1						,-1					,-1				,1					,1				,1			,-1					]
global.armas_coix = [4			,5				,4			,5					,2.5				,3							,2											,14							,2					,2.5				,2						,2						,4					,5			,5					,7          ,5			,6						,6					,6					,3						,5					,4					,4										,6					,5				,4						,9					,6				,4					,8				,10			,9					]
global.armas_coiy = [3			,4				,3			,5					,2.5				,3							,2											,12							,2					,2.5				,2						,2						,4					,4			,7					,7			,5			,5						,5					,5					,4						,4					,3					,3										,5					,5				,3						,8					,5				,4					,8				,10			,9					]
global.armas_shak = [4			,5				,4			,6					,3					,4							,3											,16							,3					,3.5				,3						,2.5					,3					,6			,8					,14			,7			,9						,5					,5					,3						,5					,4					,3.5									,6					,5				,5						,9					,10				,5					,11				,11			,8					]
global.armas_peso = [.1			,.2				,.2			,.15				,.12				,.14						,.11										,.3							,.17				,.25				,.15					,.3						,.35				,.4			,.45				,.3			,.5			,.4						,.5					,.5					,.45					,.4					,.4					,.4										,.45				,.43			,.33					,.6					,.55			,.45				,.55			,.58		,.9					]
global.armas_sprt = [spr_rt_85	,spr_colt_python,spr_rhino	,spr_m1911			,spr_glock			,spr_berreta_m9				,spr_hk_usp									,spr_desert_eagle			,spr_mp9			,spr_uzi			,spr_mac_10				,spr_vector				,spr_pp_19			,spr_m1897	,spr_benelli_m1014	,spr_a_681  ,spr_dp_12	,spr_saiga_12			,spr_ak_47			,spr_fal			,spr_aek_971			,spr_ar_15			,spr_m4a1			,spr_hk416								,spr_scarh			,spr_xm8		,spr_imbel_ia2			,spr_bar			,spr_m1_garand	,spr_winchester_1894,spr_lee_enfield,spr_kar_98k,spr_m249			]
global.armas_part = [[0,1,0]	,[0,1,0]		,[0,1,0]	,[1,0,0]			,[1,0,0]			,[1,0,0]					,[1,0,0]									,[1,0,0]					,[1,0,0]			,[1,0,0]			,[1,0,0]				,[1,0,0]				,[1,0,0]			,[0,0,1]	,[1,0,0]			,[0,1,0]	,[0,0,2]	,[1,0,0]				,[1,0,0]			,[1,0,0]			,[1,0,0]				,[1,0,0]			,[1,0,0]			,[1,0,0]								,[1,0,0]			,[1,0,0]		,[1,0,0]				,[1,0,0]			,[1,0,0]		,[0,0,1]			,[0,0,1]		,[0,0,1]	,[1,0,0]			]//atirando, recarregando,preparando																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							
global.tiros_velo = [7.5		,10				,10			,11					,8					,8							,8											,12							,9					,8.5				,9						,9						,9					,13			,13					,12			,12			,12						,12					,11					,11						,11					,11					,11.5									,12					,12				,11						,13					,12.5			,11					,12.5			,14			,14					]    																																																																																																																																																																																																																																													
global.tiros_sprt = [spr_tiro	,spr_tiro		,spr_tiro	,spr_tiro			,spr_tiro			,spr_tiro					,spr_tiro									,spr_tiro					,spr_tiro			,spr_tiro			,spr_tiro				,spr_tiro				,spr_tiro			,spr_chumbo	,spr_chumbo			,spr_chumbo	,spr_chumbo	,spr_chumbo				,spr_tiro			,spr_tiro			,spr_tiro				,spr_tiro			,spr_tiro			,spr_tiro								,spr_tiro			,spr_tiro		,spr_tiro				,spr_tiro			,spr_tiro		,spr_tiro			,spr_tiro		,spr_tiro	,spr_tiro			]																																																																																																																																																																																																																																														
global.tiros_part = [spr_capsula,spr_capsula	,spr_capsula,spr_capsula		,spr_capsula		,spr_capsula				,spr_capsula								,spr_capsula				,spr_capsula		,spr_capsula		,spr_capsula			,spr_capsula			,spr_capsula		,spr_gauge	,spr_gauge			,spr_gauge	,spr_gauge	,spr_gauge				,spr_capsula		,spr_capsula		,spr_capsula			,spr_capsula		,spr_capsula		,spr_capsula							,spr_capsula		,spr_capsula	,spr_capsula			,spr_capsula		,spr_capsula	,spr_capsula		,spr_capsula	,spr_capsula,spr_capsula		]
global.armas_sprm = [[0]		,[0]			,[0]		,[spr_m1911_pente_1],[spr_glock_pente_1],[spr_berreta_m9_pente_1]	,[spr_hk_usp_pente_2,spr_hk_usp_pente_3]	,[spr_desert_eagle_pente_2]	,[spr_mp9_pente_1]	,[spr_uzi_pente_1]	,[spr_mac_10_pente_1]	,[spr_vector_pente_1]	,[spr_pp_19_pente]	,[0]		,[0]				,[0]		,[0]		,[spr_saiga_12_pente_1]	,[spr_ak_47_pente_1],[spr_fal_pente_1]	,[spr_aek_971_pente_1]	,[spr_ar_15_pente_1],[spr_m4a1_pente]	,[spr_hk416_pente	,spr_hk416_pente_1],[spr_scar_pente_1]	,[spr_xm8_pente],[spr_imbel_ia2_pente_1],[spr_bar_pente_1]	,[0]			,[0]				,[0]			,[0]		,[spr_m249_pente]	]
global.armas_mods = []//[[0,0,0]																	,[]		,[]		,[]		,[0,0,0,0,0]]																																																																																																						
																																																								
//salva vidas 1			
global.armas_mods = []
global.armas_modi = []																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																
global.armas_modx = [[[],[1,4					]					,[]	,[],[],[],[],[],[],[],[],[],[4,2]				]						,[[],[],[],[],[],[],[],[],[],[],[15,1						]]	,[[],[],[],[7,1							],[],[],[],[],[],[],[15,1				]	]	,[[],[],[14,1						]	,[],[2,10]										]	,[[],[],[13,2												]	,[3,2												]	,[2,6]											,[],[11,3]																			,[],[],[],[],[0,2]							,[6,3]]										,[[],[2,7]															,[14,1]																			,[3,1]											,[1,10					],[],[11,3]											,[],[],[],[],[],[7,3]												]	,[[],[],[13,2]													,[2,1]											,[1,9]																				,[],[11,4]											,[],[],[],[],[],[4,3]													]	,[[7,4]						,[],[],[],[2,12]												,[],[],[],[],[],[],[],[9,2]]											,[[7,4]							,[],[16,2]												,[3,1]											,[5,9					],[],[11,3]					,[6,2]					,[],[],[],[0,2]							,[9,2]]													,[[],[],[21,3]												,[13,0]										,[9,14					],[],[16,5]																				,[],[]	,[],[],[0,4]											,[10,4]]									,[[],[],[15,2]												,[7,0]										,[6,10]										,[],[]	,[5,2]					,[],[],[],[0,2]											,[8,3]]									,[[],[],[22,3]												,[11,2]										,[14,9					],[]	,[18,3]																				,[],[]	,[]	,[],[]	,[8,4]]									,[[],[7,9]										,[23,4]												,[11,2]										,[18,7					],[],[]	,[]	,[]	,[19,4]					,[8,3]																,[]],[[],[],[],[],[],[],[],[],[],[],[32,2]]						,[[],[],[],[16,1]										,[],[],[22,4]																			,[],[],[],[],[3,3]							,[13,3]]									,[[],[]	,[],[],[],[],[],[],[],[],[],[11,2]		]							,[[],[]	,[28,2]											,[18,1]										,[],[],[],[25,1]										,[26,4]										,[],[],[]	,[15,3]						]			,[[16,4]				,[12,8]									,[35,3]										,[18,1]																				,[22,9					],[],[],[27,4]																														,[],[],[],[3,4]																	,[23,3]										],[[],[],[],[],[20,9				],[],[23,4]						]	,[[],[],[],[],[17,10				],[],[25,5]						],[[],[],[32,3]															,[16,0]																									,[21,8					],[],[],[],[],[],[],[],[14,3]]									,[[14,5]					,[12,6]									,[33,2]															,[15,1]																									,[20,8										],[],[26,4]																															,[18,4]												,[28,2]																								,[],[],[4,4]									,[16,3]						]			,[[]	,[11,7]									,[30,3]																,[14,1]																									,[18,8]										,[27,3]																				,[22,4]																									,[],[22,2]																			,[],[25,3]									,[2,5]															,[13,3]									],[[]	,[10,7]									,[29,3]										,[15,1]																									,[19,8]																		,[27,3]																				,[22,3]																				,[],[23,2]																														,[26,2]																				,[25,3]																											,[3,4]										,[16,3]										],[[]	,[]	,[33,3]										,[16,1]																														,[19,8									]	,[]	,[23,4]																																		,[],[25,2]																																,[],[]	,[]	,[17,4]										],[[]	,[12,7]									,[33,1]															,[17,0]																									,[21,7]									,[29,3]																					,[25,3]																				,[],[24,0]																															,[],[27,1]									,[5,3]										,[17,3]									],[[]	,[],[31,2]															,[15,1]																,[16,8					]	,[26,4]																				,[],[23,1]																															,[],[],[5,3]											,[]],[[]	,[]	,[35,2]						,[16,1]										,[18,6					]	,[]	,[23,4]						,[],[],[]	,[]	,[]],[[]	,[]	,[33,1]											,[16,0]											,[]	,[]	,[],[],[],[]	,[]	,[]],[[]	,[]	,[],[19,0]								,[]	,[]	,[],[],[],[]	,[]	,[]],[[]	,[]	,[35,1]													,[21,0]														,[]	,[]	,[]	,[],[],[]	,[]	,[]],[[]	,[]	,[33,2]													,[19,1]									,[]	,[]	,[]	,[],[],[]	,[]	,[]],[[]	,[]	,[33,5]										,[16,4]																									,[17.5,11]									,[]	,[21.5,9]																													,[]	,[26,5]																										,[],[]	,[]	,[]]]
global.armas_modn = [[[],["Grip"				]					,[]	,[],[],[],[],[],[],[],[],[],["Cores"]			]						,[[],[],[],[],[],[],[],[],[],[],["6\"","8\""				]]	,[[],[],[],["Mira fixa","Mira ajustável"],[],[],[],[],[],[],["4\"","6\""		]	]	,[[],[],["Nada","Silenciador"		]	,[],["Pente 7x"				,"Pente 15x"		]]	,[[],[],["Nada","Silenciador"								]	,["Mira fixa","Mira Red Dot"						]	,["Pente 17x"			,"Pente 22x"]			,[],["Nada","Lanterna","Pente extra"]												,[],[],[],[],["Nada","Coronha estendida"]	,["Cores"]]									,[[],["Cores"]														,["Nada","Freio de boca","Silenciador"]											,["Mira fixa","Mira Red Dot"]					,["Pente"				],[],["Nada","Laser"]								,[],[],[],[],[],["Cor padrão"]										]	,[[],[],["Nada","Silenciador"]									,["Mira fixa","Mira Red Dot"]					,["Pente 15x"								,"Pente 22x"]							,[],["Nada","Laser"]								,[],[],[],[],[],["Cor padrão"]											]	,[["Semi","Automática"]		,[],[],[],["Pente 7x"				,"Pente 11x"]				,[],[],[],[],[],[],[],["Cores"]]										,[["Gatinho padrão","Suave"]	,[],["Nada","Silenciador"]								,["Mira fixa","Mira Red Dot"]					,["Pente"				],[],["Nada","RK-2"]		,["9mm","6.5x25mm"]		,[],[],[],["Nada","Coronha estendida"]	,["Cores"]]												,[[],[],["Nada","Silenciador"]								,["Mira fixa","Mira Red Dot"]				,["Pente"				],[],["Nada","AFG","Laser"]																,[],[]	,[],[],["Nada","Coronha tática","Coronha madeira"]		,["Cores"]]									,[[],[],["Nada","Silenciador"]								,["Mira fixa","Mira Red Dot"]				,["Pente 32x"			,"Pente 40x"]		,[],[]	,["9mm",".45 ACP"]		,[],[],[],["Nada","Coronha estendida"]					,["Cores"]]								,[[],[],["Nada","Silenciador"]								,["Mira fixa","Mira Red Dot"]				,["Pente"				],[]	,["Nada","RK-2","AFG"]																,[],[]	,[]	,[],[]	,["Cores"]]								,[[],["Grip"]									,["9\"","Silenciador"]								,["Mira fixa","Mira Red Dot"]				,["Pente"				],[],[]	,[]	,[]	,["9\"","13.5\""]		,["Coronha estendida","Coronha retraida","Coronha tática"]			,[]],[[],[],[],[],[],[],[],[],[],[],["20\"","30\""]]			,[[],[],[],["Mira ajustável","Mira Red Dot"]			,[],[],["Nada","RK-2","AFG"]															,[],[],[],[],["Nada","Munição extra"]		,["Cores"]]									,[[],[]	,[],[],[],[],[],[],[],[],[],["Cores"		]]						,[[],[]	,[".710",".700",".720"]							,["Mira ajustável","Mira Red Dot"]			,[],[],[],["Nada","Lanterna"]							,["Nada","Laser"]							,[],[],[]	,["Cores"	]				]			,[["Semi","Automático"]	,["Grip"]								,["Nada","Silenciador"]						,["Mira ajustável","Mira Red Dot","Mira Holográfica"]								,["Pente"				],[],[],["Nada","AFG","RK-2","Laser"]																								,[],[],[],["Estendida","Retraida"]												,["Cores"]									],[[],[],[],[],["Pente"				],[],["Nada","Lança Granadas"]	]	,[[],[],[],[],["Pente"				],[],["Nada","Lança Granadas"]	],[[],[],["Nada","Freio de boca","Silenciador"]							,["Miras Ajustaveis","Red Dot","Holográfica","ACOG"]													,["Pente"				],[],[],[],[],[],[],[],["Cores"]]								,[["Automático","Rajada"]	,["Grip"]								,["Nada","Freio de boca","Silenciador"]							,["Mira ajustável"	,"Mira Holográfica"						,"Mira Acog"		,"Alça de pegada"]		,["Pente"									],[],["Nada","AFG","RK-2","Laser"]																									,["5.56x45mm OTAN",".300 ACC Blackout","7.62x39"]	,["Mira Fixa","Magnifier 3x","Laser"]																,[],[],["Coronha"]								,["Cores"]		]						,[[]	,["Grip"]								,["Nada","Freio de boca","Silenciador"]								,["Mira ajustável"	,"Mira Holográfica"						,"Mira ACOG"		,"Alça de pegada"	]	,["Pente"]									,["Nada","Laser","Lanterna"]														,["Nada","AFG","RK-2","Lançador de granadas"]															,[],["Nada","Magnifier 4x","Laser"]													,[],["Cano"]								,["Padrão","Tática"]											,["Cores"]								],[[]	,["Grip"]								,["Nada","Silenciador"]						,["Mira ajustável"	,"Mira Holográfica"						,"Mira Prismática"	,"Alça de pegada"	]	,["30x","60x"]																,["Nada","Laser","Lanterna"]														,["Nada","AFG","RK-2"]																,[],["Nada","Magnifier 4x","Laser","Lanterna"]																					,["Nada","Laser","Lanterna"]														,["14.5\""								,"16.5\""							,"20\""]							,["Coronha"]								,["Cores"]									],[[]	,[]	,["Nada","Silenciador"]						,["Mira ajustável","Mira Holográfica","Mira Prismática","Mira Telescópica"]													,["Pente"								]	,[]	,["Nada","AFG","RK-2","Bipé","Lança Granadas"]																								,[],["Miras Fixas","Magnifier 4x","Laser","Lanterna"]																					,[],[]	,[]	,["Cores"]									],[[]	,["Grip"]								,["Nada","Freio de boca","Silenciador"]							,["Nada","Mira Holográfica","Mira ACOG"							,"Mira Telescópica"]					,["Pente"]								,["Nada","Laser","Lanterna"]															,["Nada","AFG","RK-2"]																,[],["Nada","Magnifier 5x","Laser","Lanterna"]																						,[],["Cano"]								,["Coronha"]								,["Cores"]								],[[]	,[],["Nada","Freio de boca","Silenciador"]							,["Nada","Mira Holográfica","Mira ACOG"							]	,["Pente"				]	,["Nada","Laser","Lanterna"]														,[],["Nada","Magnifier 5x","Laser","Lanterna"]																						,[],[],["Coronha Normal","Coronha Dobrada"]				,[]],[[]	,[]	,["Nada","Silenciador"]		,["Miras ajustáveis","Mira Telescópica 8x"]	,["Pente"				]	,[]	,["Nada","Bipé"]			,[],[],[]	,[]	,[]],[[]	,[]	,["Nada","Freio de boca","M7 Lança Granadas"]	,["Miras ajustáveis","Mira Telescópica 10x"]	,[]	,[]	,[],[],[],[]	,[]	,[]],[[]	,[]	,[],["Miras fixas","Miras ajustáveis"]	,[]	,[]	,[],[],[],[]	,[]	,[]],[[]	,[]	,["Nada","Freio de boca","Lançador de granadas"]		,["Miras Fixas","Miras ajustáveis","Mira Telescópica 7x"]	,[]	,[]	,[]	,[],[],[]	,[]	,[]],[[]	,[]	,["Nada","Silenciador","Lançador de granadas"]			,["Miras Fixas","Mira Telescópica 9x"]	,[]	,[]	,[]	,[],[],[]	,[]	,[]],[[]	,[]	,["Nada","Silenciador"]						,["Mira ajustável"		,"Mira Red Dot","Mira Holográfica","Mira ACOG"]									,["200x","100x"]							,[]	,["Bipé","AFG","RK-2","Tripé"]																								,[]	,["Miras Fixas","Laser","Lanterna"]																			,[],[]	,[]	,[]]]
//0 conversao, 1 grip,2 boca do cano, 3 mira, 4 pente,5 meio cano,6 guarda mao,7 calibre,8 cima cano,9 cima cano2,10 cano,11 coronha,12 skin																																																																																															,ca																									  																																																						  																									,ca,[]																																																												,[]								,ca																																																					,ca																																																			,ca																				,ca,[]																																																								,ca												,ca,[]																																																													,ca																																																																													,ca											,ca,[]																																								,[]																									,ca														,ca,[]																																																																																																				 			,ca																																																																													  ]																																																	,ca							,ca,[]																																																								[]						,ca											,ca,[]																	,ca,[]									]	]	]	]																																												,ca,[]			,ca																																																																													,ca,[]																																																																																																																																																																																																																																																																																																																													 																						,ca																															ca																																																																																																														 																					,ca																															,ca,[]																																																											,																																																														 																						,ca																																																				 																																																																																											   																,ca,[]																																																																			]									]														]						,ca,[]																																					]																																																																																																									 															,ca				]																												]																																		
global.armas_modp = [[[],[spr_rt_85_grip2		]					,[]	,[],[],[],[],[],[],[],[],[],[spr_rt_85_cor		]	]					,[[],[],[],[],[],[],[],[],[],[],[0,spr_colt_cano			]]	,[[],[],[],[0,spr_rhino_mira			],[],[],[],[],[],[],[0,spr_rhino_cano	]	]	,[[],[],[0,spr_m1911_silenciador	]	,[],[spr_m1911_pente		,spr_m1911_pente_2	]]	,[[],[],[0,spr_pistola_silenciador							]	,[0,spr_pistola_mira								]	,[spr_glock_pente		,spr_glock_pente_2]		,[],[0,spr_glock_lanterna							,spr_glock_pente_extra]			,[],[],[],[],[0,spr_glock_coronha]			,[spr_glock_cor]]							,[[],[spr_berreta_m9_grip]											,[0,spr_pistola_freio		,spr_pistola_silenciador]							,[0,spr_pistola_mira]							,[spr_berreta_m9_pente	],[],[0,spr_pistola_laser]							,[],[],[],[],[],[spr_berreta_m9_cor]								]	,[[],[],[0,spr_pistola_silenciador]								,[0,spr_pistola_mira]							,[spr_hk_usp_pente_1						,spr_hk_usp_pente]						,[],[0,spr_pistola_laser]							,[],[],[],[],[],[spr_hk_usp_cor]										]	,[[0,spr_desert_eagle_auto]	,[],[],[],[spr_desert_eagle_pente_1	,spr_desert_eagle_pente]	,[],[],[],[],[],[],[],[spr_desert_eagle_cor]	]						,[[0,spr_mp9_gati]				,[],[0,spr_sub_silenciador]								,[0,spr_sub_mira]								,[spr_mp9_pente			],[],[0,spr_mp9_foregrip]	,[0,spr_mp9_bala]		,[],[],[],[0,spr_mp9_coronha]			,[spr_mp9_cor]]											,[[],[],[0,spr_sub_silenciador]								,[0,spr_sub_mira]							,[spr_uzi_pente			],[],[0,spr_sub_fore,spr_sub_laser]														,[],[]	,[],[],[0,spr_uzi_coronha,spr_uzi_coronha_1]			,[spr_uzi_cor]]								,[[],[],[0,spr_sub_silenciador]								,[0,spr_sub_mira]							,[spr_mac_10_pente_1	,spr_mac_10_pente]	,[],[]	,[0,spr_mac_10_bala]	,[],[],[],[spr_mac_10_coronha_1,spr_mac_10_coronha]		,[spr_mac_10_cor]]						,[[],[],[0,spr_sub_silenciador]								,[0,spr_sub_mira]							,[spr_vector_pente		],[]	,[0,spr_vector_foregrip,spr_sub_fore]												,[],[]	,[]	,[],[]	,[spr_vector_cor]]						,[[],[spr_pp_19_grip]							,[0,spr_sub_silenciador]							,[0,spr_sub_mira]							,[spr_pp_19_pente		],[],[]	,[]	,[]	,[0,spr_pp_19_cano]		,[spr_pp_19_coronha,spr_pp_19_coronha_2,spr_pp_19_coronha_1]		,[]],[[],[],[],[],[],[],[],[],[],[],[0,spr_m1897_cano]	]		,[[],[],[],[0,spr_shotgun_mira]							,[],[],[0,spr_shotgun_foregrip,spr_shotgun_foregrip_1]									,[],[],[],[],[0,spr_benelli_m1014_coronha]	,[spr_benelli_m1014_cor]]					,[[],[]	,[],[],[],[],[],[],[],[],[],[spr_a_681_cor]]						,[[],[]	,[0,spr_dp_12_choke		,spr_dp_12_choke_1]		,[0,spr_shotgun_mira			]			,[],[],[],[0,spr_shotgun_lanterna	]					,[0,spr_shotgun_laser]						,[],[],[]	,[spr_dp_12_cor]			]			,[[0,spr_saiga_12_auto]	,[spr_saiga_12_grip]					,[0,spr_saiga_12_silenciador]				,[0,spr_shotgun_mira						,spr_saiga_12_mira_1]					,[spr_saiga_12_pente	],[],[],[0,spr_shotgun_foregrip						,spr_shotgun_foregrip_1					,spr_shotgun_laser]						,[],[],[],[spr_saiga_12_coronha,0]												,[spr_saiga_12_cor]							],[[],[],[],[],[spr_ak_47_pente		],[],[0,spr_ak_47_granada]		]	,[[],[],[],[],[spr_fal_pente		],[],[0,spr_fal_granada]		],[[],[],[0,spr_cab_freio		,spr_cab_silenciador]					,[0,spr_cab_mira,spr_cab_mira_1,spr_m4a1_mira_1]														,[spr_aek_971_pente		],[],[],[],[],[],[],[],[spr_aek_971_cor]]						,[[0,spr_ar_15_raja]		,[spr_ar_15_grip]						,[0,spr_cab_freio		,spr_cab_silenciador]					,[0					,spr_cab_mira_1							,spr_ar_15_mira_2	,spr_ar_15_mira_4]		,[spr_ar_15_pente							],[],[0,spr_cab_foregrip_1						,spr_cab_foregrip						,spr_cab_laser]								,[0,spr_ar_15_calibre,spr_ar_15_calibre_1]			,[spr_ar_15_mira_5,spr_cab_magf	,spr_cab_laser]														,[],[],[spr_ar_15_coronha]						,[spr_ar_15_cor]			]			,[[]	,[spr_m4a1_grip]						,[0,spr_cab_freio		,spr_cab_silenciador					]	,[spr_m4a1_mira		,spr_cab_mira_1							,spr_m4a1_mira_1	,spr_ar_15_mira_4	]	,[spr_m4a1_pente]							,[0,spr_m4a1_laser,spr_m4a1_lanterna]												,[0,spr_cab_foregrip_1						,spr_cab_foregrip						,spr_m4a1_granada]	,[],[0,spr_cab_magf							,spr_cab_laser]							,[],[spr_m4a1_cano]							,[spr_m4a1_coronha_1,spr_m4a1_coronha]							,[spr_m4a1_cor]							],[[]	,[spr_hk416_grip]						,[0	,spr_cab_silenciador]					,[spr_hk416_mira	,spr_cab_mira_1							,spr_hk416_mira_2	,spr_ar_15_mira_4	]	,[spr_hk416_pente,spr_hk416_pente_1]										,[0,spr_cab_laser,spr_cab_lanterna]													,[0,spr_cab_foregrip_1	,spr_cab_foregrip]											,[],[0,spr_cab_magf							,spr_cab_laser						,spr_cab_lanterna]								,[0,spr_cab_laser						,spr_cab_lanterna]							,[spr_hk416_cano						,spr_hk416_cano_1					,spr_hk416_cano_2]					,[spr_hk416_coronha]						,[spr_hk416_cor]							],[[]	,[]	,[0	,spr_cab_silenciador]					,[spr_scar_mira_1		,spr_cab_mira_1							,spr_hk416_mira_2	,spr_scar_mira				]			,[spr_scar_pente						]	,[]	,[0,spr_cab_foregrip_1					,spr_cab_foregrip						,spr_scar_fore							,spr_scar_granada]	,[],[0,spr_cab_magf								,spr_cab_laser							,spr_cab_lanterna]								,[],[]	,[]	,[spr_scar_cor]								],[[]	,[spr_xm8_grip]							,[0	,spr_cab_freio,spr_cab_silenciador]							,[0,spr_cab_mira_1							,spr_m4a1_mira_1	,spr_xm8_mira]							,[spr_xm8_pente]						,[0,spr_cab_laser,spr_cab_lanterna]														,[0,spr_cab_foregrip_1	,spr_cab_foregrip]											,[],[0,spr_cab_magf								,spr_cab_laser							,spr_cab_lanterna]							,[],[spr_xm8_cano]							,[spr_xm8_coronha]							,[spr_xm8_cor]							],[[]	,[],[0	,spr_cab_freio,spr_cab_silenciador]							,[0,spr_cab_mira_1							,spr_m4a1_mira_1	]	,[spr_imbel_ia2_pente	]	,[0,spr_cab_laser,spr_cab_lanterna]													,[],[0,spr_cab_magf							,spr_cab_laser							,spr_cab_lanterna]								,[],[],[spr_imbel_ia2_coronha,spr_imbel_ia2_coronha_1]	,[]],[[]	,[]	,[0	,spr_bar_silenciador]	,[0	,spr_bar_mira]							,[spr_bar_pente			]	,[]	,[0,spr_bar_fore		]	,[],[],[]	,[]	,[]],[[]	,[]	,[0	,spr_m1_garand_frei	,spr_m1_garand_granada]	,[0	,spr_m1_garand_mira]						,[]	,[]	,[],[],[],[]	,[]	,[]],[[]	,[]	,[],[0	,spr_winchester_1894_mira]		,[]	,[]	,[],[],[],[]	,[]	,[]],[[]	,[]	,[0	,spr_lee_enfield_freio	,spr_lee_enfield_granada]	,[0	,spr_lee_enfield_mira_1,spr_lee_enfield_mira]			,[]	,[]	,[]	,[],[],[]	,[]	,[]],[[]	,[]	,[0	,spr_kar_98k_silenciador	,spr_kar_98k_granada]	,[0	,spr_kar_98k_mira]					,[]	,[]	,[]	,[],[],[]	,[]	,[]],[[]	,[]	,[0	,spr_cab_silenciador]					,[0,spr_cab_mira					,spr_cab_mira_1		,spr_m4a1_mira_1				]				,[spr_m249_pente,spr_m249_pente_1]			,[]	,[spr_m249_fore_1		,spr_cab_foregrip_1						,spr_cab_foregrip						,spr_m249_fore	]	,[]	,[spr_m249_mira			,spr_cab_laser							,spr_cab_lanterna]							,[],[]	,[]	,[]]]
//id : 0 = conversao, 1 = grip, 2 = cano_maior, 3 = freio de boca, 4 = sifrelenciador, 5 = mira, 6 = pente , 7 = pente skin, 8 = lanterna, 9 = laser, 10 = foregrip, 11 = lança granada, 12 = pente extra, 13 = coronha mudada, 14 = coronha skin, 15 = skin, 16 = calibre, 17 = magnificador,18 = cano mudado, 19 = cano skin, 20 = mira telescopica, 21 = cano mudado2																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										0																																																																																																																																																																																																																																											 																																																																																											   																																																																																			]									]										]																																																]																																																																																																								0																																		]																																																						
//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,volu,xestra,yestra,idbloq								ca,ca,ca,ca,ca,ca,ca,																																																																																	[																							e,m																											[																																																																							,[]																															 							,[]																				e,m																																																	e,m								,[],[]																																									e,m																																																																													e,m																																																																																							e,m																																																						[]													e,m			 																						 																			 																																									 																																																																			e,m																	  ]																																									e,m																																										e,m																																																																																													e,m																																																		e,m																				e,m					   		 []																																,[]																					,[],[],[],[],[],[]													,m																																																																																																	e,m																																																										 																																																				e,m																																																																																																																																																																																																																											 																					 																																																																																																	0																																																		 																																																																																																																																																										 																													 																																																																																											   																																																																																			]									]										]																																																]																																																																																																																																										]																																 																											
global.armas_mode = [[[],[a.rt_grip([0,0,["Padrão","Preto"]])	]	,[]	,[],[],[],[],[],[],[],[],[],[a.rt_verde([0,0,["Padrão","Verde"]])]]		,[[],[],[],[],[],[],[],[],[],[],[0,a.colt_cano([0,0])		]]	,[[],[],[],[0,a.rhino_mira([0,0])		],[],[],[],[],[],[],[0,a.rhino_cano([0,0])]]	,[[],[],[0,a.m1911_silenciador([0,0])]	,[],[a.geral_pente([0,0])	,a.m1911_pente([0,0])]]	,[[],[],[0,a.pistola_silenciador([14,1,["Padrão","Árido"]])	]	,[0,a.pistola_mira([0,0,["Padrão","Árido"]])		]	,[a.geral_pente([0,0])	,a.glock_pente([0,0])]	,[],[0,a.pistola_lanterna([0,0,["Padrão","Árido"]])	,a.glock_pente_extra([0,0])]	,[],[],[],[],[0,a.glock_coronha([0,0])]		,[a.pistola_cor([0,0,["Padrão","Prata"]])]]	,[[],[a.pistola_grip([0,0,["Padrão","Madeira","Areia","Verde"]])]	,[0,a.berreta_freio([14,1])	,a.pistola_silenciador([14,1,["Padrão","Árido"]])]	,[0,a.pistola_mira([0,0,["Padrão","Árido"]])]	,[a.geral_pente([0,0])	],[],[0,a.pistola_laser([9,4,["Padrão","Árido"]])]	,[],[],[],[],[],[a.pistola_cor([0,0,["Padrão","Areia","Bege"]])]	]	,[[],[],[0,a.pistola_silenciador([13,1,["Padrão","Árido"]])]	,[0,a.pistola_mira([0,0,["Padrão","Árido"]])]	,[a.geral_pente([0,0,["Padrão","Árido"]])	,a.usp_pente([0,0,["Padrão","Árido"]])]	,[],[0,a.pistola_laser([9,4,["Padrão","Árido"]])]	,[],[],[],[],[],[a.pistola_cor([0,0,["Padrão","Árido","Verde claro"]])]]	,[[0,a.desert_auto([0,0])]	,[],[],[],[a.geral_pente([0,0])		,a.desert_pente([0,0])]		,[],[],[],[],[],[],[],[a.pistola_cor([0,0,["Padrão","Ouro","Preto"]])]]	,[[0,a.mp9_gati([0,0])		]	,[],[0,a.sub_silenciador([15,2,["Padrão","Árido"]])]	,[0,a.sub_mira([3,-1,["Padrão","Árido"]])	]	,[a.geral_pente([0,0])	],[],[0,a.mp9_fore([11,4])]	,[0,a.mp9_bala([0,0])]	,[],[],[],[0,a.mp9_coronha([0,0])]		,[a.sub_cor([0,0,["Padrão","Vermelho","Árido"]])]	]	,[[],[],[0,a.sub_silenciador([21,3,["Padrão","Árido"]])]	,[0,a.sub_mira([12,0,["Padrão","Árido"]])]	,[a.geral_pente([0,0])	],[],[0,a.sub_fore([15,6,["Padrão","Árido"]]),a.sub_laser([15,6,["Padrão","Árido"]])]	,[],[]	,[],[],[0,a.uzi_coronha([0,0]),a.uzi_coronha1([0,0])]	,[a.sub_cor([0,0,["Padrão","Verde"]])]	]	,[[],[],[0,a.sub_silenciador([14,2,["Padrão","Árido"]])]	,[0,a.sub_mira([7,-1,["Padrão","Árido"]])]	,[a.geral_pente([0,0])	,a.mac_pente([0,0])],[],[]	,[0,a.mac_bala([0,0])]	,[],[],[],[a.mac_coronha([0,0]),a.mac_coronha1([0,0])]	,[a.sub_cor([0,0,["Padrão","Lima"]])]]	,[[],[],[0,a.sub_silenciador([21,2,["Padrão","Árido"]])]	,[0,a.sub_mira([11,0,["Padrão","Árido"]])]	,[a.geral_pente([0,0])	],[]	,[0,a.vector_fore([0,0,["Padrão","Árido"]]),a.sub_fore([18,4,["Padrão","Árido"]])]	,[],[]	,[]	,[],[]	,[a.sub_cor([0,0,["Padrão","Neve"]])]]	,[[],[a.sub_grip([0,0,["Padrão","Madeira"]])]	,[0,a.sub_silenciador([22,3,["Padrão","Árido"]])]	,[0,a.sub_mira([11,0,["Padrão","Árido"]])]	,[a.geral_pente([0,0])	],[],[]	,[]	,[]	,[0,a.pp_cano([0,0])]	,[a.pp_coronha([0,0]),a.pp_coronha1([0,0]),a.pp_coronha2([0,0])]	,[]],[[],[],[],[],[],[],[],[],[],[],[0,a.m1897_cano([0,0])]]	,[[],[],[],[0,a.sho_mira([14,-1,["Padrão","Árido"]])]	,[],[],[0,a.sho_fore1([22,5,["Padrão","Árido"]]),a.sho_fore([21,5,["Padrão","Árido"]])]	,[],[],[],[],[0,a.m1014_coronha([0,0])]	,[a.sho_cor([0,0,["Padrão","Clássico"]])]]		,[[],[]	,[],[],[],[],[],[],[],[],[],[a.sho_cor([0,0,["Padrão","Preto"]])]]	,[[],[]	,[0,a.dp_cano([0,0])	,a.  dp_cano1([0,0])]	,[0,a.sho_mira([17,-1,["Padrão","Árido"]])]	,[],[],[],[0,a.sho_lanterna([23,0,["Padrão","Árido"]])]	,[0,a.sho_laser([22,5,["Padrão","Árido"]])]	,[],[],[]	,[a.sho_cor([0,0,["Padrão","Árido"]])]]	,[[0,a.sho_auto([0,0])]	,[a.sho_grip([0,0,["Preto","Madeira"]])],[0,a.saiga_cano([0,0,["Padrão","Árido"]])]	,[0,a.sho_mira([17,-1,["Padrão","Árido"]])	,a.saiga_mira([0,0,["Padrão","Árido"]])],[a.geral_pente([0,0])	],[],[],[0,a.sho_fore([27,5,["Padrão","Árido"]])	,a.sho_fore1([26,5,["Padrão","Árido"]])	,a.sho_laser([26,5,["Padrão","Árido"]])],[],[],[],[a.saiga_coronha1([0,0,["Preto","Madeira"]]),a.saiga_coronha([0,0])]	,[a.sho_cor([0,0,["Padrão","Madeira"]])]	],[[],[],[],[],[a.geral_pente([0,0])],[],[0,a.cab_gran([0,0])]		]	,[[],[],[],[],[a.geral_pente([0,0])	],[],[0,a.cab_gran([0,0])]		],[[],[],[0,a.cab_frei([33,3])	,a.cab_sile([33,2,["Padrão","Árido"]])]	,[0,a.cab_mira([14,-1,["Padrão","Árido"]]),a.cab_mira1([16,-1,["Padrão","Árido"]]),a.cab_mira2([2,-1])]	,[a.geral_pente([0,0])	],[],[],[],[],[],[],[],[a.cab_cor([0,0,["Padrão","Lima"]])]]	,[[0,a.ar_raja([0,0])]		,[a.cab_grip([0,0,["Árido","Preto"]])]	,[0,a.cab_frei([33,2])	,a.cab_sile([32,2,["Árido","Preto"]])]	,[0					,a.cab_mira1([14,0,["Padrão","Árido"]])	,a.cab_mira2([0,0])	,a.ar_mira([0,0])]		,[a.geral_pente([0,0,["Árido","Padrão"]])	],[],[0,a.cab_fore([25,4,["Padrão","Árido"]])	,a.cab_fore1([26,4,["Padrão","Árido"]])	,a.cab_laser([24,4,["Padrão","Árido"]])]	,[0,a.ar_bala([0,0]),a.ar_bala1([0,0])]				,[a.cab_mirf([0,0]),a.cab_magf([22,0,["Padrão","Árido"]])	,a.cab_laser([28,0,["Padrão","Árido"]])],[],[],[a.cab_coronha([0,0,["Árido","Preto"]])]	,[a.cab_cor([0,0,["Padrão","Preto"]])]]	,[[]	,[a.cab_grip([0,0,["Preto","Árido"]])]	,[0,a.cab_frei([30,3])	,a.cab_sile([30,2,["Preto","Árido"]])	]	,[a.hk_mira([0,0])	,a.cab_mira1([13,0,["Preto","Árido"]])	,a.cab_mira2([0,0])	,a.ar_mira([-1,0])	]	,[a.cab_pente([0,0,["Padrão","Árido"]])]	,[0,a.cab_laser([26,3,["Preto","Árido"]]),a.cab_lanterna([0,0,["Preto","Árido"]])]	,[0,a.cab_fore([21,4,["Preto","Árido"]])	,a.cab_fore1([22,4,["Preto","Árido"]])	,a.cab_gran([0,0])]	,[],[0,a.cab_magf([19,0,["Padrão","Árido"]]),a.cab_laser([21,0,["Padrão","Árido"]])],[],[a.cab_cano([0,0,["Padrão","Árido"]])]	,[a.cab_coronha([0,0,["Preto","Árido"]]),a.m4_coronha([0,0])]	,[a.cab_cor([0,0,["Padrão","Árido"]])]	],[[]	,[a.cab_grip([0,0,["Preto","Árido"]])]	,[0	,a.cab_sile([29,2,["Preto","Árido"]])]	,[a.hk_mira([0,0])	,a.cab_mira1([15,0,["Preto","Árido"]])	,a.cab_mira2([0,0])	,a.ar_mira([-1,0])	]	,[a.cab_pente([0,0,["Preto","Árido"]]),a.hk_pente([0,0,["Preto","Árido"]])]	,[0,a.cab_laser([27,4,["Preto","Árido"]]),a.cab_lanterna([27,4,["Preto","Árido"]])]	,[0,a.cab_fore([22,4,["Preto","Árido"]])	,a.cab_fore1([23,4,["Preto","Árido"]])]	,[],[0,a.cab_magf([20,0,["Preto","Árido"]])	,a.cab_laser([23,0,["Preto","Árido"]]),a.cab_lanterna([25,1,["Preto","Árido"]])]	,[0,a.hk_laser([24,0,["Preto","Árido"]]),a.hk_lanterna([26,1,["Preto","Árido"]])]	,[a.cab_cano([0,0,["Preto","Árido"]])	,a.hk_cano([0,0,["Preto","Árido"]]),a.hk_cano1([0,0,["Preto","Árido"]])],[a.cab_coronha([0,0,["Preto","Árido"]])]	,[a.cab_cor([0,0,["Cor padrão","Árido"]])]	],[[]	,[]	,[0	,a.cab_sile([32,2,["Preto","Árido"]])]	,[a.scar_mira1([0,0])	,a.cab_mira1([15,0,["Preto","Árido"]])	,a.cab_mira2([2,0])	,a.scar_mira([-2,0,["Preto","Árido"]])]	,[a.geral_pente([0,0,["Árido","Preto"]])]	,[]	,[0,a.cab_fore([23,5,["Preto","Árido"]]),a.cab_fore1([24,5,["Preto","Árido"]])	,a.scar_fore([0,0,["Árido","Preto"]])	,a.cab_gran([0,0])]	,[],[0,a.scar_magf([21,0,["Preto","Árido"]])	,a.cab_laser([24,0,["Preto","Árido"]])	,a.cab_lanterna([24,1,["Preto","Árido"]])]		,[],[]	,[]	,[a.cab_cor([0,0,["Cor padrão","Preto"]])]	],[[]	,[a.cab_grip([0,0,["Árido","Preto"]])]	,[0	,a.cab_frei([32,1]),a.cab_sile([31,0,["Preto","Árido"]])]	,[0,a.cab_mira1([15,-2,["Preto","Árido"]])	,a.cab_mira2([2,-2]),a.xm8_mira([0,0,["Árido","Preto"]])]	,[a.cab_pente([0,0,["Árido","Preto"]])]	,[0,a.cab_laser([28,3,["Preto","Árido"]]),a.cab_lanterna([28,3,["Preto","Árido"]])]		,[0,a.cab_fore([23,3,["Preto","Árido"]])	,a.cab_fore1([24,3,["Preto","Árido"]])]	,[],[0,a.cab_magf([22,-2,["Preto","Árido"]])	,a.cab_laser([24,-2,["Preto","Árido"]])	,a.cab_lanterna([26,-1,["Preto","Árido"]])]	,[],[a.cab_cano([0,0,["Árido","Preto"]])]	,[a.cab_coronha([0,0,["Árido","Preto"]])]	,[a.cab_cor([0,0,["Árido","Preto"]])]	],[[]	,[],[0	,a.cab_frei([31,2]),a.cab_sile([31,1,["Preto","Árido"]])]	,[0,a.cab_mira1([15,-1,["Preto","Árido"]])	,a.cab_mira2([3,-1])]	,[a.geral_pente([0,0])	]	,[0,a.cab_laser([24,4,["Preto","Árido"]]),a.cab_lanterna([24,4,["Preto","Árido"]])]	,[],[0,a.cab_magf([20,-1,["Preto","Árido"]])	,a.cab_laser([23,-1,["Preto","Árido"]])	,a.cab_lanterna([24,0,["Preto","Árido"]])]	,[],[],[a.cab_coronha([0,0]),a.ia2_coronha([0,0])]		,[]],[[]	,[]	,[0	,a.cab_sile([0,0])]		,[0	,a.bar_mira([0,0,])]					,[a.geral_pente([0,0])	]	,[]	,[0,a.scar_fore([0,0])	]	,[],[],[]	,[]	,[]],[[]	,[]	,[0	,a.cab_frei([0,0])	,a.cab_gran([0,0])]		,[0	,a.m1_mira([0,0,])]							,[]	,[]	,[],[],[],[]	,[]	,[]],[[]	,[]	,[],[0	,a.win_mira([0,0,])]			,[]	,[]	,[],[],[],[]	,[]	,[]],[[]	,[]	,[0	,a.cab_frei([0,0])		,a.cab_gran([0,0])]			,[0	,a.lee_mira([0,0,]),a.m1_mira([0,0,])]					,[]	,[]	,[]	,[],[],[]	,[]	,[]],[[]	,[]	,[0	,a.cab_frei([0,0])			,a.cab_gran([0,0])]		,[0	,a.m1_mira([0,0,])]					,[]	,[]	,[]	,[],[],[]	,[]	,[]],[[]	,[]	,[0	,a.cab_sile([32,4,["Preto","Árido"]])]	,[0,a.cab_mira([16,2,["Preto","Árido"]]),a.cab_mira2([16,2,["Preto","Árido"]])	,a.cab_mira2([2,2])]	,[a.m249_pente([0,0]),a.m249_pente1([0,0])]	,[]	,[a.scar_mira1([0,0])	,a.cab_fore([20,9,["Preto","Árido"]])	,a.cab_fore1([21,9,["Preto","Árido"]])	,a.scar_fore([0,0])],[]	,[a.scar_mira1([0,0])	,a.cab_laser([24,3,["Preto","Árido"]])	,a.cab_lanterna([24,4,["Preto","Árido"]])]	,[],[]	,[]	,[]]]
//salva vidas 2																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																								

//tiro cock recc recf reff refff tirf
global.armas_sons = [[snd_rt_tiro,snd_rt_cock,snd_rt_recc,snd_rt_recf,snd_revolvers_reff,snd_rt_refff],[snd_colt_tiro,snd_colt_cock,snd_rt_recc,snd_colt_recf,snd_revolvers_reff,snd_colt_reff],[snd_rhino_tiro,snd_rhino_cock,snd_rt_recc,snd_rhino_recf,snd_revolvers_reff],[snd_m1911_tiro,snd_m1911_cock,snd_m1911_recc,snd_m1911_recf],[snd_glock_tiro,snd_glock_cock,snd_glock_recc,snd_glock_recf],[snd_m9_tiro,snd_m9_cock,snd_m9_recc,snd_m9_recf],[snd_usp_tiro,snd_usp_cock,snd_usp_recc,snd_usp_recf],[snd_desert_eagle_tiro,snd_desert_eagle_cock,snd_desert_eagle_recc,snd_desert_eagle_recf],[snd_mp9_tiro,snd_mp9_cock,snd_mp9_recc,snd_mp9_recf],[snd_uzi_tiro,snd_uzi_cock,snd_uzi_recc,snd_uzi_recf],[snd_mac_tiro,snd_mac_cock,snd_mac_recc,snd_mac_recf],[snd_vector_tiro,snd_vector_cock,snd_vector_recc,snd_vector_recf],[snd_pp_tiro,snd_pp_cock,snd_pp_recc,snd_pp_recf],[snd_m1897_tiro,snd_m1897_cock,snd_m1897_recc,snd_shotgun_recf],[snd_m1014_tiro,snd_m1014_cock,snd_m1014_recc,snd_shotgun_recf],[snd_a681_tiro,snd_a681_cock,snd_aek_recc,snd_a681_recf],[snd_dp_tiro,snd_dp_cock,snd_dp_recc,snd_shotgun_recf],[snd_saiga_tiro,snd_saiga_cock,snd_saiga_recc,snd_saiga_recf],[snd_ak_tiro,snd_ak_cock,snd_ak_recc,snd_ak_recf],[snd_fal_tiro,snd_fal_cock,snd_fal_recc,snd_fal_recf],[snd_aek_tiro,snd_aek_cock,snd_aek_recc,snd_aek_recf],[snd_ar_tiro,snd_ar_cock,snd_ar_recc,snd_ar_recf],[snd_m4a1_tiro,snd_m4a1_cock,snd_m4a1_recc,snd_m4a1_recf],[snd_hk_tiro,snd_hk_cock,snd_hk_recc,snd_hk_recf],[snd_scar_tiro,snd_scar_cock,snd_scar_recc,snd_scar_recf],[snd_xm8_tiro,snd_xm8_cock,snd_xm8_recc,snd_xm8_recf],[snd_ia_tiro,snd_ia_cock,snd_ia_recc,snd_ia_recf],[snd_bar_tiro,snd_bar_cock,snd_bar_recc,snd_bar_recf],[snd_m1_tiro,snd_m1_cock,snd_m1_recc,snd_m1_recf,0,0,snd_m1_tirf],[snd_win_tiro,snd_win_cock,0,snd_win_recf],[snd_lee_tiro,snd_lee_cock,snd_lee_recc,snd_lee_recf],[snd_kar_tiro,snd_kar_cock,snd_fuzil_recc],[snd_249_tiro,snd_249_cock,snd_249_recc,snd_249_recf]]
global.arma = irandom_range(0,array_length(global.armas_nome)-1)

#endregion

#region Player

global.xp = 0
global.level = 0
global.xp_max = 100

#endregion

#endregion

function troca_room(){
	
	room_goto(global.destino)
	
}

function inicia_texto(){

	texto=global.nome_jogo

}

function existe_variavel(nome,val = -100000,_id = id){
    
    if (variable_instance_exists(_id,nome)){
        
		if (val!=-100000){
		
			variable_instance_set(_id,nome,val)
    
		}else{
			
			return variable_instance_get(_id,nome)
			
		}
    }
}

function seta_part(vrv,_x,_y,mns,spr,co,di,vel,ixns,dist,velm,spri){
    
    var c = obj_cria_particulas.id
    var varsc = [vrv,"xx","yy","cor","ixms","mxs","dir","vels","sprites","dist","velm","spri"]
    var varss = [1,_x,_y,co,ixns,mns,di,vel,spr,dist,velm,spri]
    
    for (var i=0;i<array_length(varss);i++){
        
        existe_variavel(varsc[i],varss[i],c)
        
    }
}

function visao(tmd,vrv = "aaaaaaaaaaaa",_x = x,_y = y,dir2 = direction,alv = obj_player,cols = [obj_player,obj_miniparede,obj_porta],dir1 = 45,bol=1,segue=1,desenha=0){

	existe_variavel(vrv,0) 
		
	if (!is_undefined(alv) and point_distance(x,y,alv.x,alv.y)<tmd*1.2){
		
		//show_message("aa")
		var col = ds_list_create()
		var dis = tmd
		var viu = 0
		
		if (dir1>0 and dir1<5) dir1 = clamp(dir1,2.5,infinity)
		
		for (var i=0;i<dir1*2;i+=1){
        
			if (i%5 = 0){
			
		        dis = tmd
        
				collision_line_list(_x,_y,_x+lengthdir_x(tmd,dir2+(-dir1+i)),_y+lengthdir_y(tmd,dir2+(-dir1+i)),cols,0,0,col,1)

				var obj = ds_list_find_value(col,0)
	
				if (ds_list_size(col)>0){
					
					dis = point_distance(_x,_y,obj.x,obj.y)
		
					if (obj.object_index = alv or obj = alv){
						
						var vrvval = bol ? bol : obj
						
						existe_variavel(vrv,vrvval)
						
						if (segue) direction = point_direction(x,y,obj.x,obj.y)
						viu = 1
						
						return viu
	
					}
				}
	
				ds_list_clear(col)
	
				if (global.debug){
		
					draw_set_color(c_white)
					draw_line(_x,_y,_x+lengthdir_x(dis,dir2+(-dir1+i)),_y+lengthdir_y(dis,dir2+(-dir1+i)))
					draw_set_color(-1)
	
				}
				
				if (desenha){
		
					draw_set_color(desenha)
					draw_line(_x,_y,_x+lengthdir_x(dis,dir2+(-dir1+i)),_y+lengthdir_y(dis,dir2+(-dir1+i)))
					draw_set_color(-1)
					
				}
			}
		}

		ds_list_destroy(col)
	
		return viu
	
	}
}

function muda_texto(_vs=1,_hs=1,_fnt=fnt_menu,_cor = make_color_rgb(238,31,15)){
	
	draw_set_halign(_hs)
	draw_set_valign(_hs)
	draw_set_font(_fnt)
	draw_set_color(_cor)
	
}

function muda_ix(_id){
	
	_id.chatox = -1
	_id.dir = 0
	
	if (_id.direction = clamp(_id.direction,90,270)){ 
		
		_id.chatox = 1
		_id.dir = 180
		
	}
}

function timers(a1,a2){
	
	a1--
	
	if (a1<=0){
		
		return a2
		
	}
}

function parando(){
	
	if (!place_meeting(x,y,obj_camera)) exit;
	
}

function invisivel(){
	
	if (place_meeting(x,y,obj_camera)) draw_self()
	
}
	
function debugando(text,numb,ids){
	
	//obj_camera.escala,instance_place(x,y,obj_colisao_camera).i,obj_camera.alvo.object_index,cpos[cap][roo][0]),cpos[cap][roo][1]
	//-1 = camera -2 = colisao -3 = escalada
	
	static index = 0
	
	var gw = display_get_gui_width()-20
	var tmd = array_length(text)

	if (keyboard_check_pressed(vk_tab) or gamepad_button_check_pressed(0,gp_select))    global.debug = !global.debug
		
	if (global.debug){
		
		draw_set_halign(fa_right)
			
		if (keyboard_check_pressed(vk_down)) index++//index--
		if (keyboard_check_pressed(vk_up))    index--
		
		if (index=tmd) index = 0				  
		if (index<0) index=tmd-1
			
		for (var i=0;i<tmd;i++){
			
			#region Resolvendo questoes
			
			switch(numb[i]){
				
				case -1:
					
					var c = [0,0,0,0,0,0,0,obj_camera.escala,obj_camera.roo,obj_camera.alvo.object_index,obj_camera.x,obj_camera.y]
					
					numb[i] = c[i]
					
				break;
				
			}
			
			#endregion
			
			#region Sendo um menu
			
			if (i = index){
				
				draw_set_color(c_yellow)
				
				if (keyboard_check_pressed(vk_alt) and variable_instance_exists(ids[index],text[index])){
					
					variable_instance_set(ids[index],text[index],get_integer("Qual vai ser o valor da " + text[index] + " ?",0))
					
				}
			}
			
			#endregion
			
			draw_text(gw,5+15*i,text[i] + ": " + string(numb[i]))
			
			draw_set_color(-1)
			
		}
		
		draw_set_halign(fa_left)
	
		draw_set_halign(-1)
	
	}

	
}
	