var payload = url_encode(text);
url_open("https://twitter.com/intent/tweet?text=" + payload);