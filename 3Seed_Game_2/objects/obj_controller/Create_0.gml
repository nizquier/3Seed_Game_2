/// @description Insert description here
// You can write your code in this editor

randomize();
canSwitch = true;
global.playerHPMax = 3.0;
global.playerHP = 3.0;

enum CurrentHero {
	Pyro,
	Cryo,
	Hydro,
	Dendro
}

audio_play_sound(snd_mainMenu, 10, true)
