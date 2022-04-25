/// @description 

draw_set_halign(fa_center)

//Spacing
var spc = 50

//Set font and color for title
draw_set_font(TitleFont)
draw_set_color(c_navy)

//Draw title for Credits page
draw_text(room_width/2, room_height*.28, "Credits")

//Set font for the menu items
draw_set_font(font_large)

//Draw Menu Items
for (var i = 0; i < array_length_1d(instruct); i++){
	draw_set_color(c_ltgrey)
	draw_text(room_width/2, room_height*.4 + spc*i, instruct[i])
}

//Set font for instructions for returning to main screen
draw_set_font(font_small)

//color set
draw_set_color(c_ltgrey)

//Draw instructions for returning to main screen
draw_text(room_width/2, room_height*.9, "Press 'Enter' to return to Main Menu")

