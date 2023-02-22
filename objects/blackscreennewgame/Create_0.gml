image_alpha = 0

/// Autosave
global.deathcount = 0
//overwrite old save
if file_exists(savedeath)  file_delete(savedeath)

//create new save
var file ;
file = file_text_open_write(savedeath)
file_text_write_real(file, 0 + 76)  //76 code e zed e cheat e
file_text_close(file)
