/// @description 

draw_set_halign(fa_center)

//Spacing
var spc = 50

//Set font for the menu items
draw_set_font(TitleFont)

//Draw Menu Items
for (var i = 0; i < array_length_1d(instruct); i++){
	draw_set_color(c_navy)
	draw_text(room_width/2, room_height*.35 + spc*i, instruct[i])
}

//Reset color
draw_set_color(c_ltgrey)
//Set font for instructions for returning to main screen
draw_set_font(font_smallMed)

//Draw instructions for returning to main screen
draw_text(room_width/2, room_height*.6, "Press 'Enter' to return to Main Menu")

