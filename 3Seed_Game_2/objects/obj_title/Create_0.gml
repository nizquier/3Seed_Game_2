/// @description Insert description here
// You can write your code in this editor
menu[0] = "Start Game";
menu[1] = "Instructions";
menu[2] = "Credits";

if(!audio_is_playing(snd_mainMenu)) audio_play_sound(snd_mainMenu, 10, true)

//Set initial index
index = 0;
