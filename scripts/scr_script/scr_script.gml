#region Variaveis

#region Macros

global.colisao_normal = [obj_miniparede,obj_vidro]

#endregion

#region Extras

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

global.arma = 0
global.shake = 0
global.armas_nome_tipo = ["Revolver" ,"Pistola","Submetralhadora","Shotgun","Fuzil de assalto","Fuzil"]
global.armas_tipo = [0			,0				,0			,1			,1				,1			,1					,2			,2			,2			,2			,2			,1			,3			,3					,3			,3			,3				,4			,4			,4			,4			,4			,4			,4			,4					,4				,5				,5				,5					,5				,5			,5			]
global.armas_nome = ["RT 85"	,"Colt Python"	,"Rhino"	,"M1911"	,"Glock 18"	,"Berreta M9"	,"HK USP"	,"Desert Eagle"		,"MP9"		,"Uzi"		,"Mac-10"	,"Vector"	,"PP-19"	,"M1897"	,"Benelli M1014"	,"A-681"    ,"DP-12"	,"Saiga 12"		,"Ak-47"	,"FN Fal"	,"AEK-971"	,"AR-15"	,"M4A1"		,"HK416"	,"Scar-H"	,"Sig Sauer MCX"	,"Imbel IA2"	,"BAR M1918"	,"M1 GARAND"	,"Winchester 1894"	,"Lee Enfield"	,"KAR 98K"	,"M249"		]
global.armas_cliq = [1			,1				,1			,1			,0			,1				,1			,1					,0			,0			,0			,0			,0			,0			,1					,1          ,1			,1				,0			,0			,0			,0			,0			,0			,0			,0					,0				,0				,1				,1					,1				,1			,0			]
global.armas_aval = [0			,0				,0			,0			,0			,0				,0			,0					,0			,0			,0			,0			,0			,0			,0					,0          ,0			,0				,0			,0			,0			,0			,0			,0			,0			,0					,0				,0				,0				,0					,0				,0			,0			]
global.armas_munc = [5			,6				,6			,8			,18			,16				,16			,8					,31			,51			,33			,31			,64			,6			,9					,2          ,14			,10				,31			,28			,31			,31			,31			,31			,21			,31					,31				,21				,10				,14					,10				,5			,200		]
global.armas_dano = [2			,4				,4			,2.5		,1.5		,1.75			,1			,5					,1.5		,1			,1			,1			,1.5		,5			,5					,7          ,4			,4				,5			,5			,3			,3			,4			,4			,6			,5					,3				,6				,5				,4					,5				,7			,5			]
global.armas_prec = [11			,13				,8			,7			,6.5		,8				,4			,20					,7			,6			,6			,2.5		,9			,7			,6.5				,14         ,7			,10				,10			,8.5		,3.5		,6			,5			,4.5		,8			,6					,9				,15				,10				,8					,12				,16			,14			]
global.armas_precin=[1			,1				,1			,1			,1			,1				,1			,1					,1			,1			,1			,1			,1			,5			,6					,5          ,6			,7				,3			,3			,1			,2			,1			,1			,3			,3					,3				,1				,1				,2					,5				,1			,7			]
global.armas_reca = [30			,30				,30			,60			,60			,60				,60			,90					,60			,80			,60			,75			,120		,30			,45					,30         ,45			,60				,75			,75			,90			,60			,75			,90			,90			,120				,45				,140			,120			,25					,75				,75			,30			]
global.armas_rext = [1			,1				,1			,7			,17			,15				,15			,7					,30			,50			,32			,30			,63			,1			,1					,1          ,1			,9				,30			,27			,30			,30			,30			,30			,20			,30					,30				,20				,10				,1					,5				,5			,200		]
global.armas_cade = [10			,10				,10			,5			,5			,5				,4			,6					,3			,3			,2			,2			,4			,21			,7					,2          ,30			,6				,5			,15			,4			,4			,3			,4			,4			,4					,3				,6				,5				,5					,5				,15			,4			]
global.armas_bala = [1			,1				,1			,1			,1			,1				,1			,1					,1			,1			,1			,1			,1			,4			,4					,4          ,4			,4				,1			,1			,1			,1			,1			,1			,1			,1					,1				,1				,1				,1					,1				,1			,1			]
global.armas_raja = [0			,3				,0			,0			,0			,0				,0			,0					,0			,0			,0			,0			,0			,0			,0					,0          ,0			,0				,0			,3			,0			,0			,0			,0			,0			,0					,0				,0				,0				,0					,0				,0			,0			]
global.armas_raca = [0			,5				,0			,0			,0			,0				,0			,0					,0			,0			,0			,0			,0			,0			,0					,0          ,0			,0				,0			,5			,0			,0			,0			,0			,0			,0					,0				,0				,0				,0					,0				,0			,0			]
global.armas_prep = [1			,1				,1			,-1			,-1			,-1				,-1			,-1					,-1			,-1			,-1			,-1			,-1			,1			,-1					,1			,2			,-1				,-1			,-1			,-1			,-1			,-1			,-1			,-1			,-1					,-1				,-1				,-1				,1					,1				,1			,-1			]
global.armas_coix = [4			,5				,4			,5			,2.5		,3				,2			,14					,2			,2			,2			,2			,4			,5			,5					,7          ,5			,6				,6			,6			,3			,5			,4			,4			,6			,5					,4				,9				,6				,4					,8				,10			,9			]
global.armas_coiy = [3			,4				,3			,5			,2.5		,3				,2			,12					,2			,2			,2			,2			,4			,4			,7					,7			,5			,5				,5			,5			,4			,4			,3			,3			,5			,5					,3				,8				,5				,4					,8				,10			,9			]
global.armas_shak = [4			,5				,3			,6			,3			,4				,1			,16					,3			,3			,3			,2			,3			,6			,6					,14         ,6			,7				,6			,5			,3			,5			,4			,4			,6			,5					,4				,9				,6				,5					,9				,11			,11			]
global.armas_peso = [.1			,.2				,.2			,.15		,.12		,.14			,.11		,.3					,.17		,.25		,.15		,.3			,.35		,.4			,.45				,.3			,.5			,.4				,.5			,.5			,.45		,.4			,.4			,.4			,.47		,.43				,.37			,.6				,.55			,.45				,.55			,.58		,.9			]
//global.armas_spry = [2			,2				,3			,6			,2			,4				,1			,16					,4			,3			,4			,1			,5			,5			,5					,12         ,5			,6				,6			,5			,1			,5			,4			,4			,6			,5					,6				,9				,6				,5					,8				,11			,9			]
global.armas_sprt = [spr_rt_85	,spr_colt_python,spr_rhino	,spr_m1911	,spr_glock	,spr_berreta_m9	,spr_hk_usp	,spr_desert_eagle	,spr_mp9	,spr_uzi	,spr_mac_10	,spr_vector	,spr_pp_19	,spr_m1897	,spr_benelli_m1014	,spr_a_681  ,spr_dp_12	,spr_saiga_12	,spr_ak_47	,spr_fal	,spr_aek_971,spr_ar_15	,spr_m4a1	,spr_hk416	,spr_scarh	,spr_sig_sauer_mcx	,spr_imbel_ia2	,spr_bar_m1918	,spr_m1_garand	,spr_winchester_1894,spr_lee_enfield,spr_kar_98k,spr_m249	]
global.armas_part = [[0,1,0]	,[0,1,0]		,[0,1,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]		,[1,0,0]	,[1,0,0]			,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[0,0,1]	,[1,0,0]			,[0,1,0]	,[0,0,2]	,[1,0,0]		,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]			,[1,0,0]		,[1,0,0]		,[1,0,0]		,[0,0,1]			,[0,1,0]		,[0,1,0]	,[1,0,0]	]//atirando, recarregando,preparando
global.armas_mods = []//[[0,0,0]																	,[]		,[]		,[]		,[0,0,0,0,0]]
																																																								
