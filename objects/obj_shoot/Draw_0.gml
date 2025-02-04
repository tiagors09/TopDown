draw_self();

gpu_set_blendmode(bm_add);

draw_sprite_ext(
    spr_shoot_fx,
    0,
    x,
    y,
    image_xscale * 1.1,
    image_yscale * 1.1,
    image_angle,
    c_red,
    image_alpha * .7
);

gpu_set_blendmode(bm_normal);