if instance_exists(ObjPlayer){
    if y < ObjPlayer.y{
        sprite_index = -1;
    }
    else{
        sprite_index = Sprites[Index];
    }
}

switch Index{
    case 1:
        repeat(abs(Velh)){
            var _SpriteSize = sprite_get_width(Sprites[Index])
            if x > room_width or x < 0{
                Velh *= -1;
            }
            x += sign(Velh);
            if instance_exists(Acai) Acai.x = x;
        }
        
        break;
    
    case 2:
            if Velv != 0{
                sprite_index = -1;
            }
            y += Velv;
        break;
}

var _CamY = camera_get_view_y(view_camera[0]);
if y > _CamY + room_height + 5{
    instance_create_layer(irandom_range(45, room_width - 45), ystart - 375, "Plataformas", ObjPlataforma);
    instance_destroy();
}