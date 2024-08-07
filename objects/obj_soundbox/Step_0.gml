global.volumebgm = clamp(global.volumebgm, 0, 1);
audio_sound_gain(global.musicplaying, global.volumebgm, 0);