//Configuração do mouse
if instance_exists(obj_button_father){
	selected = instance_position(mouse_x, mouse_y, obj_button_father);
	if (selected!= noone) {
		if (mouse_check_button_pressed(mb_left)){
			if selected.name == "Jogar" {
				room_goto(rm_gameplay);
				}
			if selected.name == "Configuracoes" {
				menu_index = 1;
			}
			if selected.name == "Sair" {
				
				instance_create_depth(x,room_height/2, 0, obj_text_box);
				instance_create_depth((room_width/2+200),room_height/2+100, 0, obj_button_nao);
				instance_create_depth((room_width/2-200),room_height/2+100, 0, obj_button_sim);
				
			}
			if selected.name == "Volume" {
				instance_create_depth(x+250, y, 1, obj_button_higher);
				instance_create_depth(x-250, y, 1, obj_button_lower);
			}
			if selected.name == "Tela Cheia" {
				window_set_fullscreen(!window_get_fullscreen());
			}
			if selected.name == "Voltar" {
				if room == rm_menu2{
					menu_index = 0;
					menu_position = 0;
				} else {
				room_goto(rm_menu2)
				}
			}
			if selected.name == "Aumentar" {
				global.volumebgm += 0.05;
			}
			if selected.name == "Diminuir" {
				global.volumebgm -= 0.05;
			}
			if selected.name == "Sim" {
				game_end();
			}
			if selected.name == "Não" {
				room_restart();
			}

		}
	}
}

//sumir seleção se o mouse estiver se mexendo
if (mx != mouse_x || my != mouse_y){
	mouse = true;
	mx = mouse_x; 
	my = mouse_y;
	
}
if (mouse  == false) {
	window_set_cursor(cr_none);
} else {
	if (keyboard_check_pressed(vk_anykey)){
		mouse = false
	}
	window_set_cursor(cr_default);
}

// configuração do teclado

if (keyboard_check_pressed(vk_up)){
	menu_position  -= 1;
	if (menu_position <0) {
		menu_position = array_length(main_array)-1;
	}
}
if (keyboard_check_pressed(vk_down)){
	menu_position  += 1;
	if (menu_position >= array_length(main_array)) {
		menu_position = 0;
	}
}


if (keyboard_check_pressed(vk_enter)) {
	switch (menu_control[menu_index][menu_position]){
		case "Jogar":
			room_goto(rm_gameplay);
			break;
			
		case "Configurações":
			menu_index = 1;
			menu_position = 0;
			break;
			
		case "Sair":
			instance_create_depth(x, y, -1000, obj_box_exit);
			break;
			
		case "Volume":
			//mudar som
			break;
			
		case "Tela Cheia":
			window_set_fullscreen(!window_get_fullscreen());
			break;
			
		case "Voltar":
			if room == rm_menu2{
				menu_index = 0;
				menu_position = 0;
				break;
			} else {
				room_goto(rm_menu2)
				break;
				}
			
			
	}
}
