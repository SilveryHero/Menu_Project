var _music = -1;

if (room == rm_menu2) {
	_music = snd_inicio;
}

if (room ==  rm_gameplay) {
	_music = snd_fase;
}

if (_music != -1) {
	if (global.musicplaying != _music) {
		// new music is different then the current one
	}
	if (!audio_is_playing(_music)) {
		audio_stop_sound(global.musicplaying);
		global.musicplaying = audio_play_sound(_music,0, true);
		audio_sound_gain(global.musicplaying, global.volumebgm, 0);
	}
}