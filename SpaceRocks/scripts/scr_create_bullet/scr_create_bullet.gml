/// @description Create a bullet
/// @param {_dir} direction to shoot
/// @param {_spd} bullet speed
/// @param {_fac} faction
/// @param {_cre} creator
function scr_create_bullet(_dir, _spd, _fac, _cre){
	audio_play_sound(snd_zap, 1, false);
	
	// Pass this along so the bullet knows who made it
	var _creator = id;
	
	// Every sprite has x,y instance variables
	// Create bullet in the instances layer
	// Returns ID of the created object
	// var makes inst a local variable, discarded at end of script 
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	
	with (inst) {
		direction = _dir;
		speed = _spd;
		faction = _fac;
		creator = _cre;
		
		if (faction == factions.ally) { image_blend = c_aqua; }
		else if (faction == factions.enemy) { image_blend = c_red; }
	}
}