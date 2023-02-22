// movements move= 1 right -1 left
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check(ord("W"))

jumpstart -- 

if keyboard_check_pressed(ord("W")) && place_meeting(x,y+1,owall)
jumpstart = 5

if key_jump = 1 && jumpstart > 0
i++

var move = key_right-key_left;
hsp = move * walkspd
if (place_meeting(x,y+1,owall)) &&  jumpstart < 0
{
	
	vsp = -5
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

if(place_meeting(x,y+vsp,owall)) 
{
while(!place_meeting(x,y+sign(vsp),owall)) 
{ 
	 y = y + sign(vsp)
}
i=0
 vsp = 0
}

x = x+ hsp
y=y+vsp


//double junp
//if (!place_meeting(x,y+10,owall)) && (key_jump) && (dbljump ==0) && vsp > -3.5 //vsp to save player from himself fast dbljump use
{
//	dbljump = 1
//	vsp = -5.5
}
//if (place_meeting(x,y+1,owall))
//dbljump = 0