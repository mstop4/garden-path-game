with (obj_api_fetcher) {
	var url;
	
	if (os_get_config() == "Remote Server")
		url = REMOTE_DEV_SERVER_ADDRESS + ":" + PORT + "/related/json?query=" + other.word + "&limit=" + string(num_seeds);
	else
		url = LOCAL_DEV_SERVER_ADDRESS + ":" + PORT + "/related/json?query=" + other.word + "&limit=" + string(num_seeds);		
	fetch_related = http_get(url);
}

obj_display.text += word + " ";