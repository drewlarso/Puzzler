/// @description Movement

key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_space);



x_speed = (key_right - key_left) * walk_speed;
y_speed = y_speed + grav;

if (place_meeting(x, y + 1, obj_wall)) and (key_jump) {
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