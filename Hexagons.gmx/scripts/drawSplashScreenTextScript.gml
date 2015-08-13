//Draw the splash screen text.

draw_set_colour(c_white);
draw_set_halign(fa_center);



draw_set_font(scoreFont);
draw_text(room_width / 2, room_height * .3, "Hexagons");
draw_set_font(smallerFont);
draw_text(room_width / 2, room_height * .7, "Arrows to move. Space to fire. Hit any key to start.");
