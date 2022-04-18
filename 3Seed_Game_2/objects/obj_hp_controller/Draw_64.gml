/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
//	draw_healthbar(8,8,256,32,global.playerHP,c_black,c_red,c_lime,0,true,true)
	//draw_text(16,64,"Score: "+ string(points))
}

draw_set_halign(fa_left)

if(instance_exists(obj_player)){
//health meter background
draw_sprite(spr_healthmeter_left,0,55,30)
draw_sprite_stretched(spr_health_meter_mid, 0, 65, 30, 150, 25)
draw_sprite(spr_healthmeter_right, 0, 215, 30)
}
/*
if (global.game_over) {
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press ALT + G to restart.")
	//draw_text(room_width / 2, room_height / 2 + 40, "Press ALT + G for Main Menu")
}*/

//acttual health meter
if(instance_exists(obj_player))
	draw_sprite_stretched(spr_healthbar_mid, 0, 60, 30, (global.playerHP/global.playerHPMax)*162, 25)

if(instance_exists(obj_player)) {
//health meter icon and holder
draw_sprite(spr_healthmeter_holder, 0, 30, 30)
draw_sprite(spr_healthmeter_icon, 0, 55, 55)

//health icons
var i;
for(i=0; i<lives; i++){
	draw_sprite(spr_healthmeter_icon, 0, (55 + 40 * i), 105)
}

}

//draw_sprite(spr_healthmeter_icon, 0, 55, 105)
//draw_sprite(spr_healthmeter_icon, 0, 95, 105)
//draw_sprite(spr_healthmeter_icon, 0, 135, 105)

//setting font
draw_set_font(font_small)

if(instance_exists(obj_player)){
//score and room restart
//draw_text(30, 180, "Score: " + string(score))
draw_text(30, 140, "Press ALT-R to restart the Game.")
//draw_text(30, 200, "lives: " + string(lives))
}
