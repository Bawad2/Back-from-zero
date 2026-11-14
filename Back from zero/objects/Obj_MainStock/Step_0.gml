//create trails
if trail {  sprite_index = sprite_of_trail; exit; }
if place_meeting( x + sprite_width, y, obj_border)
{	with(all){ if  Obj_MainStock { if Obj_MainStock.trail{ instance_destroy();}} } x = 0 ; y = 164	}
frame ++;

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


//debug

show_debug_message(global.stocks);
show_debug_message( "triggersell :" +  string(global.triggerSell) )
show_debug_message(  "triggerbuy :" + string(global.triggerBuy) )




//Turn on the buy thingys
if room == rm_Main {  layer_set_visible("Controls", true)}
