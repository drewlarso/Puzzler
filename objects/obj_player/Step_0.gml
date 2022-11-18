/// @description Movement

key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_space);


x_speed = (key_right - key_left) * walk_speed;
y_speed = y_speed + grav;

if (global.enabled) {
	global.enabled_collider = obj_wallgreen;
} else {
	global.enabled_collider = obj_wallblue;
}

if instance_place(x,y,global.enabled_collider) {
	room_restart()
}

function check_collisions(xpos, ypos, fobj, sobj) {
	return place_meeting(xpos, ypos, fobj) or place_meeting(xpos, ypos, sobj);
}

if (check_collisions(x, y + 1, obj_wall, global.enabled_collider)) and (key_jump) {
	y_speed = jump_speed;
}

var x_dir = sign(x_speed);
if (check_collisions(x + x_speed, y, obj_wall, global.enabled_collider)) {
	while (!check_collisions(x + x_dir, y, obj_wall, global.enabled_collider)) {
		x += x_dir;
	}
	x_speed = 0;
}
x += x_speed;

var y_dir = sign(y_speed);
if (check_collisions(x, y + y_speed, obj_wall, global.enabled_collider)) {
	while (!check_collisions(x, y + y_dir, obj_wall, global.enabled_collider)) {
		y += y_dir;
	}
	y_speed = 0;
}
y += y_speed;