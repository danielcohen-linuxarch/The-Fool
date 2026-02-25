x_speed = 0;
y_speed = 0;
walk_speed = 1 * global.speed_level;

if (!instance_exists(oCoin)) {
    global.speed_level += 1;
    room_goto(Room1);
}

x_speed = 0;
y_speed += 0.75;

if (keyboard_check(ord("R"))) {
    global.speed_level = 1;
    room_restart();
}

if (keyboard_check(vk_right) && !(global.speed_level > global.win_speed_level)) {
    x_speed = walk_speed;
    image_xscale = 1;
} else if (keyboard_check(vk_left) && !(global.speed_level > global.win_speed_level)) {
    x_speed = -walk_speed;
    image_xscale = -1;
}

if (place_meeting(x, y + 1, oSolid) && !(global.speed_level > global.win_speed_level)) {
    if (keyboard_check_pressed(vk_up)) {
        y_speed = -30;
    } else {
        y_speed = 0;
    }
}

if (y > room_height or y < 0 or x > room_width or x < 0) {
    global.speed_level = 1;
    room_restart();
}

move_and_collide(x_speed, y_speed, oSolid);