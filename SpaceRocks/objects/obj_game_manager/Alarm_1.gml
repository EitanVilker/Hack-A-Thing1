/// @description Manage death
// Restart the room upon death after a delay
if (lives > 0) {
	room_restart();
} else {
	room_goto(rm_game_over);	
}