
var mb1 = mouse_check_button_released(mb_left);



switch (Button_ID)
{
	case 0 :
		//Game start button
		
		if mb1 {room_goto_next();
		 layer_set_visible( self.layer, false);}
		
	break;
	
	case 1:
		//restart button
		if mb1 { layer_set_visible("GameOverScreen", false ); }
	
	
	break;
	
}