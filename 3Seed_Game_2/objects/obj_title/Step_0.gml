                 /// @description 

//Moving throught the menu
var up = keyboard_check_pressed(vk_up)
var down = keyboard_check_pressed(vk_down)
var enter = keyboard_check_pressed(vk_enter)

var move = down - up

if move != 0 {
	//audio_play_sound(snd_menuMove, 10, false)
	//Moving the index
	index += move
	
	//Clamp move to make sure it does not go ouside of the array
	var size = array_length_1d(menu)

	//Force index to beginning or end depending on current location
	if index < 0
		index = size - 1
	else if index >= size
		index = 0
}

//Making the menu items work
if enter {
	//audio_play_sound(snd_menuSelect, 10, false)
	switch(index){
		case 0:
			room_goto(MHS)
			audio_stop_sound(snd_mainMenu)
			break;
		case 1:
			room_goto(MHS_NEW)
			audio_stop_sound(snd_mainMenu)
			break;
		case 2:
			room_goto(Nick)
			audio_stop_sound(snd_mainMenu)
			audio_play_sound(snd_forest, 10, true)
			break;
		case 3:
			room_goto(Atlantis)
			audio_stop_sound(snd_mainMenu)
			audio_play_sound(snd_Atlantis2, 10, true)
			break;
		case 4:
			room_goto(Map)
			audio_stop_sound(snd_mainMenu)
			break;
		case 5:
			room_goto(MHS_NEW2)
			audio_stop_sound(snd_mainMenu)
			audio_play_sound(snd_redCarpet, 10, true)
			break;
		case 6:
			room_goto(rm_instructions)
			break;
	}
}
/*
//remove persistant controller in the main menu
if(instance_exists(obj_controller)){
	with(obj_controller){
		instance_destroy()
	}
}*/
