global.mute = 1

//death save take

if file_exists(savedeath)
	{
	var file = file_text_open_read(savedeath)
	var Dtarget = file_text_read_real(file)
	file_text_close(file)
	global.deathcount = Dtarget-76
	}
