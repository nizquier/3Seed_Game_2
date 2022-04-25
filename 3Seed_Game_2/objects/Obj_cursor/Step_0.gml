/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_right) or keyboard_check(vk_left)) {
if (keyboard_check(vk_right)) {
	alarm[0] = 5
}
if(keyboard_check(vk_left)){
	alarm[1] = 5
}
}

with(Levels[selected_level]){
	image_xscale = 2
	image_yscale = 2
}
