hsp=0;
vsp=0;
grv=0.3;
done=0;
oCamera.shake_remain = 0;
ScreenShake(6,25);
audio_play_sound(snDeath,10,false);
image_speed = 0;
global.kills--;
show_debug_message("Wartość zmiennej globalnej 'kills': " + string(global.kills));
