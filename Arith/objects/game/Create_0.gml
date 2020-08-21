/// @desc <>
window_set_fullscreen(true);

ini_open("Save.ini");
global.highscore = ini_read_real("Scores", "Highscore", 0);
ini_close();

draw_set_color(c_black);