my_state = connectionWindow.closed;
server_connect = -1;

start_button = instance_create_layer(room_width/2,200,"Instances",obj_button);
ok_button = instance_create_layer(room_width/2,200,"Instances",obj_button);
yes_button = instance_create_layer(room_width/2-150,200,"Instances",obj_button);
no_button = instance_create_layer(room_width/2+150,200,"Instances",obj_button);

start_button.my_owner = id;
ok_button.my_owner = id;
yes_button.my_owner = id;
no_button.my_owner = id;

start_button.label = "Start";
ok_button.label = "OK";
yes_button.label = "Yes";
no_button.label = "No";

start_button.my_script = cw_prompt;
ok_button.my_script = cw_start_game;
yes_button.my_script = cw_connecting;
no_button.my_script = cw_close;

instance_deactivate_object(yes_button);
instance_deactivate_object(no_button);
instance_deactivate_object(ok_button);