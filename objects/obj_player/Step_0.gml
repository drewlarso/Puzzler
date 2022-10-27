/// @description Insert description here
// You can write your code in this editor

x_speed = (keyboard_check(vk_right) - keyboard_check(vk_left)) * walk_speed;
y_speed = y_speed + grav;

if (place_meeting(x, y + 1, obj_wall)) and (keyboard_check(vk_space)) {
	y_speed = jump_speed;
}

var x_dir = sign(x_speed);
if (place_meeting(x + x_speed, y, obj_wall)) {
	while (!place_meeting(x + x_dir, y, obj_wall)) {
		x += x_dir;
	}
	x_speed = 0;
}
x += x_speed;

var y_dir = sign(y_speed);
if (place_meeting(x, y + y_speed, obj_wall)) {
	while (!place_meeting(x, y + y_dir, obj_wall)) {
		y += y_dir;
	}
	y_speed = 0;
}
y += y_speed;