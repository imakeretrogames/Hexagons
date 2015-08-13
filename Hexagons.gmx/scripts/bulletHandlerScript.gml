//if the bullet hits a hexagon, play a sound, decrement the asteroid count
//enable the ship to fire again immediately, update the score

if(place_meeting(x,y,bigHexagonObject))
{
    instance_destroy();
    with(instance_nearest(x,y,bigHexagonObject))
    {
        instance_destroy();
        global.playerScore += 50*global.level;
        instance_create(x,y,mediumHexagonObject);
        instance_create(x,y,mediumHexagonObject);
        global.asteroidCount--;
        shipObject.alarm[1]=1;
        audio_play_sound(hexagonExplosionSound, 10, false);
    }
}

if(place_meeting(x,y,mediumHexagonObject))
{
    instance_destroy();
    with(instance_nearest(x,y,mediumHexagonObject))
    {
        instance_destroy();
        global.playerScore += 100*global.level;
        instance_create(x,y,smallHexagonObject);
        instance_create(x,y,smallHexagonObject);
        global.asteroidCount--;
        shipObject.alarm[1]=1;
        audio_play_sound(hexagonExplosionSound, 10, false);
    }
}

if(place_meeting(x,y,smallHexagonObject))
{
    instance_destroy();
    with(instance_nearest(x,y,smallHexagonObject))
    {
        instance_destroy();
        global.playerScore += 250*global.level;
        global.asteroidCount--;
        shipObject.alarm[1]=1;
        audio_play_sound(hexagonExplosionSound, 10, false);
    }
}


//if the bullet hits a ship, destroy it, enable firing again, play the 
//right sound and update the score.

if(place_meeting(x,y,ufoObject))
{
    instance_destroy();
    with(instance_nearest(x,y,ufoObject))
    {
        instance_destroy();
        global.playerScore += 500*global.level;
        //global.asteroidCount--;
        shipObject.alarm[1]=1;
        audio_play_sound(enemyShipExplosionSound, 10, false);
    }
}
