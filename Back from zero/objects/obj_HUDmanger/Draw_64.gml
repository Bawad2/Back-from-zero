draw_set_font(Fnt_Pixel);

//how many stocks I got
draw_text_transformed( 828, 27, global.stocks, 2, 2, image_angle  )

//Stock Prices
if instance_exists(Obj_MainStock)
{
draw_text_transformed( 828, 57, Obj_MainStock.sellValue, 2, 2, image_angle  );
}

//Draw Money stuff
draw_text_transformed( 858, 27, global.money, 2, 2, image_angle  );
draw_text_transformed( 858, 57, global.bankCash, 2, 2, image_angle  );