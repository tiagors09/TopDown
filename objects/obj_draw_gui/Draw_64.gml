draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (instance_exists(obj_player)) {
    draw_text(
        view_wport[0]/12, 
        50,
        "Life: " + string(global.player_life)
    );    
}


draw_text(
    view_wport[0]/2, 
    50,
    "Level " + string(global.level)
);    