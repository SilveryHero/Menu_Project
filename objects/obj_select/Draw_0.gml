selection = instance_position(mouse_x, mouse_y, obj_button_father);
if (selection != noone) {
	x = selection.x;
	y = selection.y;
	draw_self();
	
}
 
 x = room_width/2;
if mouse == false{
	if (menu_position >= 0 && menu_position < array_length(main_array)){
		with(obj_button_father){
			if (name == (other.menu_control[other.menu_index][other.menu_position])) {
				other.x = x;
				other.y = y;
			}
		}
			draw_self();
	}
}
	
