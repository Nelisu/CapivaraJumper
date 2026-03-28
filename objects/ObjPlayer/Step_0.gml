var _CamY = camera_get_view_y(view_camera[0]);
//x = mouse_x;
y += (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * 3;
if y < _CamY + room_height/2{
  camera_set_view_pos(view_camera[0], 0, y - room_height/2);
}
