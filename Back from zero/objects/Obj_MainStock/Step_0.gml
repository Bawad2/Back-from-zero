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

//go up if you touch the border
if place_meeting( x, y + sprite_height, obj_border) { sellValue += 10; }
else if place_meeting(x , y - sprite_height, obj_border ) { sellValue -= 10; }
else { sellValue += choose(-10, 10, 10);}
sellValue = floor(sellValue);

if oldValue <= sellValue 
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


//Buy and Sell
if global.triggerBuy
{
	if global.money >= sellValue * global.buyAmount
	{
		global.stocks += global.buyAmount;
		global.money -= sellValue * global.buyAmount;
		show_debug_message("brought")
	}
	show_debug_message("tried to buy")
	global.triggerBuy = 0;
}

if global.triggerSell
{
	if global.stocks >=  global.buyAmount
	{
		global.money += global.buyAmount* sellValue;
		global.stocks -= global.buyAmount;
	
	}


}


//Turn on the buy thingys
if room == rm_Main {  layer_set_visible("Controls", true)}
