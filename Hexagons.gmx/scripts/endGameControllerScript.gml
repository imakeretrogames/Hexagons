//If the player hits any button, reset the game.

if(keyboard_check_pressed(vk_anykey))
{
    global.level = 1;
    global.playerLives = 3;
    global.playerScore = 0;

    room_goto(gameRoom);
}
