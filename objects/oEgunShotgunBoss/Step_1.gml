x=owner.x;
y=owner.y+10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer)) {
    if (oPlayer.x < x) {
        image_yscale = -image_yscale;
    }
    
    if (point_distance(oPlayer.x, oPlayer.y, x, y) < 1000){
        image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
        countdown--;
        
        if (countdown <= 0) {
            if (!collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false)) {
                countdown = countdownrate;
                audio_sound_pitch(snShoot, choose(0.8, 0.9, 1.0, 1.1, 1.2));
                audio_play_sound(snShoot, 5, false);

                var numBullets = 3; // Zmieniamy liczbę pocisków na 5
                var angles = [-5, 0, 5]; // Kąty dla poszczególnych pocisków

                for (var i = 0; i < numBullets; i++) {
                    var angle = image_angle + angles[i]; // Dodajemy lub odejmujemy odpowiednie kąty
                    var bullet = instance_create_layer(x, y, "Bullets", oEbulletBoss);
                    bullet.speed = 5;
                    bullet.direction = angle;
                    bullet.image_angle = angle;
                }
            }
        }
    }
}