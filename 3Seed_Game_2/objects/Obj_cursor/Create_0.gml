/// @description Insert description here
// You can write your code in this editor
//window_set_cursor(cr_none)
//cursor_sprite = spr_cursor

for (var i = 0; i < instance_number(Obj_isLevelCompleted); ++i;)
{
    Levels[i] = instance_find(Obj_isLevelCompleted,i);
}

min_level = 0
max_level = instance_number(Obj_isLevelCompleted) - 1;
selected_level = min_level
prev_level = selected_level
