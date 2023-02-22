instance_create_layer(global.checkx,global.checky,"instances",ochar)
global.deathcount = global.deathcount + 1

/// Autosave

//overwrite old save
if file_exists(savedeath)  file_delete(savedeath)

//create new save
var file ;
file = file_text_open_write(savedeath)
file_text_write_real(file, global.deathcount + 76)  //76 code e zed e cheat e
file_text_close(file)


instance_destroy()