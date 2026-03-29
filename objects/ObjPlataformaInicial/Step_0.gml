var _CamY = camera_get_view_y(view_camera[0]);
if y > _CamY + room_height + 5{
    instance_create_layer(irandom_range(45, room_width - 45), ystart - 375, "Plataformas", ObjPlataforma);
    instance_destroy();
}