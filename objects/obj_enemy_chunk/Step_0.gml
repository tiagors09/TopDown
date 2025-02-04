speed -= speed * 0.1;
image_alpha -= (image_alpha * 0.01);

if (speed <= 0)
    instance_destroy(id);