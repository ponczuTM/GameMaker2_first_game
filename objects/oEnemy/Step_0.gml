/*
key_left = keyboard_check(ord("A")) ||  keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) ||  keyboard_check(vk_right);
key_jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;
*/
vsp = vsp + grv;
/*
if(place_meeting(x,y+1,oWall)){
	vsp = -9;	//-7
}*/

//kolizja LP
if (place_meeting(x+hsp,y,oWall)){
	while(!place_meeting(x+sign(hsp),y,oWall)){
		x = x + sign(hsp);
	}
	hsp = -hsp;
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
	sprite_index = sEnemyA;
	image_speed = 0;
	if(sign(vsp)>0){
		image_index = 1;	
	} else {
		image_index = 0;	
	}
} else {
	image_speed = 1;
	if(hsp == 0){
		sprite_index = sEnemy;
	} else {
		sprite_index = sEnemyR;
	}
}
if(hsp!=0) {
	image_xscale = sign(hsp) * size;
}
image_yscale = size;
/*
if(hsp!=0) {
	image_xscale = sign(hsp) * 1.5;
}else{
	image_xscale = 1.5;	
}
	image_yscale = 1.5;
*/