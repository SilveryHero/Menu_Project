if (room == rm_gameplay) {
	x = obj_button.x;
	y = obj_button.y;
	draw_self();
	
}

if (volume){
	
	selection = instance_position(mouse_x, mouse_y, obj_button_sound);
	if (selection != noone) {
		x = selection.x;
		y = selection.y;
		draw_self();
	
	}
} else {
		selection = instance_position(mouse_x, mouse_y, obj_button_father);
	if (selection != noone) {
		x = selection.x;
		y = selection.y;
		draw_self();
	
	}
}
 
 x = room_width/2;
 
/* if (volume){
	if (keyboard_check_pressed(vk_right)){
		currentx = obj_button_higher.x
		currenty = obj_button_higher.y
	}
	if (keyboard_check_pressed(vk_left)){
		currentx = obj_button_lower.x
		currenty = obj_button_lower.y
	}
	x = currentx
	y = currenty
	draw_self();
 } else*/ if (quit) {
		if (keyboard_check_released(vk_right)){
			currentx = obj_button_nao.x
			currenty = obj_button_nao.y 
			
		}
		if (keyboard_check_direct(vk_left)){
			currentx = obj_button_sim.x
			currenty = obj_button_sim.y
		}
			
	x = currentx
	y = currenty
	draw_self();
 } else {
 
	if mouse == false{
		if (menu_position >= 0 && menu_position < array_length(main_array)){
			with(obj_button_father){
				if (name == (other.menu_control[other.menu_index][other.menu_position]) ) {
					other.x = x;
					other.y = y;
				}
			}
				draw_self();
		}
	}
}
 if (selected == noone && mouse == false) {
	image_alpha = 0;
 } else {
	image_alpha = 1;
 }