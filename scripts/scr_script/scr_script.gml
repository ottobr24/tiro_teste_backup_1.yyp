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
global.armas_cliq = [1			,1				,1			,1			,0			,1				,1			,1					,0			,0			,0			,0			,0			,0			,1					,1          ,1			,1				,0			,0			,0			,0			,0			,0			,0			,0					,0				,0				,1				,0					,1				,1			,0			]
global.armas_aval = [0			,0				,0			,0			,0			,0				,0			,0					,0			,0			,0			,0			,0			,0			,0					,0          ,0			,0				,0			,0			,0			,0			,0			,0			,0			,0					,0				,0				,0				,0					,0				,0			,0			]
global.armas_munc = [5			,6				,6			,8			,18			,16				,16			,8					,31			,51			,33			,31			,64			,6			,9					,2          ,14			,10				,31			,28			,31			,31			,31			,31			,31			,31					,31				,21				,10				,14					,10				,5			,200		]
global.armas_dano = [2			,4				,4			,2.5		,1.5		,1.75			,1			,5					,1.5		,1			,1			,1			,1.5		,5			,5					,7          ,4			,4				,5			,5			,3			,3			,3			,4			,6			,5					,3				,6				,5				,4					,5				,6			,5			]
global.armas_prec = [11			,13				,8			,7			,6.5		,8				,4			,20					,7			,6			,6			,2.5		,9			,7			,6.5				,14         ,7			,10				,10			,8.5		,2			,6			,4			,4			,11			,6					,9				,15				,10				,8					,12				,16			,14			]
global.armas_precin=[1			,1				,1			,1			,1			,1				,1			,1					,1			,1			,1			,1			,1			,5			,6					,5          ,6			,7				,3			,2			,1			,2			,1			,1			,3			,3					,3				,1				,1				,2					,5				,1			,7			]
global.armas_reca = [45			,30				,45			,60			,60			,60				,60			,90					,60			,80			,60			,75			,120		,30			,45					,60         ,45			,60				,75			,75			,90			,60			,75			,90			,120		,120				,45				,140			,120			,45					,75				,75			,300		]
global.armas_rext = [1			,1				,1			,7			,17			,15				,15			,7					,30			,50			,32			,30			,63			,1			,1					,1          ,1			,9				,30			,27			,30			,30			,30			,30			,30			,30					,30				,20				,10				,1					,5				,5			,200		]
global.armas_cade = [30			,30				,30			,5			,5			,5				,4			,6					,3			,3			,2			,2			,4			,21			,7					,2          ,30			,6				,5			,15			,4			,4			,3			,4			,4			,4					,3				,6				,5				,25					,40				,45			,4			]
global.armas_bala = [1			,1				,1			,1			,1			,1				,1			,1					,1			,1			,1			,1			,1			,4			,4					,4          ,4			,6				,1			,1			,1			,1			,1			,1			,1			,1					,1				,1				,1				,1					,1				,1			,1			]
global.armas_raja = [0			,3				,0			,0			,0			,0				,0			,0					,0			,0			,0			,0			,0			,0			,0					,0          ,0			,0				,0			,3			,0			,0			,0			,0			,0			,0					,0				,0				,0				,0					,0				,0			,0			]
global.armas_raca = [0			,5				,0			,0			,0			,0				,0			,0					,0			,0			,0			,0			,0			,0			,0					,0          ,0			,0				,0			,5			,0			,0			,0			,0			,0			,0					,0				,0				,0				,0					,0				,0			,0			]
global.armas_prep = [1			,1				,1			,-1			,-1			,-1				,-1			,-1					,-1			,-1			,-1			,-1			,-1			,1			,0					,-1         ,2			,-1				,-1			,-1			,-1			,-1			,-1			,-1			,-1			,-1					,-1				,-1				,-1				,-1					,-1				,-1			,-1			]
global.armas_coix = [4			,5				,4			,5			,2.5		,3				,2			,14					,3			,3			,3			,2			,4			,5			,5					,7          ,5			,6				,6			,6			,2			,5			,4			,4			,6			,4					,6				,9				,6				,4					,7				,10			,9			]
global.armas_coiy = [3			,4				,3			,5			,2.5		,3				,2			,12					,3			,3			,3			,2			,4			,4			,4					,7          ,4			,5				,5			,5			,2			,4			,3			,3			,6			,4					,5				,8				,5				,4					,7				,9			,9			]
global.armas_shak = [4			,5				,3			,6			,3			,4				,1			,16					,4			,4			,4			,1			,5			,5			,5					,12         ,5			,6				,6			,5			,1			,5			,4			,4			,6			,5					,6				,9				,6				,5					,8				,11			,9			]
//global.armas_spry = [2			,2				,3			,6			,2			,4				,1			,16					,4			,3			,4			,1			,5			,5			,5					,12         ,5			,6				,6			,5			,1			,5			,4			,4			,6			,5					,6				,9				,6				,5					,8				,11			,9			]
global.armas_sprt = [spr_rt_85	,spr_colt_python,spr_rhino	,spr_m1911	,spr_glock	,spr_berreta_m9	,spr_hk_usp	,spr_desert_eagle	,spr_mp9	,spr_uzi	,spr_mac_10	,spr_vector	,spr_pp_19	,spr_m1897	,spr_benelli_m1014	,spr_a_681  ,spr_dp_12	,spr_saiga_12	,spr_ak_47	,spr_fal	,spr_aek_971,spr_ar_15	,spr_m4a1	,spr_hk416	,spr_scarh	,spr_sig_sauer_mcx	,spr_imbel_ia2	,spr_bar_m1918	,spr_m1_garand	,spr_winchester_1894,spr_lee_enfield,spr_kar_98k,spr_m249	]
global.armas_part = [[0,1,0]	,[0,1,0]		,[0,1,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]		,[1,0,0]	,[1,0,0]			,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[0,0,1]	,[1,0,0]			,[0,1,0]	,[0,0,2]	,[1,0,0]		,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]	,[1,0,0]			,[1,0,0]		,[1,0,0]		,[1,0,0]		,[1,0,0]			,[1,0,0]		,[1,0,0]	,[1,0,0]	]//atirando, recarregando,preparando
global.armas_mods = []//[[0,0,0]																	,[]		,[]		,[]		,[0,0,0,0,0]]

