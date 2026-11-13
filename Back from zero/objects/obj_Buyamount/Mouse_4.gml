image_index ++;
if  image_index == 0 or global.buyAmount == 100 {global.buyAmount = 1; };
if  image_index == 1 { global.buyAmount = 5; };
if  image_index == 2 { global.buyAmount = 10; };
if  image_index == 3 { global.buyAmount = 100; };


show_debug_message(global.buyAmount)