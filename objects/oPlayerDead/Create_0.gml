hsp=0;
vsp=-4;
grv=0.4;
done=0;

image_speed=0;
image_index=0;

oCamera.shake_remain = 0;
ScreenShake(6,40);
audio_play_sound(snDeath,10,false);
game_set_speed(45,gamespeed_fps);

with(oCamera) follow = other.id;