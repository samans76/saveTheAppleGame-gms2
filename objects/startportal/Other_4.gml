/// @description Autosave

//overwrite old save
if file_exists(savefile)  file_delete(savefile)

//create new save
var file ;
file = file_text_open_write(savefile)
file_text_write_real(file,room + 7676)  //7676 code e zed e cheat e
file_text_close(file)

