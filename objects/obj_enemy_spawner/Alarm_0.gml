repeat(MAX_ENEMY_INSTANCES) {
    var _xx =   random_range(
        sprite_get_width(spr_enemy_2) / 2, 
        room_width - (sprite_get_width(spr_enemy_2) / 2)
    );
            
    var _yy =   random_range(
        sprite_get_height(spr_enemy_2) / 2, 
        room_height - (sprite_get_height(spr_enemy_2) / 2)
    );
            
    if (instance_exists(obj_player)) {
        var _distance_to_player = point_distance(
            _xx, _yy,
            obj_player.x, obj_player.y
        );
                
        if (_distance_to_player > MIN_DISTANCE) {
            instance_create_layer( 
                _xx,
                _yy,
                "Instances",
                obj_enemy_2
            );  
            
            enemy_instances++;
            
            if (enemy_instances >= MAX_ENEMY_INSTANCES)
                verify_enemies = true;
        }
    }
}