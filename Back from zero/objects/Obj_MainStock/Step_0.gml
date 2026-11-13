//create trails
if trail {  sprite_index = sprite_of_trail; exit; }

frame ++

//once every second

if frame >= second 
{
	//frame back to zero
	frame = 0;
	
//Increase sell value
oldValue = sellValue

sellValue += random_range(-10, 10);

if oldValue >= sellValue 
{ //Understand that value is more then before
	
	sprite_index = spr_Uphill;
	//Change the position of the object
	x += sprite_width;
	y -= sprite_height - 3;
	
} else 
{ 

	sprite_index = spr_downHill;
	//Change the position of the object
	x += sprite_width;
	y += sprite_height - 3;
	
}
//Create a trail
var trailObj = instance_create_layer( x, y,self.layer, Obj_MainStock )
with trailObj { trail = true; sprite_of_trail = other.sprite_index; }
}

//Buying

if global.money * buyAmount >= sellValue 
{
	global.stocks += buyAmount;
	global.money  -= sellValue * buyAmount;
}