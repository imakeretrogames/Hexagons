//Send the hexagon off in a random direction, 
//at a random speed, rotating randomly

direction = random_range(0,360);
speed = random_range(2,6);
image_angle = direction;
move_wrap(true, true, 0)
rotationalSpeed = random_range(-5,5);