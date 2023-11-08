if (!global.music_playing) {
    audio_play_sound(snMusic, 1, true); // Rozpocznij odtwarzanie muzyki tylko, jeśli nie jest już grana.
    global.music_playing = true; // Ustaw zmienną globalną, aby określić, że muzyka jest odtwarzana.
}
