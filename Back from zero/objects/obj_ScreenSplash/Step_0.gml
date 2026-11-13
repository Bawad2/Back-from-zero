frame ++;

layer_set_visible("MainMenu", false);

if frame >= lastFor { image_alpha -= fadeSpd; };
if image_alpha <= 0 {  layer_set_visible("MainMenu",true); instance_destroy(); }

