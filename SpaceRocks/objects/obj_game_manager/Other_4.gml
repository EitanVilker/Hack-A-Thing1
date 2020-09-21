// Initial asteroid spawning
if (room == rm_game) {
	if (! audio_is_playing(msc_song)) {
		audio_play_sound(msc_song, 2, true);
	}
	repeat(6) {
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width),
		);
	
		var yy = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width),
		);
		
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
	
	alarm[0] = room_speed * 4; // room_speed is the game's FPS. Alarm 0 is set to run after 4 seconds
}