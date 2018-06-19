if (async_load[? "id"] == server_connect) {
	if (async_load[? "status"] == 0) {
		cw_success();
	}
	
	else if (async_load[? "status"] == -1) {
		cw_error();
	}
}