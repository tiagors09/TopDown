if (
    instance_exists(obj_enemy_spawner)
) {
    if (
        obj_enemy_spawner.verify_enemies 
        and instance_number(obj_enemy) <= 0
    ) {
        global.level++;
        room_restart();
    }
}

if (global.player_life <= 0) {
    global.level = 1;
    room_restart();
}