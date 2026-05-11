if (!global.pause) exit;

colocando_o_controle()
usando_o_menu()
trocando_cores()
mexendo_na_resol()

global.configs[0] = mexendo_em_coisas(5,2,global.configs[0],100,0,2)
global.configs[1] = mexendo_em_coisas(1,3,global.configs[1],array_length(efeitos_texto[global.configs[2][0]])-1,0,1)
global.configs[2] = mexendo_em_coisas(1,4,global.configs[2],array_length(idiomas)-1,0,1)

global.configs[3][2] = clamp(global.configs[3][2],0,array_length(textos_resol[global.configs[2][0]][2][global.configs[3][1]])-1)

gamepad_set_vibration(0,0,0)

if (seq and layer_sequence_is_finished(seq)) seq = 0
if (seq) seqn++
if (!seq) seqn=0