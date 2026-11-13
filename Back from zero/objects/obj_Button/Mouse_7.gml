//Do what buttons do

switch(ButtonID) 
{
	case 0 :
	room_goto(rm_Main);
	layer_set_visible("MainMenu", false )
	break;
	
	case 2:
	
	//buy button
	//Buy button
	with (Obj_MainStock) {
	if global.money * buyAmount >= sellValue 
	{
	global.stocks += buyAmount;
	global.money  -= sellValue * buyAmount;
	show_debug_message("BROUGHT");
	}
	}
	show_debug_message("not enough cash")

	break;
	
	case 3:
	//sell  button


	with (Obj_MainStock) {
	if global.stocks  >= buyAmount 
	{
	global.stocks -= buyAmount;
	global.money  += sellValue * buyAmount;
	show_debug_message("SOLD");
	}
	}
	break;
	
	//Quit button
	case 4:
	var myLayer = self.layer;
	
	layer_set_visible(myLayer, false);
	
	break;
	
	//Upgrade Button(Bullet speed)
	case 5:
	if global.money >= 10 
	{   
		global.money -= 10;
		if global.ReloadSpd >=3
		{
		global.ReloadSpd -= 3;
		}
	}
	break;
	//Upgrade Button( Bullet Dmg)
	case 6:
	if global.money >= 10 
	{   
		global.money -= 10;
		global.DMG += 3;
		
	}
	break;
	//Upgrade Button(Health)
	case 7:
	if global.money >= 10 
	{   
		global.money -= 10;
		global.RHealth += 5;
		
	}
	break;
	
	
	
}