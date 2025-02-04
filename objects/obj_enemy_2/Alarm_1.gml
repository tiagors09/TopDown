lay_egg();

var _delay_to_lay_egg = irandom_range(
    MIN_DELAY_LAY_EGG, MAX_DELAY_LAY_EGG
);

alarm[1] = game_get_speed(gamespeed_fps) * ( _delay_to_lay_egg - (_delay_to_lay_egg * (global.level / 100)));