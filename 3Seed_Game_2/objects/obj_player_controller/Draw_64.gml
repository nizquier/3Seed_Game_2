/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white)
draw_set_font(font_md)
draw_text(room_width - 10,10, "Objective : " + objective);
if(instance_exists(obj_heroPyro)){
	if(variable_instance_exists(obj_heroPyro, "health")){
		draw_text(10,25, "Health : " + obj_heroPyro.health);
	}
	
}




