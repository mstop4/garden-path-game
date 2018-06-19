/// @func http_get_ex(route)
/// @arg route

var url;

if (os_get_config() == "Remote Server")
	url = REMOTE_DEV_SERVER_ADDRESS + ":" + PORT + argument[0];
else
	url = LOCAL_DEV_SERVER_ADDRESS + ":" + PORT + argument[0];
	
return http_get(url);