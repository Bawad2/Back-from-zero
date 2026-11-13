//Increase sell value
oldValue = sellValue

sellValue += random_range(-10, 10);

if oldValue > sellValue { sprite_index = spr_Uphill} else { sprite_index = spr_downHill;}