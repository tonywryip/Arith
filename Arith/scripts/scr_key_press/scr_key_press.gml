var add = keyboard_check_pressed(ord("J"));
var minus = keyboard_check_pressed(ord("K"));
var times = keyboard_check_pressed(ord("L"));
//semicolon
var divide = keyboard_check_pressed(186);

if add {
	operant = 1;
} else if minus {
	operant = 2;
} else if times {
	operant = 3;
} else if divide {
	operant = 4;
};

calc = keyboard_check_pressed(vk_space);

switchKey = keyboard_check_pressed(ord("U"));
