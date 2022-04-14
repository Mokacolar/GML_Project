
//// @fucntion			PlayerAnimateSprite();
function PlayerAnimateSprite(){
	var _totalFrames = sprite_get_number(sprite_index) / 4;
	image_index = localFrame + _totalFrames * CARDINAL_DIR ;
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE; //frame

	// If animation would loop on next game step
	if (localFrame >= _totalFrames) {
		animationEnd = true;
		localFrame -= _totalFrames;
	}
	else animationEnd = false;
}