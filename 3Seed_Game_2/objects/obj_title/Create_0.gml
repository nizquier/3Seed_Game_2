/// @description Insert description here
// You can write your code in this editor
menu[0] = "Game Map";
menu[1] = "Start Game (MHSNEW)";
menu[2] = "Start Game (Dungeon)";
menu[3] = "Start Game (Atlantis)";
menu[4] = "Instructions";

if(!audio_is_playing(snd_mainMenu)) audio_play_sound(snd_mainMenu, 10, true)

//Set initial index
index = 0;

global.checkpoint = false


