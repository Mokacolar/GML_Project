//Get Player Input
keyUp = keyboard_check(ord("W"));
keyLeft = keyboard_check(ord("A"));
keyDown = keyboard_check(ord("S"));
keyRight = keyboard_check(ord("D"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = mouse_check_button(mb_left);
inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
mouseDirection = point_direction(x, y, mouse_x, mouse_y);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if(!global.gamePaused) script_execute(state);
