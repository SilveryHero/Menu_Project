if room == rm_menu2{
	global.size = array_length(obj_select.main_array);
}

if room == rm_menu2 {
	if (obj_select.menu_index == 0 ) {
		if (main == false){
			i = 0
			y = room_height/ 2 - room_height/global.size;
			instance_destroy(obj_button_father)
			main = true
		}
	}

	if (obj_select.menu_index == 1) {
		if (main == true){
			i = 0
			y = room_height/ 2 - room_height/global.size;
			instance_destroy(obj_button_father)
			main = false
		}
	}
	while (i < global.size) {
		if (y < room_height/global.size) {
			y = room_height/ 2 - room_height/global.size;
		}
		i += 1;
		instance_create_depth(x, y, 1, obj_button);
		y += room_height/global.size;

	}

}
if room == rm_gameplay {
	if (!instance_exists(obj_button)){
		i = 1
		y = room_height/2
		instance_create_depth(x, y, 1, obj_button);
	}
}
	