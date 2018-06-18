my_state = connectionWindow.closed;
start_button = instance_create_layer(room_width/2,400,"Instances",obj_connect_start_button);
yes_button = instance_create_layer(room_width/2-300,400,"Instances",obj_connect_yes_button);
no_button = instance_create_layer(room_width/2+300,400,"Instances",obj_connect_no_button);

start_button.my_owner = id;
yes_button.my_owner = id;
no_button.my_owner = id;

instance_deactivate_object(yes_button);
instance_deactivate_object(no_button);