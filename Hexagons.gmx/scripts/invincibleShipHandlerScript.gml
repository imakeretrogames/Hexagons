//If any key is pressed, switch from an invincible ship, to a player ship.

if(keyboard_check(vk_anykey) && spawned = false)
{
    spawned = true;
    instance_create(x,y,shipObject);
    instance_destroy();
}