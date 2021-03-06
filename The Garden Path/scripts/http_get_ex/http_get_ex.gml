/// @func http_get_ex(route)
/// @arg route

var _route = argument[0];

var url;

if (os_get_config() == "Remote Server")
	url = REMOTE_DEV_SERVER_ADDRESS + _route;
else
	url = LOCAL_DEV_SERVER_ADDRESS + ":" + LOCAL_PORT + _route;

print("GET " + url);
return http_get(url);