life = 10;
velocity = 5;
shoot_delay = 0.2;
can_shoot = false;

invicible = false;

alarm[0] = game_get_speed(gamespeed_fps) * shoot_delay;
invicible_timer = game_get_speed(gamespeed_fps) * 3;
invicible_rate = 0.5;

left = 0; 
right = 0; 
up = 0; 
down = 0; 
shoot = 0;
dir = [0, 0];
is_moving = 0;
look_at_dir = 0;
shake_collision = 15;

alpha_value = 0.5;

moving = function () {
    left = keyboard_check(ord("A"));
    right = keyboard_check(ord("D"));
    up = keyboard_check(ord("W"));
    down = keyboard_check(ord("S"));
    
    // Checking if is moving
    is_moving = left or right or up or down;
    
    dir = [
        right - left,  
        down - up
    ];
    
    var _magnitude = sqrt(
        (dir[0] * dir[0]) + (dir[1] * dir[1])
    );
    
    if (_magnitude > 0) {
        dir[0] /= _magnitude;
        dir[1] /= _magnitude;
    }
       
    x += dir[0] * velocity;
    y += dir[1] * velocity;
}

shooting = function () {
    // Checking if mouse button left is pressed
    shoot = mouse_check_button_pressed(mb_left);
    
    // If mb_left is pressed then, shoot and set timer
    if (shoot and can_shoot) {
        sprite_index = spr_player_shoot;
        velocity = 0;
        
        var _shoot_instance = instance_create_layer(
            x,
            y,
            "Shoots",
            obj_shoot
        );
        
        _shoot_instance.direction = look_at_dir;
        
        can_shoot = false;
        alarm[0] = game_get_speed(gamespeed_fps) * shoot_delay;
    }
}

looking = function () {
    #region Looking at mouse
    look_at_dir = point_direction(
        x, y,
        mouse_x, mouse_y
    );
    
    image_angle = look_at_dir;
    #endregion
    
    // If is moving then, animate sprite, else, stop animation
    image_speed = is_moving;
}

check_border = function () {
    if (x <= sprite_width / 2)
        x = sprite_width / 2;
    
    if (x >= room_width - (sprite_width / 2))
        x = room_width - (sprite_width / 2);
    
    if (y <= sprite_height / 2)
            y = sprite_height / 2;
        
        if (y >= room_height - (sprite_height / 2))
            y = room_height - (sprite_height / 2);
}

shake_camera = function () {
    if (place_meeting(x, y, obj_enemy))
        if (instance_exists(obj_screen_shake))
            obj_screen_shake.shake = shake_collision;
}

suffer_damage = function (_damage) {
    if (not invicible) {
        shake_camera();
        life -= _damage;
        invicible = true;
        image_alpha = alpha_value;
        invicible_timer = game_get_speed(gamespeed_fps) * 3;
    }
    
    if (life <= 0)
        instance_destroy(id);
}

check_invincibility = function () {
    invicible_timer--;
    
    if (invicible) image_alpha *= -1;
    
    if (invicible_timer <= -1) {
        invicible = false;
        image_alpha = 1;
    }
}