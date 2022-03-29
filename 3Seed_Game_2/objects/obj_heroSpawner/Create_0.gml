/// @description Insert description here
// You can write your code in this editor

hero[PYRO] = obj_heroPyro
hero[CRYO] = obj_heroCryo
hero[HYDRO] = obj_heroHydro
hero[DENDRO] = obj_heroDendro

randomize()

choosenHero = irandom(3);

instance_create_layer(x, y, "Instances", hero[choosenHero]);