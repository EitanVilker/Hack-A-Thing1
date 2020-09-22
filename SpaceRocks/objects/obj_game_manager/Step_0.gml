/// @description Manage room transitions

if (keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start:
			room_goto(rm_game);
			break;
		
		case rm_win:
		case rm_game_over:
			lives = 3;
			game_restart();
			break;
	}
}

if (room == rm_game) {
	if (score >= 1000) {
		//score = 0;
		room_goto(rm_win);
		audio_play_sound(snd_win, 1, false);
	}

	if (lives <= 0) {
		audio_play_sound(snd_lose, 1, false);
		room_goto(rm_game_over);	
	}
}