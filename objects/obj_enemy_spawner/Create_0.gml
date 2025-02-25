MAX_ENEMY_INSTANCES = 3 * global.level;
MIN_DISTANCE = 100;
enemy_instances = 0;
verify_enemies = false;

alarm[0] = game_get_speed(gamespeed_fps) * 5;