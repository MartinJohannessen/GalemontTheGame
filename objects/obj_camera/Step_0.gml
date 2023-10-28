cam = camera_create();

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(144, 256, 54, 10000);

camera_set_view_mat(cam, vm);
camera_set_proj_mat(cam, pm);

view_camera[0] = cam;

//Set variables to follow
follow = obj_player;
cx = global.px;
cy = global.py;

//Gradually approac player based on players position to my position
x += (cx - x)/15;
y += (cy - y)/15;

//Reset
cx = global.px;
cy = global.py;
	
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(cam, vm);

