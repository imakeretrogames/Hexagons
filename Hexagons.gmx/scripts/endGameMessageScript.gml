//Display the gameover message

draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_font(scoreFont);
draw_text(room_width / 2, room_height * .3, "Game Over");
draw_set_font(smallerFont);
draw_text(room_width / 2, room_height * .7, "Press Any Key to Continue");
