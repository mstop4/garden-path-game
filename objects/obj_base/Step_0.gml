dt_process_alarms();

if (can_spawn && num_active_enemies < my_max_enemies) {
	
	// find closest player distance accounting for warps
	var closest_player_dist = 1000000;

	for (var i=-1; i<=1; i++) {
		for (var j=-1; j<=1; j++) {
			var cur_x = obj_player.x+i*room_width;
			var cur_y = obj_player.y+j*room_height;
			var dist = point_distance(x,y,cur_x,cur_y);
		
			if (dist < closest_player_dist) {
				closest_player_dist = dist;
			}
		}
	}
	
	if (closest_player_dist < detect_distance) {
		var e = instance_create_layer(x,y,"Instances",obj_enemy);
		e.my_owner = id;
		num_active_enemies++;
		can_spawn = false;
		
		if (active_spawn) {
			dt_alarm[0] = obj_base_spawn.cur_esd_active;
		}
	
		else if (obj_base_spawn.passive_spawn) {
			dt_alarm[0] = obj_base_spawn.cur_esd_passive;		
		}
	}
}