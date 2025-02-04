if (image_index >= image_number - 1) {
    instance_change(
        obj_enemy_1,
        false
    );
    event_perform(ev_create, 0);
}