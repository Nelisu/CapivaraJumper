if room == RmLoja{
    if Skin == "Boto"{
        if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) and global.Acai >= Preco and !array_contains(global.OwnedSkins, Skins.Boto){
            global.OwnedSkins[array_length(global.OwnedSkins)] = Skins.Boto;
            global.Acai -= Preco;
        }
    }
    else{
        if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) and global.Acai >= Preco and !array_contains(global.OwnedSkins, Skins.Tamandua){
            global.OwnedSkins[array_length(global.OwnedSkins)] = Skins.Tamandua;
            global.Acai -= Preco;
        }
    }
    
    if global.Acai < Preco{
        Cor = c_red;
    }
    else{
        Cor = c_black;
    }
}
else{
    if Skin == "Boto"{
        if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) and array_contains(global.OwnedSkins, Skins.Boto){
            global.Skin = Skins.Boto;
        }
    }
    else if Skin == "Tamandua"{
        if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) and array_contains(global.OwnedSkins, Skins.Tamandua){
            global.Skin = Skins.Tamandua;
        }
    }
    else{
        if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left){
            global.Skin = Skins.Capivara;
        }
    }
    
}

//DEBUG
//if mouse_check_button(mb_left){
    //global.Acai += 10;
//}
//if mouse_check_button_pressed(mb_right){
    //show_message(global.OwnedSkins);
//}