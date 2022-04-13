/// @description Insert description here
// You can write your code in this editor
var text_width = string_width(new_text)
var text_height = string_height(new_text)
var margin = 5
draw_set_font(font_small)

draw_self();
//if(isColliding = true and isShowKey = true) {
//	draw_sprite(spr_enterKey, 0,x - 10, y - 3 );
//}
if(timeline_running = true) {
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_rectangle(x-margin, y-margin, x+280, y+margin+15, false)
	draw_set_font(font_small)
	draw_set_color(c_black)
	draw_text(x,y,new_text)
}

if(isHeroApproched = false) {
	var text_width = string_width("Hello, Hero !!!")
	var text_height = string_height("Hello, Hero !!!")
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_set_font(font_small)
	draw_rectangle(x-margin, y-margin, x+text_width+margin, y+margin+text_height, false)
	draw_set_color(c_black)
	draw_text(x,y,"Hello, Hero !!!")
}

//draw_sprite_ext(spr_enterKey, 0, x,y, 0.5,0.5,0,0,1);
