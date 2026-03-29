if position_meeting(mouse_x, mouse_y, self){
    image_yscale = lerp(image_yscale, 1.8, .2);
    image_xscale = image_yscale;
    
    if mouse_check_button_pressed(mb_left){
        room_goto(Room);
    }
}
else{
    image_yscale = lerp(image_yscale, 1.3, .2);
    image_xscale = image_yscale;
}