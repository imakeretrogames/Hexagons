//handle arrow key controls.

if(keyboard_check(vk_right))
{
    shipDirection -= turningSpeed;
}
else if(keyboard_check(vk_left))
{
    shipDirection += turningSpeed;
}
if(keyboard_check(vk_up))
{
    motion_add(shipDirection , 0.2)
}


//cap speed at 10

if(speed > 10)
{
    speed=10;
}

//make sure the ship sprite is facing the right way

image_angle = shipDirection-90;

//shoot a bullet when space is hit.

if(keyboard_check(vk_space) && !fired)
{
    alarm[1] = room_speed;
    fired = true;
    instance_create(x,y,bulletObject);
    audio_play_sound(bulletSound, 10, false);
}

//wrap the ship

move_wrap(true, true, 0)


//if you collide with a hexagon, an enemy bullet or an enemy ship, destroy the ship, spawn the
//fragments, decrement lives and play the explosion sound

if(place_meeting(x,y,hexagonParentObject))
{
    instance_create(x,y,longFragmentObject);
    instance_create(x,y,longFragmentObject);
    instance_create(x,y,shortFragmentObject);
    instance_destroy();
    gameControllerObject.alarm[7] = room_speed*1.5
    global.playerLives--;
    audio_play_sound(shipExplosionSound, 10, false);
}

if(place_meeting(x,y,ufoObject))
{
    instance_create(x,y,longFragmentObject);
    instance_create(x,y,longFragmentObject);
    instance_create(x,y,shortFragmentObject);
    instance_destroy();
    gameControllerObject.alarm[7] = room_speed*1.5
    global.playerLives--;
    audio_play_sound(shipExplosionSound, 10, false);
}

if(place_meeting(x,y,enemyBulletObject))
{
    instance_create(x,y,longFragmentObject);
    instance_create(x,y,longFragmentObject);
    instance_create(x,y,shortFragmentObject);
    instance_destroy();
    gameControllerObject.alarm[7] = room_speed*1.5
    global.playerLives--;
    audio_play_sound(shipExplosionSound, 10, false);
}
