#macro REMOTE_DEV_SERVER_ADDRESS "https://garden-path-server.herokuapp.com"
#macro LOCAL_DEV_SERVER_ADDRESS "http://localhost"
#macro LOCAL_PORT "3001"
#macro print show_debug_message

randomize();
display_set_gui_maximize(2,2,0,0);

bg_layer = layer_get_id("Background");
bg_t = 0;

audio_stop_all();
audio_play_sound(mus_demo,100,true);