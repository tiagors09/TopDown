if (enemy_instances < MAX_ENEMY_INSTANCES) {
    var _xx =   random_range(
        sprite_get_width(spr_enemy_2) / 2, 
        room_width - (sprite_get_width(spr_enemy_2) / 2)
    );
    
    var _yy =   random_range(
        sprite_get_height(spr_enemy_2) / 2, 
        room_height - (sprite_get_height(spr_enemy_2) / 2)
    );
    
    instance_create_layer( 
        _xx,
        _yy,
        "Instances",
        obj_enemy_2
    );
    
    enemy_instances++;
    
    alarm[0] = game_get_speed(gamespeed_fps) * 2; 
}