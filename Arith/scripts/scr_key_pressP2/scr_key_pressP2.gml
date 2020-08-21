var add = keyboard_check_pressed(ord("A"));
var minus = keyboard_check_pressed(ord("S"));
var times = keyboard_check_pressed(ord("D"));
//semicolon
var divide = keyboard_check_pressed(ord("F"));

if add {
	operant = 1;
} else if minus {
	operant = 2;
} else if times {
	operant = 3;
} else if divide {
	operant = 4;
};

calc = keyboard_check_pressed(vk_lcontrol);

switchKey = keyboard_check_pressed(ord("Q"));
