//For Sprites
#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3

//For Heroes
#macro PYRO 0
#macro CRYO 1
#macro HYDRO 2
#macro DENDRO 3

#macro TILE_SIZE 32

//For Enemies
enum ENEMYSTATE
{
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	RANGE,
	HURT,
	DIE,
	WAIT
}
