//Spawn an invincible ship. Determing how many hexagons to make

instance_create(room_width/2, room_height/2, invincibleShipObject);
globalvar asteroidCount;
asteroidCount = global.level * 7;

//Spawn Asteroids
for(i = 0; i < global.level; i++)
{
    asteroidX = random_range(0,room_width);
    asteroidY = random_range(0,room_height);
    
    instance_create(asteroidX, asteroidY, bigHexagonObject);

}