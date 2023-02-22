if mouse_check_button_pressed(mb_left)
{
	if file_exists(savefile)
	{
	check2 = 1
	audio_stop_sound(musicmenu)
	var file = file_text_open_read(savefile)
	var target = file_text_read_real(file)
	file_text_close(file)
	room_goto(target-7676)
	}
}