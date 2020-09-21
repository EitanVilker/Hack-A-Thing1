// Destroy bullet
instance_destroy();
score += 10;
audio_play_sound(snd_die, 1, false);

// other is a special keyword for collisions. Refers to whatever was collided with
// with statement has whatever is referenced in the round brackets call the relevant code
with(other) {
	// Destroy asteroid
	instance_destroy();
	
	// Spawn 2 asteroids of smaller size
	if (sprite_index == spr_asteroid_large) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_medium;
		}
		
	} else if (sprite_index == spr_asteroid_medium) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
		}
		
	} 
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}
