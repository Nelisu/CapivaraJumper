var _Left, _Right;
_Left = keyboard_check(ord("A"));
_Right = keyboard_check(ord("D"));

Velh = (_Right - _Left) * Speed;
Velv += Grav;
Velv = clamp(Velv, -8, 8);

//if place_meeting(x, y + Velv, ObjPlataforma){
    //Velv = -8;
//}
if Velh != 0{
    image_xscale = sign(Velh);
}

x += Velh;

repeat(abs(Velv)){
    var _Plat = instance_place(x, y + sign(Velv), ObjPlataforma);
    if _Plat and Velv > 0{
        if _Plat.Index == 2{
            _Plat.Velv = 2;
        }
        Velv = -8;
        var _EfeitoPulo = instance_create_layer(x, y, layer, ObjEfeito);
        _EfeitoPulo.sprite_index = Efeitos[global.Skin];
        _EfeitoPulo.image_xscale = -image_xscale;
        var _Som = audio_play_sound(SndJump, 1, false);
        var _Pitch = random_range(.6, 1);
        audio_sound_pitch(_Som, _Pitch);
    }
    else{
        y += sign(Velv);
    }
}

var _CamY = camera_get_view_y(view_camera[0]);
//x = mouse_x;
//y += (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * 3;
if y < _CamY + room_height/2{
  camera_set_view_pos(view_camera[0], 0, y - room_height/2);
}

if global.Pontos > global.Highscore{
        global.Highscore = global.Pontos;
}

if y > _CamY + 20 + room_height + sprite_height{
    room_goto(RmMenu);
}

var _Pontos = point_distance(x, y, x, ystart)/4;
if _Pontos > global.Pontos and y < ystart{
    global.Pontos = floor(_Pontos);
}

//DEBUG
//if mouse_check_button(mb_left){
    //global.Acai += 100;
//}