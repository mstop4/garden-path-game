if (!is_paused) {
	var payload = url_encode(text);
	url_open("https://twitter.com/intent/tweet?text=" + payload);
	dt_scale = 0;
	is_paused = true;
}

else {
	dt_scale = 1;
	is_paused = false;
}