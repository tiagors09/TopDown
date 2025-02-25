if (not instance_exists(obj_game_controller))
    instance_create_layer(
        0, 0,
        "Instances",
        obj_game_controller
    );

room_width = random_range(1280, 3800);
room_height = random_range(720, 2600);

var background_layer = layer_background_get_id(
    layer_get_id("Background")
);

var selected_background = choose(
    spr_bg,
    spr_bg2,
    spr_bg3,
);

layer_background_sprite(background_layer, selected_background);