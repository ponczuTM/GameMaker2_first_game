//mygun = instance_create_layer(x,y,"Gun",oEgun2);

mygun = instance_create_layer(x, y, "Gun", oEgun2_1);
mygun2 = instance_create_layer(x, y, "Gun", oEgun2_2);
mygun3 = instance_create_layer(x, y, "Gun", oEgun2_3);

with (mygun){
	owner=other.id;	
}
with (mygun2){
	owner=other.id;	
}
with (mygun3){
	owner=other.id;	
}