draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (instance_exists(obj_player)) {
    draw_text(
        100, 
        50,
        "Life: " + string(global.player_life)
    );    
}


draw_text(
    view_wport[0] - 100, 
    50,
    "Level " + string(global.level)
);    

if (
    instance_exists(obj_player)
    and instance_exists(obj_enemy)
) {
    with (obj_player) {
        var _nearest_enemy = instance_nearest(
            x, y, 
            obj_enemy
        );
        
        var _enemy_direction = point_direction(
            x, y, 
            _nearest_enemy.x, _nearest_enemy.y
        );
        
        draw_sprite_ext(
                spr_arrow,
                0,
                view_wport[0]/2,
                50,
                1,
                1,
                _enemy_direction,
                c_white,
                1
            );
    }
}