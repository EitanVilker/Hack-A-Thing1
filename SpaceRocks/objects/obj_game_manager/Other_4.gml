/// @description Game room initialization

// Initial asteroid spawning
if (room == rm_game) {
	/*
	if (!audio_is_playing(msc_song)) {
		audio_play_sound(msc_song, 2, true);
	}
	*/
	
	scr_spawn_off_camera(obj_asteroid, 40);
	
	// room_speed is the game's FPS
	// Alarm 0 is set to run after 4 seconds
	// Begin spawning asteroids
	alarm[0] = room_speed * 4; 
}