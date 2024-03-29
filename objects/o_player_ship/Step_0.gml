//SET THE SHIP ANGLE
var _mouse_direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = _mouse_direction;

var _thrust = mouse_check_button(mb_right);

if(_thrust){
		motion_add(image_angle,acceleration);
		if(speed > max_speed){
			speed = max_speed;	
		}
		image_index  = 1;
		
		repeat (2){
			var _offset = random_range(-4,4);
			var _length = -14;
			var _x = x + lengthdir_x(_length,image_angle) + _offset;
			var _y = y + lengthdir_y(_length,image_angle) + _offset;
			instance_create_layer(_x,_y, "Effects", o_explosion_particle);
		}
} else{
	friction = friction_amount;	
	image_index = 0;
}

//Fire lasers
var _fire_laser = mouse_check_button_pressed(mb_left);
if(_fire_laser){
	fire_lasers();	
}
