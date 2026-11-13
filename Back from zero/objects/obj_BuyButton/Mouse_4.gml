//Buy button
if !beingPressed {
	beingPressed = 1;
	with (Obj_MainStock) {
	if global.money * buyAmount >= sellValue 
	{
	global.stocks += buyAmount;
	global.money  -= sellValue * buyAmount;
	show_debug_message("BROUGHT");
	}
	else
	{
	show_debug_message("not enough cash")
	}
	}
}