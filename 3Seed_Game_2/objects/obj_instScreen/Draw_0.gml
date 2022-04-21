/// @description 

draw_set_halign(fa_center)
draw_set_font(TitleFont)
draw_set_color(#2881CC)
//image_angle += 1
draw_text_transformed(room_width/2, 93, "Instructions", 0.5, 0.5, image_angle);

var spc = 100
for (var i = 0; i < array_length_1d(powerUps); i++){
	draw_set_font(TitleFont)
	draw_set_halign(fa_left)
	draw_set_color(#5099b8)
	draw_text_transformed(300, 177 + spc*i, powerUps[i], 0.5, 0.5, image_angle);
}

for (var i = 0; i < array_length_1d(puInstructions); i++){
	draw_set_font(fnt_monogram)
	draw_set_halign(fa_left)
	draw_set_color(#241610)
	draw_text_ext(300, 210 + spc*i, puInstructions[i], 15, 310)
}

for (var i = 0; i < array_length_1d(heroes); i++){
	draw_set_font(TitleFont)
	draw_set_halign(fa_left)
	draw_set_color(#5099b8)
	draw_text_transformed(850, 180 + spc*i, heroes[i], 0.5, 0.5, image_angle);
}

for (var i = 0; i < array_length_1d(heroDes); i++){
	draw_set_font(fnt_monogram)
	draw_set_halign(fa_left)
	draw_set_color(#241610)
	draw_text_ext(850, 213 + spc*i, heroDes[i], 15, 310)
}
draw_text_ext(775, 560, "All heroes have a shield that is activated with SPACE-BAR, it halves all damage taken when it is held.", 15, 350)

//Draw instructions for returning to main screen
draw_set_font(fnt_monogram)
draw_set_halign(fa_center)
draw_set_color(c_blue)
draw_text(room_width/2, room_height*.9, "Press 'Enter' to return to Main Menu")

