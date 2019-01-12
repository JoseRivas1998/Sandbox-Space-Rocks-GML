if(keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start:
			audio_play_sound(msc_song, 2, true);
			room_goto(rm_game);
			break;
			
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}

if(room == rm_game) {
	if(score >= 1000) {
		audio_play_sound(snd_win, 1, false);
		room_goto(rm_win);
	}
}
