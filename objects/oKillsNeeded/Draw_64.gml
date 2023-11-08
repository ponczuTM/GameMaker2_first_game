var control_text = "pozostale androidy: ";
var control_text2 = string(global.kills);
var control_x = display_get_width()/5;
var control_y = 20;
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(control_x, control_y, control_text);
draw_text(control_x+380, control_y, control_text2);