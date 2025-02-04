if (not instance_exists(obj_enemy_spawner))
    instance_create_layer(
        0, 0,
        "Instances",
        obj_enemy_spawner
    );

if (not instance_exists(obj_draw_gui))
    instance_create_layer(
        0, 0,
        "Instances",
        obj_draw_gui
    );

if (not instance_exists(obj_screen_shake))
    instance_create_layer(
        0, 0,
        "Instances",
        obj_screen_shake
    );

if (not instance_exists(obj_player)) {
    var _player = instance_create_layer(
        0, 0,
        "Instances",
        obj_player
    );
    
    _player.x = random_range(
        0, room_width - (sprite_get_width(spr_player) / 2)
    );
    _player.y = random_range(
        0, room_height - (sprite_get_height(spr_player) / 2)
    );
}
    