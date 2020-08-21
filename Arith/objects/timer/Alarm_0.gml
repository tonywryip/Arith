/// @desc <>

ini_open("Save.ini");
ini_write_real("Scores", "Highscore", global.highscore);
ini_close();

room_goto(room1);