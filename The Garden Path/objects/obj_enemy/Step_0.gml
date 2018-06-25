event_inherited();

// find closest player distance accounting for warps
var closest_player_x = -2;
var closest_player_y = -2;
var closest_player_dist = 1000000;

for (var i=-1; i<=1; i++) {
	for (var j=-1; j<=1; j++) {
		var cur_x = obj_player.x+i*room_width;
		var cur_y = obj_player.y+j*room_height;
		var dist = point_distance(x,y,cur_x,cur_y);
		
		if (dist < closest_player_dist) {
			closest_player_dist = dist;
			closest_player_x = cur_x;
			closest_player_y = cur_y;
		}
	}
}

// Turn
var to_player = point_direction(x,y,closest_player_x,closest_player_y);
var ad = angle_difference(dir,to_player);

if (abs(ad) < turn_speed * dt_scale) {
	dir = to_player;
} 
else {
	dir -= sign(ad) * turn_speed * dt_scale;
}

dt_motion_add(dir,accel);