/*
	Image alpha of 1 is 100% visible
	Image alpha of 0 is 100% invisible
*/

//Fade of the particle
if(image_alpha > 0){
	image_alpha -= fade_speed;
} else{
	instance_destroy();
}
