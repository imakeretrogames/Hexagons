//Determine the direction of the ship, based on where it's spawned.


if(x>room_width/2)
{
    direction = 180;
    speed = floor(random_range(2,7));
}
else{
direction = 0;
speed = floor(random_range(2,7));
}

//set the enemy shoot timer

alarm[10] = max(room_speed * ( 2.2 - ( global.level * .2 ) ), .2);