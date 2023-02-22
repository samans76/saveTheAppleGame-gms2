// movements move= 1 right -1 left
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check(ord("W"))


var move = key_right-key_left;
hsp = move * walkspd
if (jumpbuff >0) && keyboard_check_pressed(ord("W"))
{
	audio_play_sound(jump,0,0)
	vsp = -7
}
vsp = vsp + grv


// horizontal collision
if(place_meeting(x+hsp,y,owall)) 
{
 while(!place_meeting(x+sign(hsp),y,owall))
 {
	 x = x + sign(hsp)
 }
 hsp = 0
}

// vertical collision

if(place_meeting(x,y+vsp*2,owall)) 
{
while(!place_meeting(x,y+sign(vsp)*2,owall)) 
{ 
	 y = y + sign(vsp)
}
if (place_meeting(x,y+2,owall))
jumpbuff = 10
vsp = 0
}

//movement improvements

x = x+ hsp
//faster fall (mario fall)
if vsp < 0
y=y+vsp
else
y=y+vsp*1.4

//jumpheightcontrol
if vsp < 0
if key_jump = 0
vsp = 0


//double junp
if (!place_meeting(x,y+10,owall)) && keyboard_check_pressed(ord("W")) && (dbljump <1) && vsp > -3.5 //vsp to save player from himself fast dbljump use
{
	audio_play_sound(doubljump,0,0)
	dbljump += 1
	vsp = -6.4
}
if (place_meeting(x,y+1,owall))
dbljump = 0


//jump buffer
if (!place_meeting(x,y+2,owall))
jumpbuff --

if keyboard_check_pressed(ord("W"))
jumpbuff = -1

//animation
if vsp != 0
{
	if vsp <1 sprite_index = applejump1
	if vsp >1 sprite_index = applefall1
}
else
{
if hsp !=0
image_xscale = sign(hsp)

if hsp = 0
sprite_index = appleidle1
if hsp !=0 
sprite_index =applerun1
}

//step sound
if hsp  != 0 &&  place_meeting(x,y+6,owall)
{
audio_stop_sound(jump)
audio_sound_pitch(running,random_range(0.96,1.03))
if stepcd < 0
{
audio_play_sound(running,0,0)
stepcd = 14
}
}
stepcd --
