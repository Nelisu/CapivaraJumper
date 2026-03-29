Sprites = [SprPlat1, SprPlatMovel, SprPlatQueda];
Index = irandom(2);
Dir = choose(-1, 1);
Velh = 2 * Dir;
Velv = 0;
Acai = noone;

var _Chance = irandom(9);

if _Chance <= 3{
    Acai = instance_create_layer(x, y - 2, "Plataformas", ObjAcai);
}