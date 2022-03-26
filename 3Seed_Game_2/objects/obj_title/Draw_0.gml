/// @description Insert description here
// You can write your code in this editor

var spc = 50

draw_set_font(TitleFont)
draw_set_color(c_navy)

draw_text(room_width - room_width/1.45, room_height - room_height/1.5, "Heroe's Odyssey")

draw_set_font(TitleFont)
//Draw Menu Items
for (var i = 0; i < array_length_1d(menu); i++){
	draw_set_color(c_ltgrey)
	if i == index
		draw_set_color(c_green)
	
	draw_text(room_width - room_width/1.45, room_height - room_height/1.70 + spc*i, menu[i])
}