global.armas_modx = [[[],[1,4]							,[],[],[],[],[],[],[],[4,2]		]					,[[],[],[15,1]]								,[[],[],[15,1]								,[7,1]]							,[[],[],[14,1]									,[],[2,10]]							,[[],[],[13,2]										,[3,1]							,[2,6]							,[11,3]														,[],[0,2]					]			,[[],[2,7]														,[14,1]																	,[2,1]							,[],[11,3]						,[],[],[],[7,3]]							,[[],[],[12,1]								,[2,1]							,[1,9]							,[9,2]							,[],[],[],[4,3]]													,[[6,3]							,[],[],[],[2,12]							,[],[]	,[],[],[9,2]]													,[[6,4]							,[],[16,2]								,[3,1]							,[],[11,3]								,[5,2]							,[],[0,2]								,[9,2]]														,[[],[],[21,3]								,[13,0]							,[],[16,5]														,[]	,[],[0,4]																		,[10,4]]						,[[],[],[15,2]								,[7,0]							,[6,10]									,[]	,[5,2]								,[],[0,2]										,[6,3]]							,[[],[],[22,3]									,[11,2]							,[]	,[18,3]																	,[]	,[]	,[]	,[8,4]]							,[[],[7,9]						,[23,4]																		,[11,2]							,[]	,[]	,[]	,[]	,[8,3]																					,[]],[[],[],[32,2]]							,[[],[],[],[16,1]							,[],[22,4]																,[],[],[3,3]						,[13,3]]						,[[],[]	,[],[],[],[],[],[],[],[11,2]		]				,[[],[]	,[28,2]														,[18,1]								,[],[],[25,1]						,[26,4]						,[]	,[15,3]						],[[16,4]						,[12,8]												,[35,3]									,[18,1]														,[],[],[27,4]																							,[],[3,4]											,[23,3]						],[[]],[[]],[[]],[[14,5]						,[12,6]												,[33,2]															,[15,1]																				,[],[],[26,4]																								,[28,2]														,[4,4]												,[16,3]						]]
global.armas_modn = [[[],["Padrão","Grip Preto"]		,[],[],[],[],[],[],[],["Padrão","Cor Verde"]]		,[[],[],["6\"","8\""]]						,[[],[],["4\"","6\""]						,["Mira fixa","Mira ajustável"]],[[],[],["Nada","Silenciador"]					,[],["Pente 7x","Pente 15x"]]		,[[],[],["Nada","Silenciador"]						,["Mira fixa","Mira Red Dot"]	,["Pente 17x","Pente 22x"]		,["Nada","Lanterna","Pente extra"]							,[],["Nada","Coronha estendida"]]		,[[],["Grip Normal","Grip Madeira","Grip Árido"]				,["Nada","Freio de boca","Silenciador"]									,["Mira fixa","Mira Red Dot"]	,[],["Nada","Laser"]			,[],[],[],["Cor padrão","Árido"]]			,[[],[],["Nada","Silenciador"]				,["Mira fixa","Mira Red Dot"]	,["Pente 15x","Pente 22x"]		,["Nada","Laser"]				,[],[],[],["Cor padrão","Árido","Verde claro"]]						,[["Semi","Automática"]			,[],[],[],["Pente 7x","Pente 11x"]			,[],[]	,[],[],["Cor padrão","Árido","Preto"]]							,[["Gatinho padrão","Suave"]	,[],["Nada","Silenciador"]				,["Mira fixa","Mira Red Dot"]	,[],["Nada","RK-2"]						,["9mm","6.5x25mm"]				,[],["Nada","Coronha estendida"]		,["Cor padrão","Vermelho","Árido"]]							,[[],[],["Nada","Silenciador"]				,["Mira fixa","Mira Red Dot"]	,[],["Nada","AFG","Laser"]										,[]	,[],["Nada","Coronha tática","Coronha madeira"]									,["Cor padrão","Verde"]]		,[[],[],["Nada","Silenciador"]				,["Mira fixa","Mira Red Dot"]	,["Pente 32x","Pente 40x"]				,[]	,["9mm",".45 ACP"]					,[],["Nada","Coronha estendida"]				,["Cor padrão","Lima"]]			,[[],[],["Nada","Silenciador"]					,["Mira fixa","Mira Red Dot"]	,[]	,["Nada","RK-2","AFG"]													,[]	,[]	,[]	,["Cor padrão","Neve"]]			,[[],["Cor padrão","Madeira"]	,["9\"","Silenciador","13.5\""]												,["Mira fixa","Mira Red Dot"]	,[]	,[]	,[]	,[]	,["Coronha estendida","Coronha retraida","Coronha tática"]								,[]],[[],[],["20\"","30\""]]				,[[],[],[],["Mira ajustável","Mira Red Dot"],[],["Nada","RK-2","AFG"]												,[],[],["Nada","Munição extra"]		,["Cor padrão","Clássico"]]		,[[],[]	,[],[],[],[],[],[],[],["Padrão","Preto"]]			,[[],[]	,[".710",".700",".720"]										,["Mira ajustável","Mira Red Dot"]	,[],[],["Nada","Lanterna"]			,["Nada","Laser"]			,[]	,["Cor padrão","Árido"]		],[["Semi","Automático"]		,["Preto","Madeira"]								,["Nada","Silenciador"]					,["Mira ajustável","Mira Red Dot","Mira Holográfica"]		,[],[],["Nada","AFG","RK-2","Laser"]																	,[],["Preto","Madeira","Retraida"]					,["Cor padrão","Madeira"]	],[[]],[[]],[[]],[["Automático","Rajada"]		,["Árido","Preto"]									,["Nada","Freio de boca","Silenciador"]							,["Mira ajustável","Mira Holográfica","Mira Acog","Alça de pegada"]					,[],[],["Nada","AFG","RK-2","Laser"]																		,["Nada","Magnifier 3x","Laser"]							,["Árido","Preto"]									,["Cor padrão","Preto"]		]]
//conversao,grip,silenciador ou freio de boca e etc, mira, pente estendido, pente extra ou grip ou lanterna ou qualquer coisa pra colocar no guarda mao,mudanca de calibre,a cima do cano,coronha, skin																																																																																																																											  																																									  															,[]																																						,[]																																																																																																																																																																																																																																																																																																																																		,[]																																																																																																				 																			 																																																																									  ]
global.armas_modp = [[[],[0,spr_rt_85_grip2	]			,[],[],[],[],[],[],[],[0,spr_rt_85_verde]]			,[[],[],[0,spr_colt_cano]	]				,[[],[],[0,spr_rhino_cano]					,[0,spr_rhino_mira]]			,[[],[],[0,spr_m1911_silenciador	]			,[],[0,spr_m1911_pente]	]			,[[],[],[0,spr_glock_silenciador]					,[0,spr_glock_mira]				,[0,spr_glock_pente]			,[0,spr_glock_lanterna		,spr_glock_pente_extra]			,[],[0,spr_glock_coronha]	]			,[[],[0,spr_berreta_m9_grip,spr_berreta_m9_grip_2]				,[0,spr_berreta_m9_freio			,spr_berreta_m9_silenciador]		,[0,spr_berreta_m9_mira]		,[],[0,spr_berreta_m9_laser]	,[],[],[],[0,spr_berreta_m9_cor]]			,[[],[],[0,spr_hk_usp_silenciador]			,[0,spr_hk_usp_mira]			,[0,spr_hk_usp_pente]			,[0,spr_hk_usp_laser]			,[],[],[],[0,spr_hk_usp_cor,spr_hk_usp_cor_2]]						,[[0,spr_desert_eagle_auto]		,[],[],[],[0,spr_desert_eagle_pente]		,[],[]	,[],[],[0,spr_desert_eagle_cor,spr_desert_eagle_cor_2]]			,[[0,spr_mp9_gati]				,[],[0,spr_mp9_silenciador]				,[0,spr_mp9_mira1]				,[],[0,spr_mp9_foregrip]				,[0,spr_mp9_bala]				,[],[0,spr_mp9_coronha]					,[0,spr_mp9_cor,spr_mp9_cor2]]								,[[],[],[0,spr_uzi_silenciador]				,[0,spr_uzi_mira]				,[],[0,spr_uzi_foregrip,spr_uzi_laser]							,[]	,[],[0,spr_uzi_coronha,spr_uzi_coronha_1]										,[0,spr_uzi_cor]]				,[[],[],[0,spr_mac_10_silenciador]			,[0,spr_mac_10_mira]			,[0,spr_mac_10_pente]					,[]	,[0,spr_mac_10_bala]				,[],[spr_mac_10_coronha_1,spr_mac_10_coronha]	,[0,spr_mac_10_cor]]			,[[],[],[0,spr_vector_silenciador]				,[0,spr_vector_mira]			,[]	,[0,spr_vector_foregrip,spr_vector_foregrip_1]							,[]	,[]	,[]	,[0,spr_vector_cor]]			,[[],[0,spr_pp_19_grip]			,[0,spr_pp_19_silenciador,spr_pp_19_cano]									,[0,spr_pp_19_mira]				,[]	,[]	,[]	,[]	,[spr_pp_19_coronha,spr_pp_19_coronha_2,spr_pp_19_coronha_1]							,[]],[[],[],[0,spr_m1897_cano]	]			,[[],[],[],[0,spr_benelli_m1014_mira]		,[],[0,spr_benelli_m1014_foregrip,spr_benelli_m1014_foregrip_1]			,[],[],[0,spr_benelli_m1014_coronha],[0,spr_benelli_m1014_cor]]		,[[],[]	,[],[],[],[],[],[],[],[0,spr_a_681_cor]]			,[[],[]	,[0,spr_dp_12_choke				,spr_dp_12_choke_1]			,[0,spr_dp_12_mira			]		,[],[],[0,spr_dp_12_lanterna	]	,[0,spr_dp_12_laser]		,[]	,[0,spr_dp_12_cor]			],[[0,spr_saiga_12_auto]		,[spr_saiga_12_grip_1,spr_saiga_12_grip]			,[0,spr_saiga_12_silenciador]			,[0,spr_saiga_12_mira			,spr_saiga_12_mira_1]		,[],[],[0,spr_saiga_12_foregrip				,spr_saiga_12_foregrip_1		,spr_saiga_12_laser]		,[],[spr_saiga_12_coronha,spr_saiga_12_coronha_1,0]	,[0,spr_saiga_12_cor]		],[[]],[[]],[[]],[[0,spr_ar_15_raja]			,[spr_ar_15_grip_1,spr_ar_15_grip]					,[0,spr_ar_15_freio				,spr_ar_15_silenciador]			,[0,spr_ar_15_mira			,spr_ar_15_mira_2			,spr_ar_15_mira_4]			,[],[],[0,spr_ar_15_foregrip				,spr_ar_15_foregrip_2				,spr_ar_15_laser]			,[0,spr_ar_15_mira_3			,spr_ar_15_laser_2]			,[spr_ar_15_coronha_1,spr_ar_15_coronha]			,[0,spr_ar_15_cor]			]]
//cliq,munc,dano,prec,reca,coix,coiy,shak,raja,raca,cade																																																																																									[																																																		[																																																																											,[]																														 								,[]																																																																																	,[],[]																																																																																																																																																																																																																																												,[],[]																						[]																				 															 																			 																																														 																																																																							  ]
global.armas_mode = [[[],[0,[0,0,0,0,0,0,0,-1,0,0,0]]	,[],[],[],[],[],[],[],[0,[0,0,0,0,0,0,0,0,0,0,0]]]	,[[],[],[0,[0,0,.75,0,0,0,-.25,0,0,0,0]]]	,[[],[],[0,[0,0,.75,0,0,0,-.25,0,0,0,0]]	,[0,[0,0,0,1,0,0,0,0,0,0,0]]]	,[[],[],[0,[0,0,-.25,-.5,0,-.5,-.5,-.5,0,0,0]]	,[],[0,[0,8,0,2,30,3,3,3,0,0,0]]]	,[[],[],[0,[0,0,-.25,-.5,0,-.35,-.35,-.35,0,0,0]]	,[0,[0,0,0,-1,0,0,0,0,0,0,0]]	,[0,[0,5,0,.5,10,0,0,.5,0,0,0]]	,[0,[0,0,0,0,0,0,0,0,0,0,0]	,[0,0,0,.3,-15,.3,.3,.3,0,0,0]]	,[],[0,[0,0,0,-1.5,0,-1,-1,-1,0,0,0]]]	,[[],[0,[0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0]	]		,[0,[0,0,0,-.75,0,0,0,-.75,0,0,0]	,[0,0,-.25,-.35,0,0,0,0,0,0,0]	]	,[0,[0,0,0,-1,0,0,0,0,0,0,0]]	,[],[0,[0,0,0,0,0,0,0,0,0,0,0]]	,[],[],[],[0,[0,0,0,-0,0,0,0,0,0,0,0]]]		,[[],[],[0,[0,0,-.25,-.5,0,0,0,-.75,0,0,0]]	,[0,[0,0,0,-1,0,0,0,0,0,0,0]]	,[0,[0,7,0,1.5,25,1,1,2,0,0,0]]	,[0,[0,0,0,0,0,0,0,0,0,0,0]]	,[],[],[],[0,[0,0,0,0,-0,0,0,0,0,0,0],[0,0,0,-0,0,0,0,0,0,0,0]]]	,[[0,[-1,0,0,0,0,0,0,0,0,0,4]]	,[],[],[],[0,[0,4,0,2,30,1,1,1.5,0,0,0]]	,[],[]	,[],[],[0,[0,0,0,-0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0]]]	,[[0,[0,0,0,-.5,0,0,0,0,0,0,0]]	,[],[0,[0,0,-.35,-.5,0,0,0,-.5,0,0,0]]	,[0,[0,0,0,-1,0,0,0,0,0,0,0]]	,[],[0,[0,0,0,-1,5,-1,-1,-1.5,0,0,0]]	,[0,[0,0,1,4,10,2.5,2.5,3,0,0,0]]	,[],[0,[0,0,0,-1.5,0,-1,-1,-1.5,0,0,0]]	,[0,[0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0]]]	,[[],[],[0,[0,0,-.45,-.5,0,0,0,-.65,0,0,0]]	,[0,[0,0,0,-1,0,0,0,0,0,0,0]]	,[],[0,[0,0,0,-.75,15,-.5,-.5,-1,0,0,0],[0,0,0,0,0,0,0,0,0,0,0]],[]	,[],[0,[0,0,0,-1.25,0,-1,-1,-1.25,0,0,0],[0,0,0,-1.25,0,-.8,-.8,-1.25,0,0,0]]	,[0,[0,0,0,0,0,0,0,0,0,0,0]]]	,[[],[],[0,[0,0,-.25,-.6,0,-1,-1,-1,0,0,0]]	,[0,[0,0,0,-1,0,0,0,0,0,0,0]]	,[0,[0,8,0,.25,10,.15,.15,.25,0,0,0]]	,[]	,[0,[0,-3,1.5,4,30,3,3,3.5,0,0,0]]	,[],[0,[0,0,0,-1.5,0,-1.25,-1.25,-1.5,0,0,0]]	,[0,[0,0,0,0,0,0,0,0,0,0,0]]]	,[[],[],[0,[0,0,-.05,-.2,0,-.5,-.5,-.5,0,0,0]]	,[0,[0,0,0,-.5,0,0,0,0,0,0,0]]	,[]	,[0,[0,0,0,-.75,0,-.75,-.75,-1,0,0,0],[0,0,0,-.75,0,-.5,-.5,-.5,0,0,0]]	,[]	,[]	,[]	,[0,[0,0,0,0,0,0,0,0,0,0,0]]]	,[[],[0,[0,0,0,0,0,0,0,0,0,0,0]],[0,[0,0,-.35,-.75,0,-1,-1,-1,0,0,0],[0,0,.5,-1.25,0,-1.5,-1.5,-2,0,0,0]]	,[0,[0,0,0,-1,0,0,0,0,0,0,0]]	,[]	,[]	,[]	,[]	,[[0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,0,1,1,1.5,0,0,0],[0,0,0,-.5,0,-.5,-.5,-.75,0,0,0]]	,[]],[[],[],[0,[0,0,.5,0,0,0,0,0,0,0,0]]]	,[[],[],[],[0,[0,0,0,-1,0,0,0,0,0,0,0]]		,[],[0,[0,0,0,-1,0,-1,-1,-.25,0,0,0],[0,0,0,-1,0,-1.1,-1.1,-.35,0,0,0]]	,[],[],[0,[0,0,0,0,-15,0,0,0,0,0,0]],[0,[0,0,0,0,0,0,0,0,0,0,0]]]	,[[],[]	,[],[],[],[],[],[],[],[0,[0,0,0,0,0,0,0,0,0,0,0]]]	,[[],[]	,[0,[0,0,0,-1.5,0,0,0,0,0,0,0]	,[0,0,0,1.5,0,0,0,0,0,0,0]]	,[0,[0,0,0,-1,0,0,0,0,0,0,0]]		,[],[],[0,[0,0,0,0,0,0,0,0,0,0,0]]	,[0,[0,0,0,0,0,0,0,0,0,0,0]],[]	,[0,[0,0,0,0,0,0,0,0,0,0,0]]],[[0,[-1,0,0,0,0,0,0,0,0,0,7]]	,[[0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0]]	,[0,[0,0,-.25,-.5,0,0,0,-.25,0,0,0]]	,[0,[0,0,0,-1,0,0,0,0,0,0,0],[0,0,0,-1.25,0,0,0,0,0,0,0]]	,[],[],[0,[0,0,0,-1,0,-.75,-.75,-.9,0,0,0]	,[0,0,0,-1,0,-.6,-.6,-.6,0,0,0]	,[0,0,0,0,0,0,0,0,0,0,0]]	,[],[0,0,[0,0,0,2,0,1.5,1.5,2,0,0,0]]				,[0,[0,0,0,0,0,0,0,0,0,0,0]]],[[]],[[]],[[]],[[0,[0,0,0,0,0,0,0,0,3,4,13]]	,[[0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0]]	,[0,[0,0,0,-.5,0,0,0,-.5,0,0,0]	,[0,0,0,-.35,0,0,0,-.25,0,0,0]]	,[0,[0,0,0,-1,0,0,0,0,0,0,0],[0,0,0,-1.5,0,0,0,0,0,0,0]	,[0,0,0,-.5,0,0,0,0,0,0,0]]	,[],[],[0,[0,0,0,-.75,0,-.5,-.5,-.6,0,0,0]	,[0,0,0,-.55,0,-.3,-.3,-.4,0,0,0]	,[0,0,0,0,0,0,0,0,0,0,0]]	,[0,[0,0,0,-.5,0,0,0,0,0,0,0]	,[0,0,0,0,0,0,0,0,0,0,0]]	,[[0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0]]	,[0,[0,0,0,0,0,0,0,0,0,0,0]]]]
global.tiros_velo = [7.5		,10			,10				,11			,8			,8				,8			,12					,9			,8.5		,9			,9			,9			,13			,13					,12			,12			,12				,12			,11			,11			,11			,11			,11.5		,12			,12					,11				,13				,12.5			,11					,12.5			,14			,14			]    																																																																																																																																																																																																																																													
global.tiros_sprt = [spr_tiro	,spr_tiro	,spr_tiro		,spr_tiro	,spr_tiro	,spr_tiro		,spr_tiro	,spr_tiro			,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_chumbo	,spr_chumbo			,spr_chumbo	,spr_chumbo	,spr_chumbo		,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro	,spr_tiro			,spr_tiro		,spr_tiro		,spr_tiro		,spr_tiro			,spr_tiro		,spr_tiro	,spr_tiro	]																																																																																																																																																																																																																																														
global.tiros_part = [spr_capsula,spr_capsula,spr_capsula	,spr_capsula,spr_capsula,spr_capsula	,spr_capsula,spr_capsula		,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_gauge	,spr_gauge			,spr_gauge	,spr_gauge	,spr_gauge		,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_capsula,spr_capsula		,spr_capsula	,spr_capsula	,spr_capsula	,spr_capsula		,spr_capsula	,spr_capsula,spr_capsula]
//global.armas_sons = [[snd_ak_atirando,snd_ak_recarregando_cmc,snd_ak_recarregando_fim,snd_ak_preparando],[snd_glock_atirando,snd_glock_recarregando_cmc,snd_glock_recarregando_fim,snd_glock_preparando],[snd_shotgun_atirando,snd_nada,snd_shotgun_recarregando,snd_shotgun_preparando],[snd_uzi_atirando,snd_uzi_recarregando_cmc,snd_uzi_recarregando_fim,snd_uzi_preparando],[snd_fal_atirando,snd_fal_recarregando_cmc,snd_fal_recarregando_fim,snd_fal_preparando]]

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

