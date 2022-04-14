/// @desc ScreenShake(magnitude, frames)
/// @arg Maginude sets the strength of the shake (distance range)
/// @arg Frames sets the length of the shake in frames (60 = 1 second)
function Screenshake(magnitude, frames){
	with (global.iCamera) {
		if (magnitude > shakeRemain){
				shakeMagniude = magnitude;
				shakeRemain = shakeMagniude;
				shakeLength = frames;
		}
	}
}