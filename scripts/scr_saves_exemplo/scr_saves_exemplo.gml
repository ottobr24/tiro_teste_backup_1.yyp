global.saves = [["testetiro.save"]]
global.saves_level = ["leveltiro1.save"]
global.save_ling = "testetiro.ling"
global.savei = 0
global.configs = [[50,50],[0],[0],[0,0,2]]
global.porc_zerar = 0
global.shakes = [1,.5,0]

function salvando(i=global.savei){
	
	#region Arrays
	
	var _struct = {
		
		arma : global.arma,
		armas_aval : global.armas_aval,
		
		armas_mods : global.armas_mods,
		armas_modi : global.armas_modi,
		armas_moda : global.armas_moda,
		
	};
	
	var _string = json_stringify(_struct)
	
	var _file = file_text_open_write(global.saves[i][0])
	
	file_text_write_string(_file,_string)
	
	file_text_close(_file)
	
	#endregion
	
}
	
function salvando_idioma(texs = 0){
	
	#region Arrays
	
	if (!texs){
	
		var _struct = {
		
			configs : global.configs,
			textos : global.textos,
		
		};
	}else{
		
		var _struct = {
		
			textos : global.textos,
		
		};
	}
	
	var _string = json_stringify(_struct)
	
	var _file = file_text_open_write(global.save_ling)
	
	file_text_write_string(_file,_string)
	
	file_text_close(_file)
	
	#endregion
	
}

function carregando(i=global.savei){
	
	#region Arrays
	
	var _file = file_text_open_read(global.saves[i][0])
	
	var _json = file_text_read_string(_file)
	
	var _struct = json_parse(_json)
	
	var texts = ["armas_aval","armas_mods","armas_modi","armas_moda","arma"]
	
	for (i=0;i<array_length(texts);i++){
		
		if (variable_global_exists(texts[i]) and variable_struct_exists(_struct,texts[i])){
			
			variable_global_set(texts[i],variable_struct_get(_struct,texts[i]))
			
		}
	}
	
	#endregion
	
}
	
function carregando_idioma(){
	
	#region Arrays
	
	var _file = file_text_open_read(global.save_ling)
	
	var _json = file_text_read_string(_file)
	
	var _struct = json_parse(_json)
	
	var texts = ["configs","textos"]
	
	for (var i=0;i<array_length(texts);i++){
		
		if (variable_global_exists(texts[i]) and variable_struct_exists(_struct,texts[i])){
			
			variable_global_set(texts[i],variable_struct_get(_struct,texts[i]))
			
		}
	}
	
	//global.configs = _struct.config
	//global.configs = _struct.config
	
	#endregion
	
}
