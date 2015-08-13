//If all the hexagons are destroyed, increase the level and restart
//the room

if(asteroidCount == 0)
{
    global.level++;
    room_restart();
}

//Determine how ofter UFOs should spawn, based on level.

levelOffset = 50 * global.level;
if(levelOffset > 1000)
{
    levelOffset = 1000;
}

if(irandom(1050 - levelOffset) == 0)
{
    spawnSide = choose(0,1);
    if(spawnSide == 0)
    {
        instance_create(-ufoSprite.sprite_width,floor(random_range(room_height * .1, room_height * .9)), ufoObject)
    }
    else
    {
        instance_create(room_width+ufoSprite.sprite_width,floor(random_range(room_height * .1, room_height * .9)), ufoObject)
    }
}

//If the player is out of lives, go to the gameover room.

if(global.playerLives == 0)
{
    room_goto(gameOverRoom);
}