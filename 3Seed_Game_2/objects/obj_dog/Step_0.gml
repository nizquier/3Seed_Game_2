/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(state = ENEMYSTATE.CHASE)
{
    path_end();
}

sprite_collision_mask(spr_dog, true, 1, 0, 0, 0, 0, 0, 0);
