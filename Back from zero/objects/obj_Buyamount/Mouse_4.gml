image_index ++; show_debug_message("tip dise fs")
if  image_index == 0 { Obj_MainStock.buyAmount = 1; };
if  image_index == 1 { Obj_MainStock.buyAmount = 5; };
if  image_index == 2 { Obj_MainStock.buyAmount = 10; };
if  image_index == 3 { Obj_MainStock.buyAmount = 100; };
if image_index >= 4 { image_index = 0;}