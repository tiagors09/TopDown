MIN_DISTANCE = 200;
life_points = 1;
following_player = false;
min_speed = 1;
max_speed = 4;
chunks = random_range(4, 8);
shake_death = 20;
damage = 1;
auto_destroy_damage = 0;

alarm[0] = game_get_speed(gamespeed_fps) * 1.2;

randomize();
speed = random_range(
    min_speed, 
    max_speed
);

apply_damage = function () {
    var _player = instance_place(x, y, obj_player);
    
    if (_player) {
        _player.suffer_damage(damage);
        suffers_damage(auto_destroy_damage);
    }
}

choose_random_direction = function () {
    if (
        x <= sprite_width / 2 or 
        x >= room_width - (sprite_width / 2) or 
        y <= sprite_height / 2 or 
        y >= room_height - (sprite_height / 2)
    ) {
        randomize();
        var _new_dir = random_range(0, 360);
            
        direction = _new_dir;
        image_angle = _new_dir;
    }
}

check_player_distance = function () {
    if (
        instance_exists(obj_player)
    ) {
        var _player_distance = point_distance(
            x, y, 
            obj_player.x, obj_player.y
        );
        
        if (_player_distance <= MIN_DISTANCE)
            following_player = true;
        else following_player = false;
    }
}

follow_player = function () {
    if (
        instance_exists(obj_player)
    ) {
        var _direction_to_player = point_direction(
            x, y,
            obj_player.x, obj_player.y
        );
            
        direction = _direction_to_player;
        image_angle = _direction_to_player;
    }
}

suffers_damage = function (damage) {
    life_points -= damage;
    
    if (life_points <= 0)
        instance_destroy(id, true);
}

randomize();
choose_random_direction();