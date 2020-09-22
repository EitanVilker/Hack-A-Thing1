/// @description Death trigger

// Destroy ship, decrement lives & create some debris
lives -= 1;
with(obj_game_manager) {
	alarm[1] = room_speed;
}
audio_play_sound(snd_die, 1, false);

repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}