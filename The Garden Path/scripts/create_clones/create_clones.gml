///@arg clone

var _clone = argument[0];

for (var i=-1; i<=1; i++) {
	for (var j=-1; j<=1; j++) {
		if (i == 0 && j == 0)
			continue;
		else {
			var c = instance_create_layer(x+room_width*i,y+room_height*j,"Instances", _clone);
			c.my_owner = id;
			c.x_offset = i;
			c.y_offset = j;
			my_clones[(i+1)+(j+1)*3] = c;
		}
	}
}