//If the UFO is off the screen, delete it.

if(x < (-sprite_width-10))
{
    instance_destroy();
}
else if(x > room_width+sprite_width+10)
{
    instance_destroy();
}