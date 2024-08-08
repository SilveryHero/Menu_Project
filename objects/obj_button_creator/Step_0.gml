if room == rm_menu2{
	size = array_length(obj_select.main_array);

	if (obj_select.menu_index == 0 ) {
		if (main == false){
			i = 0
			y = room_height/ 2 - room_height/size;
			x = room_width/ 2
			instance_destroy(obj_button)
			main = true
		}
	}

	if (obj_select.menu_index == 1) {
		if (main == true){
			i = 0
			y = room_height/ 2 - room_height/size;
			x = room_width/ 2
			instance_destroy(obj_button)
			main = false
		}
	}
	if (obj_select.menu_index == 2) {
		
			i = 0
			y = room_height/ 2 - room_height/size;
			x = room_width/ 2 - room_width/size;
			main = true

	}
	if (obj_select.menu_index == 3) {

			i = 0
			y = room_height / 2
			x = room_width / 2 - room_width/(size*2);
			instance_destroy(obj_button)
			main = false
		
	}
	while (i < size && obj_select.menu_index <= 1 ) {
		if (y < room_height/size) {
			y = room_height/ 2 - room_height/size;
		}
		i += 1;
		instance_create_depth(x, y, 1, obj_button);
		y += room_height/size;

	}
	
	while (i < size && obj_select.menu_index >= 2) {
		i += 1;
		instance_create_depth(x, y, 1, obj_button);	
		if (size >= 3){
			if (x < room_width/size) {
				x = room_width/ 2 - room_width/size;
			}
		x += room_width/size;
		} else {
			x += room_width/(size);
		}
		

	}

}
if room == rm_gameplay {
	if (!instance_exists(obj_button)){
		i = 1
		y = room_height/2
		instance_create_depth(x, y, 1, obj_button);
	}
}
	