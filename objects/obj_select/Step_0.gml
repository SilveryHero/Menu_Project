//Configuração do mouse
main_array = menu_control[menu_index];
show_debug_message(main_array);
if instance_exists(obj_button){
	selected = instance_position(mouse_x, mouse_y, obj_button);
	if (selected!= noone) {
		if (mouse_check_button_pressed(mb_left)){
			if selected.name == "Jogar" {
				room_goto(rm_gameplay);
				}
			if selected.name == "Configuracoes" {
				menu_index = 1;
			}
			if selected.name == "Sair" {
				quit = !quit
				
				if (quit){
					menu_position = 0
					menu_index = 3;
					main_array = [quit_menu];
					instance_create_depth(x,room_height/2, 0, obj_text_box);
				} 
			}
			if selected.name == "Volume" {
				sound = !sound
				if (sound){
					menu_position = 0;
					menu_index = 2;
				} else {

					menu_position = 0;
					menu_index = 1
				}
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
				{
					menu_index = 0;
					main_array = menu_control[menu_index];
					instance_destroy(obj_text_box);
					quit = !quit
				}	
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
if (sound || quit) {
	if (keyboard_check_pressed(vk_left)){
		menu_position  -= 1;
		if (menu_position <0) {
			menu_position = array_length(main_array)-1;
		}
	} 
						
	if (keyboard_check_pressed(vk_right)){
		menu_position  += 1;
			if (menu_position >= array_length(main_array)) {
				menu_position = 0;
			}
		}
} else {
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
} 



if mouse == false{
	selected = instance_place(x, y, obj_button);
	if (selected!= noone) {
		if (keyboard_check_pressed(vk_enter)){
				if selected.name == "Jogar" {
				room_goto(rm_gameplay);
				}
			if selected.name == "Configuracoes" {
				menu_index = 1;
			}
			if selected.name == "Sair" {
				quit = !quit
				if (quit){
					menu_position = 0;
					menu_index = 3;
					main_array = [quit_menu];
					instance_create_depth(x,room_height/2, 0, obj_text_box);
				} 	
			}
			if selected.name == "Volume" {
				sound = !sound
				if (sound){
					menu_index = 2;
					menu_position =0;
				} else {
					menu_index = 1;
					menu_position =0;
				}
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
				menu_index = 0;
				main_array = menu_control[menu_index];
				instance_destroy(obj_text_box);
				quit = !quit
				
			}
			
		}
	}
}
