enum CAMERA_RES {

WIDTH = 512,
HEIGHT = 256,
SCALE = 4

}

window_set_fullscreen(true)





var base_w = 1366;
var base_h = 768;
var aspect = base_w / base_h ; // get the GAME aspect ratio
if (display_get_width() < display_get_height())
    {
    //portrait
    var ww = min(base_w, display_get_width());
    var hh = ww / aspect;
    }
else
    {
    //landscape
    var hh = min(base_h, display_get_height());
    var ww = hh * aspect;
    }
surface_resize(application_surface, ww, hh);

window_set_size(display_get_width(), display_get_height())

defaultCamera = camera_create_view(0,0, CAMERA_RES.WIDTH, CAMERA_RES.HEIGHT, 0, o_player, -1, -1, CAMERA_RES.WIDTH/2, CAMERA_RES.HEIGHT/2)
var _camera = defaultCamera


view_enabled = true;
view_visible[0] = true;


view_set_camera(0, _camera)