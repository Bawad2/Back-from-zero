
var mb1 = mouse_check_button_released(mb_left);



switch (ID)
{
	case 0 :
		//Game start button
		
		if mb1 {room_goto(rm_Main)
		 layer_set_visible( "MainMenu", false);}
		
	break;
	
	case 1:
		//restart button
		if mb1 { layer_set_visible("GameOverScreen", false ); }
	
	
	break;
	
	case 2:
	if room == rm_MainMenu{layer_set_visible(self.layer, false)}
	if mb1
	{
	//Buy button
	with (Obj_MainStock) {
	if global.money * buyAmount >= sellValue 
	{
	global.stocks += buyAmount;
	global.money  -= sellValue * buyAmount;
	}
	}
	}
	
	break;
}