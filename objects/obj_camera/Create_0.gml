//Create the camera
cam = camera_create();

//Umm, I'd rather not explain this one ..
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(144, 256, 54, 10000);

camera_set_view_mat(cam, vm);
camera_set_proj_mat(cam, pm);

view_camera[0] = cam;

if !instance_exists(obj_player)
	{
	follow = obj_player;
	cx = global.px;
	cy = global.py;
	}