image_xscale = lerp(4, 1, .7);
image_yscale = lerp(4, 1, .7);

if (destroy_timer > -1) {
    destroy_timer--;
} else instance_destroy(id);
    
apply_damage();