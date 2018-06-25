if (async_load[? "id"] == server_connect) {
	if (async_load[? "status"] == 0) {
		if (async_load[? "result"] == "Welcome to the Garden Path server!")
			cw_success();
		else
			cw_error();
	}
	
	else if (async_load[? "status"] == -1) {
		cw_error();
	}
}