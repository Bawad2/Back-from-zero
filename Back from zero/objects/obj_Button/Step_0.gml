
var mb1 = mouse_check_button_released(mb_left);


switch ( ID )
{
	case 0:
		//Game start button
		
		if mb1 {room_goto(rm_Main); layer_set_visible( "MainMenu", false);}
		
	break;
	
	case 1:
	//restart button
		if mb1 { layer_set_visible("GameOverScreen", false ); }
	break;
	case 2:
	
	//buy button
	if mb1

	//Buy button

	break;
	
	case 3:
	//sell  button
	if mb1
	{
	
	with (Obj_MainStock) {
	if global.stocks  >= buyAmount 
	{
	global.stocks -= buyAmount;
	global.money  += sellValue * buyAmount;
	show_debug_message("Sold");
	}
	}
	show_debug_message("no stocks");
	}
	
	break;
	
}



if ID == 3
{
	
}
