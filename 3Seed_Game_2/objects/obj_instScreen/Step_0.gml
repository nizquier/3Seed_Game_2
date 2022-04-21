/// @description 

//Check for selection to return to main menu
if(keyboard_check_pressed(vk_enter)){
	audio_stop_sound(snd_mainMenu)
	room_goto(FirstRoom)
}
