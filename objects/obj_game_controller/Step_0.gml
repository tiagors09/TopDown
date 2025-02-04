if (obj_enemy_spawner.verify_enemies and instance_number(obj_enemy) <= 0) {
    global.level++;
    room_restart();
}