if (room == rm_gameplay) {
	x = obj_button.x;
	y = obj_button.y;

}

selection = instance_position(mouse_x, mouse_y, obj_button);
	if (selection != noone) {
		x = selection.x;
		y = selection.y;
		draw_self();
	
	}

 
 x = room_width/2;
 if mouse == false{
	if (menu_position >= 0 && menu_position < array_length(main_array)){
		with(obj_button){
			if (name == (other.menu_control[other.menu_index][other.menu_position]) ) {
				other.x = x;
				other.y = y;
			}
		}
		draw_self();
	}
}

 if (selected == noone && mouse == false) {
	image_alpha = 0;
 } else {
	image_alpha = 1;
 }