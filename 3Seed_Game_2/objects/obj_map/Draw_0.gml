/// @description Insert description here

draw_set_halign(fa_left)
draw_set_font(TitleFont)
draw_set_color(#2881CC)
draw_text_transformed(650, 32, "Trophies Collected", 0.5, 0.5, image_angle);
draw_sprite(spr_trophyCase, 1, 704, 64)

//menu navigation details
draw_set_color(c_dkgrey)
draw_set_font(font_sm)
draw_text(80,100," * Use Left And Right Arrows keys To Select Level")
draw_text(80,120," * Use Space Bar To Enter The Level")

//LevEL Names
draw_set_color(c_black)
draw_text(448, 500,"Local Village")
draw_text(640, 300,"Dungeon")
draw_text(1184, 400,"Atlantis")

draw_set_color(#2881CC)
if(global.trophy1 == true)
{
	draw_sprite(spr_trophyAtlantisCASE, 3, 768, 96)
}
if(global.trophy2 == true)
{
	draw_sprite(spr_trophyFireCASE, 2, 832, 96)
}
if(global.trophy3 == true)
{
	draw_sprite(spr_trophyWizardCASE, 2, 896, 96)
}
