text = "";
formatted_text = "";

instance_destroy(obj_word_item_zen);
with (obj_word_item_spawn) event_perform(ev_create,0);
audio_play_sound(snd_reset,50,false);