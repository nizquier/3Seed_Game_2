/// @description Insert description here
// You can write your code in this editor

switch(selected_level){
	case 0:
		room_goto(MHS_NEW)
		audio_stop_all()
		audio_stop_sound(snd_mainMenu)
		break;
	case 1:
		room_goto(MHS_NEW2)
		audio_stop_all()
		audio_play_sound(snd_redCarpet, 10, true)
		break;
	case 2:
		room_goto(Atlantis)
		audio_stop_all()
		audio_play_sound(snd_Atlantis2, 11, false)
		break

}
