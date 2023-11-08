x=owner.x-18;
y=owner.y-22;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(oPlayer)){
	if(oPlayer.x<x){
		image_yscale = -image_yscale;	
	}
	if(point_distance(oPlayer.x,oPlayer.y,x,y)<9999){
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown--;
if (countdown <= 0) {
    if (!collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false)) {
        countdown = countdownrate;
        audio_sound_pitch(snShoot, choose(0.8, 0.9, 1.0, 1.1, 1.2));
        audio_play_sound(snShoot, 5, false);
        
        var numBullets = random_range(8,20); // Liczba pocisków
        var a = random_range(77,117);
        for (var i = 0; i < numBullets; i++) {
            var angle = i * a; // Rozłożenie kątów między pociskami (360° / 8)
            var bullet = instance_create_layer(x, y, "Bullets", oEbullet);
            
            bullet.speed = 4;
            bullet.direction = angle;
            bullet.image_angle = angle;
        }
    }
}

	}
}