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

draw_sprite_ext(spr_BankMoney, image_index, 898, 57, 3, 3, image_angle, image_blend, image_alpha);
draw_text_transformed( 968, 63, global.bankCash, 2, 2, image_angle  );