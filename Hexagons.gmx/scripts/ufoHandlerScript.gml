//If there is a ship on the board, shoot at it.

if(object_exists(shipParentObject))
{
    instance_create(x,y,enemyBulletObject);
    with(instance_place(x,y,enemyBulletObject))
    {
    move_towards_point(shipParentObject.x, shipParentObject.y, 6);
    }
}
audio_play_sound(enemyBulletSound, 10, false);
alarm[10] = max(room_speed * ( 2.2 - ( global.level * .2 ) ), .2);