randomize();

check_player_distance();

if (following_player) follow_player();
else choose_random_direction();
    
apply_damage();