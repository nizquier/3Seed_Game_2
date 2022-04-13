/// @description Insert description here
// You can write your code in this editor

randomize();
global.playerHPMax = 10;
global.playerHP = 10;


enum CurrentHero {
	Pyro,
	Cryo,
	Hydro,
	Dendro
}

audio_play_sound(snd_mainMenu, 10, true)
