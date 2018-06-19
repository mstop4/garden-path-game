/// @description connecting
my_state = connectionWindow.connecting;
instance_deactivate_object(yes_button);
instance_deactivate_object(no_button);

server_connect = http_get_ex("/handshake");