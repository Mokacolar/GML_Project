randomize();

global.gamePaused = false;
global.textSpeed = 0.75;
global.iCamera = instance_create_layer(0,0,layer,o_Camera);

//surface_resize(application_surface, resol w, resol h);
surface_resize(application_surface, 640, 360);
room_goto(r_Village); //#macro ROOM_START has error

