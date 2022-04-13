/// @description Insert description here
// You can write your code in this editor
if( health <= 0) {
	instance_destroy(other);
	instance_destroy();
	exit;
}
health = health - 20;
instance_destroy(other);
