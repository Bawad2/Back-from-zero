
if global.triggerBuy
{
		global.triggerbuy = 0
	if global.money >= sellValue * global.buyAmount 
	{
		global.money -= sellValue * global.buyAmount;
		global.stocks +=   global.buyAmount;	
	}

}

if global.triggerSell
{
		global.triggersell = 0;
	if global.stocks >= global.buyAmount
	{
		global.stocks -= global.buyAmount;
		global.money += sellValue * global.buyAmount;
	
	}
	
	

}