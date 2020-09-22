/// @description Game UI

// Draw text in rooms
switch(room){
	case rm_start:
		// Title
		draw_set_halign(fa_center);
		var color = c_yellow;
		draw_text_transformed_color(room_width/2, 100, "SPACE ROCKS", 3, 3, 0, color, color, color, color, 1)
		
		// Instructions
		draw_text(room_width/2, 200, "Score 1000 points to win!\n\nUP: move\nLEFT/RIGHT: change direction\nSPACE: shoot\n\n>> PRESS ENTER TO START <<")
		draw_set_halign(fa_left);
		break;
	
	case rm_game:
		// Display lives & score
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "LIVES: "+string(lives));
		break;
	
	case rm_win:
		// Win message
		draw_set_halign(fa_center);
		var color = c_lime;
		draw_text_transformed_color(room_width/2, 200, "YOU WIN!", 3, 3, 0, color, color, color, color, 1);
		draw_text(room_width/2, 300, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
	
	case rm_game_over:
		// Lose message
		draw_set_halign(fa_center);
		var color = c_red;
		draw_text_transformed_color(room_width/2, 200, "GAME OVER!", 3, 3, 0, color, color, color, color, 1);
		draw_text(room_width/2, 275, "FINAL SCORE: "+string(score));
		draw_text(room_width/2, 325, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;

}