//salva vidas 1																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																
global.armas_modx = [[[],[1,4					]	,[],[],[],[],[],[],[],[],[],[4,2]					]	,[[],[],[],[],[],[],[],[],[],[15,1							]				]		,[[],[],[],[],[],[],[],[],[],[15,1										]			,[7,1]]										,[[],[],[14,1											]		,[],[2,10									]]		,[[],[],[13,2												]	,[3,1										]		,[2,6]											,[],[11,3]																					,[],[],[],[0,2]												,[6,3]]					,[[],[2,7]																	,[14,1]																								,[2,1]											,[],[],[11,3]									,[],[],[],[],[7,3]													]	,[[],[],[13,2]												,[2,1]											,[1,9]											,[],[10,4]										,[],[],[],[],[4,3]									]	,[[7,4]										,[],[],[],[2,12]											,[],[],[],[],[],[],[9,2]]												,[[6,4]											,[],[16,2]												,[3,1]											,[],[],[11,3]												,[5,2]													,[],[],[0,2]													,[9,2]]								,[[],[],[21,3]												,[13,0]											,[],[],[16,5]																							,[],[]	,[],[0,4]																										,[10,4]]					,[[],[],[15,2]												,[7,0]											,[],[6,10]													,[]	,[5,2]													,[],[],[0,2]														,[6,3]]					,[[],[],[22,3]													,[11,2]											,[],[]	,[18,3]																										,[]	,[]	,[],[]	,[8,4]]					,[[],[7,9]						,[23,4]													,[11,2]											,[],[]	,[]	,[]	,[19,4]														,[8,3]																																			,[]],[[],[],[],[],[],[],[],[],[],[32,2]]													,[[],[],[],[16,1]										,[],[],[22,4]																									,[],[],[],[3,3]												,[13,3]]						,[[],[]	,[],[],[],[],[],[],[],[],[],[11,2]		]			,[[],[]	,[28,2]																					,[18,1]											,[],[],[],[25,1]									,[26,4]												,[],[]	,[15,3]						]		,[[16,4]										,[12,8]										,[35,3]													,[18,1]																						,[],[],[],[27,4]																																				,[],[],[3,4]																,[23,3]						],[[],[],[],[],[],[],[23,4]										]	,[[],[],[],[],[],[],[25,5]											],[[],[],[32,3]																											,[16,0]																						,[],[],[],[],[],[],[],[14,3]]					,[[14,5]										,[12,6]								,[33,2]																										,[15,1]																																		,[],[],[26,4]																																					,[18,4]																								,[28,0]																						,[],[4,4]									,[15,3]						]	,[[]	,[11,7]				,[30,3]																																										,[14,1]																						,[18,8]					,[25,3]																					,[22,4]																																																																					,[],[20,2]																						,[],[2,5]																,[13,3]						],[[]	,[10,7]				,[29,3]																										,[14,1]																																						,[19,8]																							,[27,3]																																										,[22,3]																																																						,[],[24,2]																																																																		,[21,2]				,[3,4]										,[16,3]								]]
global.armas_modn = [[[],["Padrão","Grip Preto"	]	,[],[],[],[],[],[],[],[],[],["Padrão","Cor Verde"]	]	,[[],[],[],[],[],[],[],[],[],["6\"","8\""					]				]		,[[],[],[],[],[],[],[],[],[],["4\"","6\""								]			,["Mira fixa","Mira ajustável"]]			,[[],[],["Nada","Silenciador"							]		,[],["Pente 7x","Pente 15x"					]]		,[[],[],["Nada","Silenciador"								]	,["Mira fixa","Mira Red Dot"				]		,["Pente 17x","Pente 22x"]						,[],["Nada","Lanterna","Pente extra"]														,[],[],[],["Nada","Coronha estendida"]						,["Cor padrão","Prata"]],[[],["Grip Normal","Grip Madeira","Grip Árido","Grip Verde"]				,["Nada","Freio de boca","Silenciador"]																,["Mira fixa","Mira Red Dot"]					,[],[],["Nada","Laser"]							,[],[],[],[],["Cor padrão","Árido","Bege"]							]	,[[],[],["Nada","Silenciador"]								,["Mira fixa","Mira Red Dot"]					,["Pente 15x","Pente 22x"]						,[],["Nada","Laser"]							,[],[],[],[],["Cor padrão","Árido","Verde claro"]	]	,[["Semi","Automática"]						,[],[],[],["Pente 7x","Pente 11x"]							,[],[],[],[],[],[],["Cor padrão","Árido","Preto"]]						,[["Gatinho padrão","Suave"]					,[],["Nada","Silenciador"]								,["Mira fixa","Mira Red Dot"]					,[],[],["Nada","RK-2"]										,["9mm","6.5x25mm"]										,[],[],["Nada","Coronha estendida"]								,["Cor padrão","Vermelho","Árido"]]	,[[],[],["Nada","Silenciador"]								,["Mira fixa","Mira Red Dot"]					,[],[],["Nada","AFG","Laser"]																			,[],[]	,[],["Nada","Coronha tática","Coronha madeira"]																	,["Cor padrão","Verde"]]	,[[],[],["Nada","Silenciador"]								,["Mira fixa","Mira Red Dot"]					,[],["Pente 32x","Pente 40x"]								,[]	,["9mm",".45 ACP"]										,[],[],["Nada","Coronha estendida"]									,["Cor padrão","Lima"]]	,[[],[],["Nada","Silenciador"]									,["Mira fixa","Mira Red Dot"]					,[],[]	,["Nada","RK-2","AFG"]																						,[]	,[]	,[],[]	,["Cor padrão","Neve"]]	,[[],["Cor padrão","Madeira"]	,["9\"","Silenciador"]									,["Mira fixa","Mira Red Dot"]					,[],[]	,[]	,[]	,["9\"","13.5\""]											,["Coronha estendida","Coronha retraida","Coronha tática"]																						,[]],[[],[],[],[],[],[],[],[],[],["20\"","30\""]]											,[[],[],[],["Mira ajustável","Mira Red Dot"]			,[],[],["Nada","RK-2","AFG"]																					,[],[],[],["Nada","Munição extra"]							,["Cor padrão","Clássico"]]		,[[],[]	,[],[],[],[],[],[],[],[],[],["Padrão","Preto"]]		,[[],[]	,[".710",".700",".720"]																	,["Mira ajustável","Mira Red Dot"]				,[],[],[],["Nada","Lanterna"]						,["Nada","Laser"]									,[],[]	,["Cor padrão","Árido"]		]		,[["Semi","Automático"]							,["Preto","Madeira"]						,["Nada","Silenciador"]									,["Mira ajustável","Mira Red Dot","Mira Holográfica"]										,[],[],[],["Nada","AFG","RK-2","Laser"]																															,[],[],["Preto","Madeira","Retraida"]										,["Cor padrão","Madeira"]	],[[],[],[],[],[],[],["Nada","Lança Granadas"]					]	,[[],[],[],[],[],[],["Nada","Lança Granadas"]						],[[],[],["Nada","Freio de boca","Silenciador"]																			,["Miras Ajustaveis","Red Dot","Holográfica"]												,[],[],[],[],[],[],[],["Cor padrão","Lima"]]	,[["Automático","Rajada"]						,["Árido","Preto"]					,["Nada","Freio de boca","Silenciador"]																		,["Mira ajustável","Mira Holográfica","Mira Acog","Alça de pegada"]																			,[],[],["Nada","AFG","RK-2","Laser"]																															,["5.56x45mm OTAN",".300 ACC Blackout","7.62x39"]													,["Mira Fixa","Magnifier 3x","Laser"]														,[],["Árido","Preto"]						,["Cor padrão","Preto"]		]	,[[]	,["Preto","Árido"]	,["Nada","Freio de boca","Silenciador Preto","Silenciador Árido"]																											,["Mira ajustável","Mira Holográfica","Mira ACOG"]											,["Cor padrão","Árido"]	,["Nada","Laser","Lanterna"]															,["Nada","AFG Preto","RK-2 Preto","AFG Árido","RK-2 Árido","Lançador de granadas"]																																																		,[],["Nada","Magnifier 4x","Laser"]																,[],["Preto","Árido","Tática"]											,["Cor padrão","Árido"]		],[[]	,["Preto","Árido"]	,["Nada","Silenciador Preto","Silenciador Árido"]															,["Mira ajustável","Mira Holográfica Preta","Mira Prismática Preta","Mira Holográfica Árido"]																,["30x Preto","30x Árido","60x Preto","60x Árido"]												,["Nada","Laser Preto","Lanterna Preto","Laser Árido","Lanterna Árido"]																										,["Nada","AFG Preto","RK-2 Preto","AFG Árido","RK-2 Árido"]																																									,[],["Nada","Magnifier 4x Preto","Magnifier 4x Árido","Laser Preto","Lanterna Preto","Laser Árido","Lanterna Árido"]																																							,["Preto","Árido"]	,["Preto","Árido"]							,["Cor padrão","Árido"]				]]
//conversao,grip,boca do cano, mira, pente,meio cano,guarda mao,calibre,cima cano,cano,coronha, skin																																																																																																																				,ca																																					  																																																  																,ca,[]																																																							,[]													,ca																																																				,ca																																																								,ca																																																																																	,ca																																																																																										,ca																																																																																		,ca																																											,[]																																												,ca																																																																																									,ca																																																			 								,ca																																											,ca																																											  ]																																																				,ca																																																							[]											,ca														,ca		,[]																							]	]	]	]	]	]																																							,ca																																																																																										,ca																																																																																 																																																																													,ca																																																																																																																																																																										 																																											,ca																																																																																																																																																																																																																																																																						
global.armas_modp = [[[],[0,spr_rt_85_grip2		]	,[],[],[],[],[],[],[],[],[],[0,spr_rt_85_verde]		]	,[[],[],[],[],[],[],[],[],[],[0,spr_colt_cano				]				]		,[[],[],[],[],[],[],[],[],[],[0,spr_rhino_cano							]			,[0,spr_rhino_mira]]						,[[],[],[0,spr_m1911_silenciador						]		,[],[0,spr_m1911_pente						]]		,[[],[],[0,spr_glock_silenciador							]	,[0,spr_glock_mira							]		,[0,spr_glock_pente]							,[],[0,spr_glock_lanterna		,spr_glock_pente_extra]										,[],[],[],[0,spr_glock_coronha]								,[0,spr_glock_cor]]		,[[],[0,spr_berreta_m9_grip,spr_berreta_m9_grip_2,spr_berreta_m9_grip_3]	,[0,spr_berreta_m9_freio						,spr_berreta_m9_silenciador]						,[0,spr_berreta_m9_mira]						,[],[],[0,spr_berreta_m9_laser]					,[],[],[],[],[0,spr_berreta_m9_cor,spr_berreta_m9_cor_2]			]	,[[],[],[0,spr_hk_usp_silenciador]							,[0,spr_hk_usp_mira]							,[0,spr_hk_usp_pente]							,[],[0,spr_hk_usp_laser]						,[],[],[],[],[0,spr_hk_usp_cor,spr_hk_usp_cor_2]	]	,[[0,spr_desert_eagle_auto]					,[],[],[],[0,spr_desert_eagle_pente]						,[],[],[],[],[],[],[0,spr_desert_eagle_cor,spr_desert_eagle_cor_2]	]	,[[0,spr_mp9_gati]								,[],[0,spr_mp9_silenciador]								,[0,spr_mp9_mira1]								,[],[],[0,spr_mp9_foregrip]									,[0,spr_mp9_bala]										,[],[],[0,spr_mp9_coronha]										,[0,spr_mp9_cor,spr_mp9_cor2]]		,[[],[],[0,spr_uzi_silenciador]								,[0,spr_uzi_mira]								,[],[],[0,spr_uzi_foregrip,spr_uzi_laser]																,[],[]	,[],[0,spr_uzi_coronha,spr_uzi_coronha_1]																		,[0,spr_uzi_cor]]			,[[],[],[0,spr_mac_10_silenciador]							,[0,spr_mac_10_mira]							,[],[0,spr_mac_10_pente]									,[]	,[0,spr_mac_10_bala]									,[],[],[spr_mac_10_coronha_1,spr_mac_10_coronha]					,[0,spr_mac_10_cor]]	,[[],[],[0,spr_vector_silenciador]								,[0,spr_vector_mira]							,[],[]	,[0,spr_vector_foregrip,spr_vector_foregrip_1]																,[]	,[]	,[],[]	,[0,spr_vector_cor]]	,[[],[0,spr_pp_19_grip]			,[0,spr_pp_19_silenciador]								,[0,spr_pp_19_mira]								,[],[]	,[]	,[]	,[0,spr_pp_19_cano]											,[spr_pp_19_coronha,spr_pp_19_coronha_2,spr_pp_19_coronha_1]																					,[]],[[],[],[],[],[],[],[],[],[],[0,spr_m1897_cano]	]										,[[],[],[],[0,spr_benelli_m1014_mira]					,[],[],[0,spr_benelli_m1014_foregrip,spr_benelli_m1014_foregrip_1]												,[],[],[],[0,spr_benelli_m1014_coronha]						,[0,spr_benelli_m1014_cor]]		,[[],[]	,[],[],[],[],[],[],[],[],[],[0,spr_a_681_cor]]		,[[],[]	,[0,spr_dp_12_choke						,spr_dp_12_choke_1]								,[0,spr_dp_12_mira			]					,[],[],[],[0,spr_dp_12_lanterna	]					,[0,spr_dp_12_laser]								,[],[]	,[0,spr_dp_12_cor]			]		,[[0,spr_saiga_12_auto]							,[spr_saiga_12_grip_1,spr_saiga_12_grip]	,[0,spr_saiga_12_silenciador]							,[0,spr_saiga_12_mira			,spr_saiga_12_mira_1]										,[],[],[],[0,spr_saiga_12_foregrip								,spr_saiga_12_foregrip_1							,spr_saiga_12_laser]						,[],[],[spr_saiga_12_coronha,spr_saiga_12_coronha_1,0]						,[0,spr_saiga_12_cor]		],[[],[],[],[],[],[],[0,spr_ak_47_granada]						]	,[[],[],[],[],[],[],[0,spr_fal_granada]								],[[],[],[0,spr_aek_971_freio,spr_aek_971_silenciador]																	,[0,spr_aek_971_mira_1,spr_aek_971_mira]													,[],[],[],[],[],[],[],[0,spr_aek_971_cor]]		,[[0,spr_ar_15_raja]							,[spr_ar_15_grip_1,spr_ar_15_grip]	,[0,spr_ar_15_freio										,spr_ar_15_silenciador]								,[0,spr_ar_15_mira								,spr_ar_15_mira_2							,spr_ar_15_mira_4]								,[],[],[0,spr_ar_15_foregrip								,spr_ar_15_foregrip_2									,spr_ar_15_laser]							,[0,spr_ar_15_calibre,spr_ar_15_calibre_1]															,[spr_ar_15_mira_5,spr_ar_15_mira_3							,spr_ar_15_laser_2]				,[],[spr_ar_15_coronha_1,spr_ar_15_coronha]	,[0,spr_ar_15_cor]			]	,[[]	,[0,spr_m4a1_grip]	,[0,spr_m4a1_freio											,spr_m4a1_silenciador									,spr_m4a1_silenciador_1]								,[0,spr_m4a1_mira								,spr_m4a1_mira_1]							,[0,spr_m4a1_pente]		,[0,spr_m4a1_laser,spr_m4a1_lanterna]													,[0,spr_m4a1_foregrip_2										,spr_m4a1_foregrip										,spr_m4a1_foregrip_3									,spr_m4a1_foregrip_1									,spr_m4a1_granada							]		,[],[0,spr_m4a1_mira_2								,spr_m4a1_laser_1]							,[],[spr_m4a1_coronha_1,spr_m4a1_coronha_2,spr_m4a1_coronha]			,[0,spr_m4a1_cor]			],[[]	,[0,spr_hk416_grip]	,[0	,spr_hk416_silenciador								,spr_hk416_silenciador_1]							,[spr_hk416_mira,spr_hk416_mira_1									,spr_hk416_mira_2						,spr_hk416_mira_3	]							,[spr_hk416_pente_3,spr_hk416_pente,spr_hk416_pente_2,spr_hk416_pente_1]						,[0,spr_hk416_laser,spr_hk416_lanterna,spr_hk416_laser_2,spr_hk416_lanterna_2]																								,[0,spr_hk416_foregrip_1	,spr_hk416_foregrip	,spr_hk416_foregrip_3	,spr_hk416_foregrip_2	]																															,[],[0,spr_hk416_mira_4								,spr_hk416_mira_5							,spr_hk416_laser_1							,spr_hk416_lanterna_1						,spr_hk416_laser_3							,spr_hk416_lanterna_3					]	,[0,spr_hk416_cano]	,[spr_hk416_coronha,spr_hk416_coronha_1]	,[0,spr_hk416_cor]	]]
//id : 0 = conversao, 1 = grip, 2 = cano_maior, 3 = freio de boca, 4 = sifrelenciador, 5 = mira, 6 = pente mudadfrefrefrefrefrefrefreo, 7 = pente skin, 8 = lanterna, 9 = laser, 10 = foregrip, 11 = lança granada, 12 = pente extra, 13 = coronha mudada, 14 = coronha skin, 15 = skin, 16 = calibre, 17 = magnificador,18 = cano mudado, 19 = cano skin																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										
//id cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade,me,mira,peso,ca,volu,xestra								ca,ca,ca,ca,ca,ca,ca,																																																																																	[																									e,m																											[																																																																				e,m					,[]																															 								,[]																				e,m																																																	e,m								,[],[]																																											e,m																																																																											e,m																																																																																			e,m																																																										[]																	e,m			 															 																			 																																											e,m				 																																																													e,m																	  ]																																								e,m																																												e,m																																																																																									e,m																																																														e,m															e,m					   		 []																										,[]																					,[],[],[],[],[],[]							   e,m																																																																																					e,m																																																																													 																																																																											e,m																																																																																																																																																																																																																							 																																																																																																																																																																																																																																																																																																																																																													
global.armas_mode = [[[],[0,1					]	,[],[],[],[],[],[],[],[],[],[0,14]					]	,[[],[],[],[],[],[],[],[],[],[0,[2,0,0,.75,0,0,0,-.25,0,0,0,0,0.01,.05,-.1,0]	]]	,[[],[],[],[],[],[],[],[],[],[0,[2,0,0,.75,0,0,0,-.25,0,0,0,0,0.01,.05,-.1,0]]		,[0,[5,0,0,0,1,0,0,0,0,0,0,0,0.05,0,0]]]	,[[],[],[0,[4,0,0,-.25,-.5,0,-.5,-.5,-.5,0,0,0,0.01,0.03,0,0]]	,[],[0,[6,0,8,0,2,30,3,3,3,0,0,0,.04,0.15,0,0]]]	,[[],[],[0,[4,0,0,-.25,-.5,0,-.35,-.35,-.35,0,0,0,0,0.03,0,0]]	,[0,[5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.03,0,0]	]	,[0,[6,0,5,0,.5,10,0,0,.5,0,0,0,0.01,0.05,0,0]]	,[],[0,[8,0,0,0,0,0,0,0,0,0,0,0,0,0.02,0,0]	,[12,0,0,0,.3,-15,.3,.3,.3,0,0,0,0.03,0.1,0,0]]	,[],[],[],[0,[13,0,0,0,-1.5,0,-1,-1,-1,0,0,0,0,0.05,0,0]]	,[0,15]]				,[[],[0,1,1,1	]															,[0,[3,0,0,0,-.75,0,0,0,-.75,0,0,0,0,0.01,0.2,0]	,[4,0,0,-.25,-.35,0,0,0,0,0,0,0,0.01,0.03,0,0]]	,[0,[5,0,0,0,-1,0,0,0,0,0,0,0,0.03,0.01,0,0]]	,[],[],[0,[9,0,0,0,0,0,0,0,0,0,0,0,0,0.02,0,0]]	,[],[],[],[],[15,15,15]												]	,[[],[],[0,[4,0,0,-.25,-.5,0,0,0,-.75,0,0,0,0.01,0.02,0,0]]	,[0,[5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.01,0,0]]	,[0,[6,0,7,0,1.5,25,1,1,2,0,0,0,0.01,0.03,0,0]]	,[],[0,[9,0,0,0,0,0,0,0,0,0,0,0,0.00,0.02,0,0]]	,[],[],[],[],[0,15,15								]]	,[[0,[0,-1,0,0,0,0,0,0,0,0,0,4,0,0,0,0]]	,[],[],[],[0,[6,0,4,0,2,30,1,1,1.5,0,0,0,0.02,0.15,0,0]]	,[],[],[],[],[],[],[0,15,15]										]	,[[0,[0,0,0,-.2,0,0,0,0,0,0,0,0,0,0.015,0,0]]	,[],[0,[4,0,0,-.35,-.5,0,0,0,-.5,0,0,0,0.01,0.02,0,0]]	,[0,[5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.01,0,0]]	,[],[],[0,[5,0,0,0,-1,5,-1,-1,-1.5,0,0,0,0.00,0.03,0,0]]	,[0,[16,0,0,1,4,10,2.5,2.5,3,0,0,0,0.00,-0.03,0.7,0]]	,[],[],[0,[13,0,0,0,-1.5,0,-1,-1,-1.5,0,0,0,.01,.05,0,0]]		,[0,15,15]						]	,[[],[],[0,[4,0,0,-.45,-.5,0,0,0,-.65,0,0,0,0.01,0.02,0,0]]	,[0,[5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.01,0,0]]	,[],[],[0,[10,0,0,0,-.75,15,-.5,-.5,-1,0,0,0,0.00,0.03,0,0],[10,0,0,0,0,0,0,0,0,0,0,0,0.00,0.02,0,0]]	,[],[]	,[],[0,[13,0,0,0,-1.25,0,-1,-1,-1.25,0,0,0,0.01,0.04,0,0],[13,0,0,0,-1.25,0,-.8,-.8,-1.25,0,0,0,0.02,0.07,0,0]]	,[0,0]					]	,[[],[],[0,[4,0,0,-.25,-.6,0,-1,-1,-1,0,0,0,0.01,0.03,0,0]]	,[0,[5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.01,0,0]]	,[],[0,[6,0,8,0,.25,10,.15,.15,.25,0,0,0,0.01,0.03,0,0]]	,[]	,[0,[16,0,-3,1.5,4,30,3,3,3.5,0,0,0,0.00,0.05,0.3,0]]	,[],[],[0,[13,0,0,0,-1.5,0,-1.25,-1.25,-1.5,0,0,0,0.01,0.03,0,0]]	,[15,15]]				,[[],[],[0,[4,0,0,-.05,-.2,0,-.5,-.5,-.5,0,0,0,0.01,0.03,0,0]]	,[0,[5,0,0,0,-.5,0,0,0,0,0,0,0,0.04,0.01,0,0]]	,[],[]	,[0,[10,0,0,0,-.75,0,-.75,-.75,-1,0,0,0,0.01,0.03,0,0],[10,0,0,0,-.75,0,-.5,-.5,-.5,0,0,0,0.01,0.02,0,0]]	,[]	,[]	,[],[]	,[15,15]			]	,[[],[1,1]						,[0,[4,0,0,-.35,-.75,0,-1,-1,-1,0,0,0,0.01,0.03,0,0]]	,[0,[5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.01,0,0]]	,[],[]	,[]	,[]	,[0,[2,0,0,.25,-.5,0,-.5,-.5,-.75,0,0,0,0.03,0.075,0,6]]	,[[13,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0],[13,0,0,0,1,0,1,1,1.5,0,0,0,-0.01,-0.1,0,0],[13,0,0,0,-.5,0,-.5,-.5,-.75,0,0,0,0.01,0.06,0,0]]		,[]],[[],[],[],[],[],[],[],[],[],[0,[2,0,0,.5,-.5,0,-.5,-.5,-.5,0,0,0,0.02,0.15,0.1,0]]]	,[[],[],[],[0,[5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.01,0,0]]	,[],[],[0,[10,0,0,0,-1,0,-1,-1,-.25,0,0,0,0.01,0.05,0,0],[10,0,0,0,-1,0,-1.1,-1.1,-.35,0,0,0,0.01,0.05,0,0]]	,[],[],[],[0,[13,0,0,0,0,-15,0,0,0,0,0,0,0.02,0.15,0,0]]	,[15,15]]						,[[],[]	,[],[],[],[],[],[],[],[],[],[0,15]]					,[[],[]	,[0,[3,0,0,0,-1.5,0,0,0,0,0,0,0,0.0,0.0,0,0],[3,0,0,0,1.5,0,0,0,0,0,0,0,0.0,0.0,0,0]]	,[0,[5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.01,0,0]]	,[],[],[],[0,[8,0,0,0,0,0,0,0,0,0,0,0,0.00,0.02,0,0]]	,[0,[9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.02,0,0]]	,[],[]	,[0,15]]							,[[0,[0,-1,0,0,0,0,0,0,0,0,0,7,0.00,0.0,0,0]]	,[1,1]										,[0,[4,0,0,-.25,-.5,0,0,0,-.25,0,0,0,0.02,0.04,0,0]]	,[0,[5,0,0,0,-1,0,0,0,0,0,0,0,0.04,0.01,0,0],[5,0,0,0,-1.25,0,0,0,0,0,0,0,0.06,0.03,0,0]]	,[],[],[],[0,[10,0,0,0,-1,0,-.75,-.75,-.9,0,0,0,0.01,0.03,0,0]	,[10,0,0,0,-1,0,-.6,-.6,-.6,0,0,0,0.01,0.03,0,0]	,[9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.02,0,0]]	,[],[],[14,14,[13,0,0,0,2,0,1.5,1.5,2,0,0,0,-0.02,-0.06,0,0]]				,[0,15]						],[[],[],[],[],[],[],[0,[11,0,0,0,0,0,0,0,0,0,0,0,0.02,0.1,0,0]]]	,[[],[],[],[],[],[],[0,[11,0,0,0,0,0,0,0,0,0,0,0,0.02,0.1,0,0]]		],[[],[],[0,[3,0,0,0,-.15,0,-.25,-.25,-.25,0,0,0,0.00,0.02,0,0],[4,0,0,-.25,-.35,0,-.55,-.55,-.55,0,0,0,0.03,0.06,0,0]]	,[0,[5,0,0,0,-.35,0,0,0,0,0,0,0,0.05,0.02,0,0],[5,0,0,0,-.5,0,0,0,0,0,0,0,0.1,0.05,0,0]]	,[],[],[],[],[],[],[],[0,15]]					,[[0,[0,0,0,0,0,0,0,0,0,3,4,13,0.0,0.0,0,0]]	,[1,1]								,[0,[3,0,0,0,-.25,0,-.1,-.1,-.25,0,0,0,0.00,0.01,0.2,0]	,[4,0,0,-.15,-.35,0,0,0,-.25,0,0,0,0.02,0.04,0,0]]	,[0,[5,0,0,0,-.65,0,0,0,0,0,0,0,0.06,0.03,0,0]	,[5,0,0,0,-1,0,0,0,0,0,0,0,0.1,0.07,0,0]	,[5,0,0,0,-.25,0,0,0,0,0,0,0,-0.05,0.02,0,0]]	,[],[],[0,[10,0,0,0,-.5,0,-.4,-.4,-.5,0,0,0,0.01,0.04,0,0]	,[10,0,0,0,-.5,0,-.3,-.3,-.4,0,0,0,0.01,0.05,0,0]		,[9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0]]	,[0,[16,0,0,-.5,1,-15,1,1,1,0,0,0,-0.025,0.00,-.2,0],[16,0,0,1,1.5,30,2,2,2,0,0,0,0.01,0.05,.2,0]]	,[0,[17,0,0,0,-.25,0,0,0,0,0,0,0,0.04,0.05,0,0]	,[9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.03,0,0]]	,[],[14,14]									,[0,15						]]	,[[]	,[0,1]				,[0,[3,0,0,0,-.25,0,-.35,-.35,-.25,0,0,0,0.00,0.01,0.2,0]	,[4,0,0,-.25,-.45,0,-.5,-.5,-.5,0,0,0,0.02,0.07,0,0]	,[4,0,0,-.15,-.35,0,-.4,-.4,-.5,0,0,0,0.02,0.07,0,0]]	,[0,[5,0,0,0,-.5,0,0,0,0,0,0,0,0.06,0.04,0,0]	,[5,0,0,0,-.75,0,0,0,0,0,0,0,0.1,0.08,0,0]]	,[0,7]					,[0,[9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.045,0,0],[8,0,0,0,0,0,0,0,0,0,0,0,0.01,0.025,0,0]]	,[0,[10,0,0,0,-.35,0,-.35,-.35,-.5,0,0,0,0.02,0.065,0,0]	,[10,0,0,0,-.35,0,-.35,-.35,-.5,0,0,0,0.02,0.075,0,0]	,[10,0,0,0,-.35,0,-.35,-.35,-.5,0,0,0,0.02,0.065,0,0]	,[10,0,0,0,-.35,0,-.35,-.35,-.5,0,0,0,0.02,0.075,0,0]	,[11,0,0,0,.25,0,.25,.25,.36,0,0,0,0.03,0.1,0,0]]	,[],[0,[17,0,0,0,-.25,0,0,0,0,0,0,0,0.05,0.05,0,0]	,[9,0,0,0,0,0,0,0,0,0,0,0,0.01,0.035,0,0]]	,[],[14,14,[13,0,0,0,-.25,0,-.25,-.25,-.36,0,0,0,0.02,0.05,0,0]]		,[0,15]						],[[]	,[0,1]				,[0	,[4,0,0,-.2,-.4,0,-.4,-.4,-.4,0,0,0,0.02,0.06,0,0]	,[4,0,0,-.2,-.4,0,-.4,-.4,-.4,0,0,0,0.02,0.06,0,0]]	,[0				,[5,0,0,0,-.4,0,0,0,0,0,0,0,0.055,0.035,0,0]	,[5,0,0,0,-.7,0,0,0,0,0,0,0,0.08,0.075,0,0]	,[5,0,0,0,-.45,0,0,0,0,0,0,0,0.065,0.045,0,0]]	,[7,7,[6,0,30,0,1.5,60,2,2,2,0,0,0,0.1,0.09,0,0],[6,0,30,0,1.5,60,2,2,2,0,0,0,0.1,0.09,0,0]]	,[0,[9,0,0,0,0,0,0,0,0,0,0,0,0.02,0.045,0,0],[8,0,0,0,0,0,0,0,0,0,0,0,0.01,0.025,0,0],[9,0,0,0,0,0,0,0,0,0,0,0,0.02,0.045,0,0],[8,0,0,0,0,0,0,0,0,0,0,0,0.01,0.025,0,0]]	,[0,[10,0,0,0,-.35,0,-.35,-.35,-.5,0,0,0,0.02,0.06,0,0]	,[10,0,0,0,-.35,0,-.35,-.35,-.5,0,0,0,0.02,0.07,0,0],[10,0,0,0,-.35,0,-.35,-.35,-.5,0,0,0,0.02,0.06,0,0]	,[10,0,0,0,-.35,0,-.35,-.35,-.5,0,0,0,0.02,0.07,0,0]]	,[],[0,[17,0,0,0,-.3,0,0,0,0,0,0,0,0.06,0.05,0,0]	,[17,0,0,0,-.3,0,0,0,0,0,0,0,0.06,0.05,0,0]	,[9,0,0,0,0,0,0,0,0,0,0,0,0.02,0.045,0,0]	,[8,0,0,0,0,0,0,0,0,0,0,0,0.01,0.025,0,0]	,[9,0,0,0,0,0,0,0,0,0,0,0,0.02,0.045,0,0]	,[8,0,0,0,0,0,0,0,0,0,0,0,0.01,0.025,0]	]	,[19,19]			,[14,14]									,[15,15]							]]
//salva vidas 2																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															
global.tiros_velo = [7.5		,10			,10				,11			,8			,8				,8			,12					,9			,8.5		,9			,9			,9			,13			,13					,12			,12			,12				,12			,11			,11			,11			,11			,11.5		,12			,12					,11				,13				,12.5			,11					,12.5			,14			,14			]    																																																																																																																																																																																																																																													
global.tiros_sprt = [spr_tiro	,spr_tiro	,spr_tiro		,spr_tiro	,spr_tiro	,spr_tiro		,spr_tiro	,spr_tiro			,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_chumbo	,spr_chumbo			,spr_chumbo	,spr_chumbo	,spr_chumbo		,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro			,spr_tiro		,spr_tiro		,spr_tiro		,spr_tiro			,spr_tiro		,spr_tiro	,spr_tiro	]																																																																																																																																																																																																																																														
global.tiros_part = [spr_capsula,spr_capsula,spr_capsula	,spr_capsula,spr_capsula,spr_capsula	,spr_capsula,spr_capsula		,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_gauge	,spr_gauge			,spr_gauge	,spr_gauge	,spr_gauge		,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_capsula		,spr_capsula	,spr_capsula	,spr_capsula	,spr_capsula		,spr_capsula	,spr_capsula,spr_capsula]
//tiro cock recc recf reff refff tirf
global.armas_sons = [[snd_rt_tiro,snd_rt_cock,snd_rt_recc,snd_rt_recf,snd_revolvers_reff,snd_rt_refff],[snd_colt_tiro,snd_colt_cock,snd_rt_recc,snd_colt_recf,snd_revolvers_reff,snd_colt_reff],[snd_rhino_tiro,snd_rhino_cock,snd_rt_recc,snd_rhino_recf,snd_revolvers_reff],[snd_m1911_tiro,snd_m1911_cock,snd_m1911_recc,snd_m1911_recf],[snd_glock_tiro,snd_glock_cock,snd_glock_recc,snd_glock_recf],[snd_m9_tiro,snd_m9_cock,snd_m9_recc,snd_m9_recf],[snd_usp_tiro,snd_usp_cock,snd_usp_recc,snd_usp_recf],[snd_desert_eagle_tiro,snd_desert_eagle_cock,snd_desert_eagle_recc,snd_desert_eagle_recf],[snd_mp9_tiro,snd_mp9_cock,snd_mp9_recc,snd_mp9_recf],[snd_uzi_tiro,snd_uzi_cock,snd_uzi_recc,snd_uzi_recf],[snd_mac_tiro,snd_mac_cock,snd_mac_recc,snd_mac_recf],[snd_vector_tiro,snd_vector_cock,snd_vector_recc,snd_vector_recf],[snd_pp_tiro,snd_pp_cock,snd_pp_recc,snd_pp_recf],[snd_m1897_tiro,snd_m1897_cock,snd_m1897_recc,snd_shotgun_recf],[snd_m1014_tiro,snd_m1014_cock,snd_m1014_recc,snd_shotgun_recf],[snd_a681_tiro,snd_a681_cock,snd_aek_recc,snd_a681_recf],[snd_dp_tiro,snd_dp_cock,snd_dp_recc,snd_shotgun_recf],[snd_saiga_tiro,snd_saiga_cock,snd_saiga_recc,snd_saiga_recf],[snd_ak_tiro,snd_ak_cock,snd_ak_recc,snd_ak_recf],[snd_fal_tiro,snd_fal_cock,snd_fal_recc,snd_fal_recf],[snd_aek_tiro,snd_aek_cock,snd_aek_recc,snd_aek_recf],[snd_ar_tiro,snd_ar_cock,snd_ar_recc,snd_ar_recf],[snd_m4a1_tiro,snd_m4a1_cock,snd_m4a1_recc,snd_m4a1_recf],[snd_hk_tiro,snd_hk_cock,snd_hk_recc,snd_hk_recf],[snd_scar_tiro,snd_scar_cock,snd_scar_recc,snd_scar_recf],[snd_mcx_tiro,snd_mcx_cock,snd_mcx_recc,snd_mcx_recf],[snd_ia_tiro,snd_ia_cock,snd_ia_recc,snd_ia_recf],[snd_bar_tiro,snd_bar_cock,snd_bar_recc,snd_bar_recf],[snd_m1_tiro,snd_m1_cock,snd_m1_recc,snd_m1_recf,0,0,snd_m1_tirf],[snd_win_tiro,snd_win_cock,0,snd_win_recf],[snd_lee_tiro,snd_lee_cock,snd_lee_recc,snd_lee_recf],[snd_kar_tiro,snd_kar_cock,snd_fuzil_recc],[snd_249_tiro,snd_249_cock,snd_249_recc,snd_249_recf]]

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

function existe_variavel(nome,val,_id = id){
    
    if (variable_instance_exists(_id,nome)){
        
        variable_instance_set(_id,nome,val)
    
    }
}

function seta_part(vrv,_x,_y,mns,spr,co,di,vel,ixns,dist,velm){
    
    var c = obj_cria_particulas.id
    var varsc = [vrv,"xx","yy","cor","ixms","mxs","dir","vels","sprites","dist","velm"]
    var varss = [1,_x,_y,co,ixns,mns,di,vel,spr,dist,velm]
    
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
					draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1)
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

	if (keyboard_check_pressed(vk_tab))    global.debug = !global.debug
		
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
	