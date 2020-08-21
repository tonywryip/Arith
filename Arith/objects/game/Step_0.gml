/// @desc <>
if keyboard_check_pressed(vk_escape) {
	game_end();
}

if keyboard_check_pressed(ord("R")) {
	room_restart();
}

if (room == room0 or room == room0P2) and keyboard_check_pressed(vk_right) {
	room_goto_next();
}

if (room == room1 or room == room1P2) and keyboard_check_pressed(vk_space) {
	room_goto(r_start);
	scoreboard.p1_score = 0;
	scoreboard.p2_score = 0;
}