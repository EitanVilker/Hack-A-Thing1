// Destroy ship & create some debris

lives -= 1;
with(obj_game_manager) {
	alarm[1] = room_speed * 2;
}
audio_play_sound(snd_die, 1, false);
instance_destroy();

repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}