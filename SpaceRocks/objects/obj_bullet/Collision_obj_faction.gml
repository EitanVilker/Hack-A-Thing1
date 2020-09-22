///@description Collision checks

if(other.id == creator) {
	exit;
}

instance_destroy();

if (other.faction == faction) {
	exit;
}

// Damage object (call user event 0 for the object in question)
with (other) {
	event_perform(ev_other, ev_user0) ;
}