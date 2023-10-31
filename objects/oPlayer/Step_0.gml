if(hascontrol){
	key_left = keyboard_check(ord("A")) ||  keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) ||  keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
}else{
	key_left = 0;
	key_right = 0;
	key_jump = 0;

}

var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

if(place_meeting(x,y+1,oWall)) && (key_jump){
	audio_sound_pitch(snLanding,0.5);
	audio_play_sound(snLanding,6,false);
	vsp = -9;	//-7
}

//kolizja LP
if (place_meeting(x+hsp,y,oWall)){
	while(!place_meeting(x+sign(hsp),y,oWall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;


//kolizja GD

if (place_meeting(x,y+vsp,oWall)){
	while(!place_meeting(x,y+sign(vsp),oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//animacja

if(!place_meeting(x,y+1,oWall)){
	sprite_index = sPlayerA;
	image_speed = 0;
	if(sign(vsp)>0){
		image_index = 1;	
	} else {
		image_index = 0;	
	}
} else {
	if(sprite_index==sPlayerA){
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
		audio_play_sound(snLanding,6,false);	
	}
	image_speed = 1;
	if(hsp == 0){
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerR;
	}
}
if(hsp!=0) {
	image_xscale = sign(hsp);
}