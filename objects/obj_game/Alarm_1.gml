if(room == rm_game) {
	if(lives <= 0) {
		audio_play_sound(snd_lose, 1, false);
		room_goto(rm_gameover);
	} else {
		room_restart();
	}
}