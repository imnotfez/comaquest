right_key = keyboard_check(vk_right);
up_key	= keyboard_check(vk_up);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);


xspd = (right_key - left_key) * move_spd
yspd = (down_key - up_key) * move_spd


if instance_exists(obj_pauser)
{
	xspd = 0;
	yspd = 0;
}

mask_index = sprite[DOWN]
if yspd == 0
{
if xspd > 0 {face = RIGHT}
if xspd < 0 {face = LEFT}
}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0
{
if yspd > 0 {face = DOWN}
if yspd < 0 {face = UP}
}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};
sprite_index = sprite[face]

if place_meeting(x + xspd, y, obj_wall)
xspd = 0

if place_meeting(x, y + yspd, obj_wall)
yspd = 0

x += xspd
y += yspd



//animate

if xspd == 0 && yspd == 0
	{
	image_index = 0;
	}
	
depth = -bbox_bottom;