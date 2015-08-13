//Draw the HUD

draw_set_colour(c_white);

if(global.playerScore > global.topScore)
{
    global.topScore = global.playerScore;
}

draw_set_font(scoreFont);
draw_text(room_width * .8, room_height*.1, "Top: " + global.topScore);
draw_text(room_width * .8, room_height*.15, "Score: " + global.playerScore);
draw_text(room_width * .8, room_height*.2, "Level: " + global.level);
draw_text(room_width * .8, room_height*.25, "Lives: " + global.playerLives);
