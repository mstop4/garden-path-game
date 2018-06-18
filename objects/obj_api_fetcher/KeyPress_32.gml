print("get");

var url;
	
if (os_get_config() == "Remote Server")
	url = REMOTE_DEV_SERVER_ADDRESS + ":" + PORT + "/seed/json?limit=" + string(num_seeds);
else
	url = LOCAL_DEV_SERVER_ADDRESS + ":" + PORT + "/seed/json?limit=" + string(num_seeds);
	
fetch_seeds = http_get(url);
