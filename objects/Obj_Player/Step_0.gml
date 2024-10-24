/// @description core player logic

//get player inputs

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//calculate movement
var _move = key_right - key_left;

hsp = _move * walksp

vsp = vsp + grv;

if (place_meeting(x,y+0.5,Obj_invisibleWall)) and (key_jump)
{
	vsp = -jumpsp
}

//horizontal collision
if (place_meeting(x+hsp,y,Obj_invisibleWall))
{
	while (!place_meeting(x+sign(hsp),y,Obj_invisibleWall))	//while is like an if statement runnwith brackets but it repeats over and over
	{
		x = x + sign(hsp);
	}
		hsp = 0;
}
x = x + hsp;

//horizontal collision
if (place_meeting(x,y+vsp,Obj_invisibleWall))
{
	while (!place_meeting(x,y+sign(vsp),Obj_invisibleWall))	//while is like an if statement runnwith brackets but it repeats over and over
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;