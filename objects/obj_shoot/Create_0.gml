speed = 10;
image_xscale = 4;
image_yscale = 4;
damage = 1;
destroy_timer = game_get_speed(gamespeed_fps) * 6;

apply_damage = function () {
    var _collision = instance_place(
        x, y,
        obj_enemy
    );
    
    if (_collision) {
        _collision.suffers_damage(damage);
        
        instance_destroy(id);
    }
}