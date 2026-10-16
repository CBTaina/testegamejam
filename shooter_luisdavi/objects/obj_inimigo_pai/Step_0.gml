if (global.game_over) exit;

// Segue o jogador
if (instance_exists(obj_player)) {
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);
    x += lengthdir_x(spd, _dir);
    y += lengthdir_y(spd, _dir);
}