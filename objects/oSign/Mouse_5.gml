if(point_in_circle(oPlayer.x,oPlayer.y,x,y,64)) && (!instance_exists(oText1)){
	with(instance_create_layer(x,y-64,layer,oText1)) {
		text=other.text;
		length = string_length(text);
	}
	with(oCamera){
		follow=oPlayer;	
	}
}