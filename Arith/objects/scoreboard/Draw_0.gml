/// @desc <>

if room == room0 {
	draw_set_halign(fa_left);
	draw_set_font(f_score);

	draw_text(10, 20, "Score = " + string(p1_score));
	draw_text(10, 60, "Highscore = " + string(global.highscore));

	draw_set_font(f_default);
	draw_set_halign(fa_center);
} else if room == room1 {
	draw_text(halfx, halfy, "Score = " + string(p1_score));
	draw_text(halfx, halfy + 80, "Highscore = " + string(global.highscore));
}

if room == room0P2 {
	draw_set_halign(fa_left);
	draw_set_font(f_score);

	draw_text(10, 20, "Player 1 Score = " + string(p2_score));
	draw_text(10, 60, "Highscore = " + string(global.highscore));	
	
	draw_text(halfx + 10, 20, "Player 2 Score = " + string(p1_score));
	draw_text(halfx + 10, 60, "Highscore = " + string(global.highscore));

	draw_set_font(f_default);
	draw_set_halign(fa_center);
} else if room == room1P2 {
	draw_set_halign(fa_left);
	draw_text(halfx + 10, halfy, "Player 2 Score = " + string(p1_score));	
	draw_text(10, halfy, "Player 1 Score = " + string(p2_score));
	draw_set_halign(fa_center);
	if p1_score < p2_score {
		draw_sprite(s_medal, 0, 160, halfy - 200);
	} else if p2_score < p1_score {
		draw_sprite(s_medal, 0, halfx + 160, halfy - 200);
	}
	draw_text(halfx, halfy + 240, "Highscore = " + string(global.highscore));
}