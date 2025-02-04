repeat (chunks) {
    instance_create_layer(
        x,
        y,
        "Chunks",
        obj_enemy_chunk
    );
}

instance_create_layer(
    x,
    y,
    "Trail",
    obj_trail
);

if (instance_exists(obj_enemy_spawner)) 
    obj_enemy_spawner.enemy_instances--;

if (instance_exists(obj_screen_shake))
    if (not obj_screen_shake.shake < shake_death)
        obj_screen_shake.shake = shake_death;