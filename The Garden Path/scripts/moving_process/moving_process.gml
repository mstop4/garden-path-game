x += x_speed * dt_scale;
y += y_speed * dt_scale;

if (fric > 0) {
	var x_fric = fric * (x_speed / max_speed) * dt_scale;
	var y_fric = fric * (y_speed / max_speed) * dt_scale;

	if (abs(x_speed) < abs(x_fric))
		x_speed = 0;
	else
		x_speed -= x_fric;
	
	if (abs(y_speed) < abs(y_fric))
		y_speed = 0;
	else
		y_speed -= y_fric;
}