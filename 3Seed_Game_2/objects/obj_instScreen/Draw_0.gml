/// @description 

draw_set_halign(fa_center)
draw_set_font(TitleFont)
draw_set_color(#2881CC)
//image_angle += 1
draw_text_transformed(room_width/2, 93, "Instructions", 0.5, 0.5, image_angle);
var spc = 100

#region Draw Icon

for (var i = 0; i < array_length_1d(powerUps); i++){
	draw_sprite(powerUpIcon[i], 0, 250, 217 + spc*i)
}

for (var i = 0; i < array_length_1d(heroIcon); i++){
	draw_sprite(heroIcon[i], 0, 775, 217 + spc*i)
}
#endregion

#region Draw Titles
for (var i = 0; i < array_length_1d(powerUps); i++){
	draw_set_font(TitleFont)
	draw_set_halign(fa_left)
	draw_set_color(#5099b8)
	draw_text_transformed(294, 177 + spc*i, powerUps[i], 0.5, 0.5, image_angle);
}

for (var i = 0; i < array_length_1d(heroes); i++){
	draw_set_font(TitleFont)
	draw_set_halign(fa_left)
	draw_set_color(#5099b8)
	draw_text_transformed(825, 180 + spc*i, heroes[i], 0.5, 0.5, image_angle);
}
#endregion

#region Draw Instructions/Descriptions
for (var i = 0; i < array_length_1d(puInstructions); i++){
	draw_set_font(fnt_monogram)
	draw_set_halign(fa_left)
	draw_set_color(#241610)
	draw_text_ext(294, 210 + spc*i, puInstructions[i], 15, 310)
}

for (var i = 0; i < array_length_1d(heroDes); i++){
	draw_set_font(fnt_monogram)
	draw_set_halign(fa_left)
	draw_set_color(#241610)
	draw_text_ext(825, 213 + spc*i, heroDes[i], 15, 310)
}
draw_text_ext(764, 560, shieldDes, 15, 350)
#endregion

#region Draw instructions for returning to main screen
draw_set_font(fnt_monogram)
draw_set_halign(fa_center)
draw_set_color(c_blue)
draw_text(room_width/2, room_height*.9, "Press 'Enter' to return to Main Menu")
#endregion
