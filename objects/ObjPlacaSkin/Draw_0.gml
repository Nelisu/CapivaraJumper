if room == RmLoja{
    draw_self();
    draw_set_colour(Cor);
    var _DrawY = y + sprite_height/2 + sprite_get_height(SprBoto)/2;
    var _DrawX = x + sprite_height/2;
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(FntArialBlack);
    if Skin == "Boto"{
        draw_sprite(SprBoto, 0, _DrawX, _DrawY);
        if !array_contains(global.OwnedSkins, Skins.Boto){
            draw_text_ext_transformed(_DrawX, _DrawY, Preco, 0, 100, .2, .2, 0);
        }
        else{
           draw_sprite(SprCheckmark, 0, _DrawX, _DrawY)
        }
    }
    else{
        draw_sprite(SprTamandua, 0, _DrawX + 8, _DrawY);
        if !array_contains(global.OwnedSkins, Skins.Tamandua){
            draw_text_ext_transformed(_DrawX + 8, _DrawY, Preco, 0, 100, .2, .2, 0);
        }
        else{
           draw_sprite(SprCheckmark, 0, _DrawX + 8, _DrawY);
        }
    }
    draw_set_font(-1);
    draw_set_halign(-1);
    draw_set_valign(-1);
    draw_set_colour(-1);
}
else{
    draw_self();
    draw_set_colour(Cor);
    var _DrawY = y + sprite_height/2 + sprite_get_height(SprBoto)/2;
    var _DrawX = x + sprite_height/2;
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(FntArialBlack);
    if Skin == "Boto"{
        if array_contains(global.OwnedSkins, Skins.Boto){
            draw_sprite(SprBoto, 0, _DrawX, _DrawY);
        }
        if global.Skin == Skins.Boto{
            draw_sprite(SprCheckmark, 0, _DrawX, _DrawY);
        }
    }
    else if Skin == "Tamandua"{
        if array_contains(global.OwnedSkins, Skins.Tamandua){
            draw_sprite(SprTamandua, 0, _DrawX + 8, _DrawY);
        }
        if global.Skin == Skins.Tamandua{
            draw_sprite(SprCheckmark, 0, _DrawX + 8, _DrawY);
        }
    }
    else{
        if array_contains(global.OwnedSkins, Skins.Capivara){
            draw_sprite(SprCapivara, 0, _DrawX + 8, _DrawY);
        }
        if global.Skin == Skins.Capivara{
            draw_sprite(SprCheckmark, 0, _DrawX + 8, _DrawY);
        }
    }
    draw_set_font(-1);
    draw_set_halign(-1);
    draw_set_valign(-1);
    draw_set_colour(-1);
}
