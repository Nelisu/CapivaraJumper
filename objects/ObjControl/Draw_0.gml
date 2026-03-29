if room == RmHighscore{
    //draw_sprite_ext(sprite_index, 0, x, y, Xscale, Yscale, 0, c_white, 1);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(FntArialBlack);
    draw_set_color(Cor);
    var _Texto = "RECORDE \n" + string(global.Highscore);
    draw_text_ext_transformed(87, 90, _Texto, string_height("T"), 2000, Xscale/2.5, Yscale/2.5, 0);
    draw_set_color(-1);
    draw_set_font(-1);
    draw_set_halign(-1);
    draw_set_valign(-1);
}
if room == RmLoja{
    //draw_sprite_ext(sprite_index, 0, x, y, Xscale, Yscale, 0, c_white, 1);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(FntArialBlack);
    draw_set_color(Cor);
    var _Texto = "Acai \n" + string(global.Acai);
    draw_text_ext_transformed(87, 60, _Texto, string_height("T"), 2000, Xscale/3, Yscale/3, 0);
    draw_set_color(-1);
    draw_set_font(-1);
    draw_set_halign(-1);
    draw_set_valign(-1);
}