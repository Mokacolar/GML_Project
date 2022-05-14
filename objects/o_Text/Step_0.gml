/// @description Insert description here
// You can write your code in this editor

lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1,x1_Target,lerpProgress);
x2 = lerp(x2,x2_Target,lerpProgress);

if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(text_Message);
	if(textProgress >= _messageLength)
	{
		instance_destroy();
		if(instance_exists(o_TextQueued)){
			with (o_TextQueued) ticket--;	
		}
		else{
			with(o_Player) state = lastState;
		}
	}
	else
	{
		if (textProgress > 2)
		{
			textProgress = _messageLength;
		}
	}
}
