var _music = -1;

if (room == rm_menu) {
	_music = snd_inicio;
}

if (room ==  rm_gameplay) {
	_music = snd_fase;
}

if (_music != -1) {
	if (global.musicplaying != _music) {
		// checar se a nova musica é diferente da atual
	}
	if (!audio_is_playing(_music)) {
		audio_stop_sound(global.musicplaying);
		global.musicplaying = audio_play_sound(_music,0, true);
		audio_sound_gain(global.musicplaying, global.volumebgm, 0);
	}
}