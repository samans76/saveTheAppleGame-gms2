timer --

if timer < 0
{
instance_create_layer(x+33,y+41,"instances",ochar)
instance_create_layer(x,y,"instances",startportalfade)
instance_destroy()
}