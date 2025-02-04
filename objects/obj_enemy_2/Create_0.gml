event_inherited();

MIN_DELAY_LAY_EGG = 3;
MAX_DELAY_LAY_EGG = 8;

life_points = 3;
min_speed = .5;
shake_death = 50;
max_speed = 1;

var _delay_to_lay_egg = irandom_range(
    MIN_DELAY_LAY_EGG, MAX_DELAY_LAY_EGG
);

alarm[1] = game_get_speed(gamespeed_fps) * ( _delay_to_lay_egg - (_delay_to_lay_egg * (global.level / 100)));

follow_player = function () {
    if (instance_exists(obj_player)) { 
        var _direction_to_player = point_direction(
            x, y,
            obj_player.x, obj_player.y
        ); 
        
        image_angle = _direction_to_player;
    }
}

lay_egg = function () {
    instance_create_layer(
        x,
        y,
        "Eggs",
        obj_enemy_egg
    );
}