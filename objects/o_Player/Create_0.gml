state = PlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.5;
distanceRoll = 52;

spriteRoll = sPlayer_roll;
spriteRun = sPlayer_run;
spriteIdle = sPlayer_idle;
localFrame = 0;

