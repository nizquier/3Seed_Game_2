/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_self();
draw_healthbar(x - (sprite_width/2), y - (sprite_height/2), x + (sprite_width/2), y - (sprite_height/2),
				(enemyHP/enemyHPMAX)*100, c_black, c_red, c_green, 0,1,1)
