draw_set_color(c_yellow);
draw_text(0, 0, "Score: " + string(global.Pontos));
draw_text(0, string_height("T"), "Highscore: " + string(global.Highscore));
var _String = "Acai: " + string(global.Acai);
var _GuiW = display_get_gui_width();
draw_text(_GuiW - string_width(_String), 0, _String);
draw_set_color(-1);
