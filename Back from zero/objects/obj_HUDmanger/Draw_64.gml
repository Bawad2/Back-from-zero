draw_set_font(Fnt_Pixel);
draw_set_halign(textalign_right);

if room == rm_Main
{
//how many stocks I got
draw_text_transformed( 828, 27, global.stocks, 2, 2, image_angle  );
//Stock Prices
if instance_exists(Obj_MainStock)
{
draw_text_transformed( 828, 57, Obj_MainStock.sellValue, 2, 2, image_angle  );
}

//Draw Money stuff
draw_sprite_ext(spr_Cash, image_index, 898, 27, 3, 3, image_angle, image_blend, image_alpha);
draw_text_transformed( 988, 37, global.money, 1.5, 1.5, image_angle  );

draw_sprite_ext(spr_Bank, image_index, 898, 87, 3, 3, image_angle, image_blend, image_alpha);
draw_text_transformed( 968, 103, global.bankCash, 1.5, 1.5, image_angle  );
}