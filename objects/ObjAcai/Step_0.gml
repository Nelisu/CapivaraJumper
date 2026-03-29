if place_meeting(x, y, ObjPlayer){
    switch (image_index){
        case 0:
            global.Acai += 1;
            break;
        
        case 1:
            global.Acai += 2;
            break;
        
        case 2:
            global.Acai += 3;
            break;
    }
    
    audio_play_sound(SndPickup, 1, false);
    instance_destroy();
}