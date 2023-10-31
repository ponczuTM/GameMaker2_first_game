draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
var outline_color = c_black; // Black outline color
var text_color = c_white; // Text color

for (var i = 0; i < menu_items; i++) {
    var offset = 2;
    var txt = menu[i];
    if (menu_cursor == i) {
        txt = string_insert("> ", txt, 0);
    }
    var xx = menu_x;
    var yy = menu_y - (menu_itemheight * (i * 1.5));

    // Draw black outline
    draw_set_color(outline_color);
    draw_text(xx - offset, yy, txt);
    draw_text(xx + offset, yy, txt);
    draw_text(xx, yy + offset, txt);
    draw_text(xx, yy - offset, txt);

    // Draw the white text over the black outline
    draw_set_color(text_color);
    draw_text(xx, yy, txt);
}
