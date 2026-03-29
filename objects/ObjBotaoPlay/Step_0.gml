if position_meeting(mouse_x, mouse_y, self){
    Xscale = lerp(Xscale, .95, .5);
    Yscale = Xscale;
    Cor = c_red;
    if mouse_check_button(mb_left){
        room_goto_next();
    }
}
else{
    Xscale = lerp(Xscale, 1, .5);
    Yscale = Xscale;
    Cor = c_black;
}