//Prevents player from going out of the room
var _half_width = sprite_get_width(sprite_index) / 2; //HALF OF THE SPRITE
var _half_height = sprite_get_height(sprite_index) / 2;
var _momentum_loss = 0.5;

if (x < _half_width || x > room_width - _half_width){
	x = xprevious;
	hspeed = -hspeed * _momentum_loss;
}

if(y < _half_height || y > room_height - _half_height){
	y = yprevious;
	vspeed = -vspeed * _momentum_loss;
}