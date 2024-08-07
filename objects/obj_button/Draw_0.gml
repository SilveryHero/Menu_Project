draw_self();
draw_set_color(c_black);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (name == "Volume"){
	draw_text(x, y + sprite_get_height(sprite_index)/2, string(name) + " : " + string(global.volumebgm*100))
} else{
	draw_text(x, y + sprite_get_height(sprite_index)/2, name)
}


		