function visao(tmd,vrv = "aaaaaaaaaaaa",_x = x,_y = y,dir2 = direction,alv = obj_player,cols = [obj_player,obj_miniparede,obj_porta],dir1 = 45,bol=1,segue=1){

	existe_variavel(vrv,0) 
		
	if (point_distance(x,y,alv.x,alv.y)<tmd*1.2){
	
		var col = ds_list_create()
		var dis = tmd

		for (var i=0;i<dir1*2;i+=1){
        
			if (i%5 = 0){
		
		        dis = tmd
        
				collision_line_list(_x,_y,_x+lengthdir_x(tmd,dir2+(-dir1+i)),_y+lengthdir_y(tmd,dir2+(-dir1+i)),cols,0,0,col,1)

				var obj = ds_list_find_value(col,0)
	
				if (ds_list_size(col)>0){
		
					dis = point_distance(_x,_y,obj.x,obj.y)
		
					if (obj.object_index = alv){
						
						var vrvval = bol ? bol : obj
						
						existe_variavel(vrv,vrvval)
						
						if (segue) direction = point_direction(x,y,obj.x,obj.y)
						
					}
				}
	
				ds_list_clear(col)
	
				if (global.debug){
		
					draw_set_color(c_white)
					draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1)
					draw_line(_x,_y,_x+lengthdir_x(dis,dir2+(-dir1+i)),_y+lengthdir_y(dis,dir2+(-dir1+i)))
					draw_set_color(-1)
	
				}
			}
		}

		ds_list_destroy(col)
	
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
	