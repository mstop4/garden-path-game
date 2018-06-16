with (obj_api_fetcher) {
	var url = DEV_SERVER_ADDRESS + "/related/json?query=" + other.word + "&limit=" + string(num_seeds);
	print(url);
	fetch_related = http_get(url);
}

obj_display.text += word + " ";