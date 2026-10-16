if (global.game_over) exit;

// Movimentação nas 8 direções usando WASD
var _hspd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vspd = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Normaliza a velocidade para não andar mais rápido nas diagonais
var _dir = point_direction(0, 0, _hspd, _vspd);
if (_hspd != 0 or _vspd != 0) {
    x += lengthdir_x(spd, _dir);
    y += lengthdir_y(spd, _dir);
}

// Prende o jogador dentro da sala
x = clamp(x, 16, room_width - 16);
y = clamp(y, 16, room_height - 16);

// Faz o personagem olhar para o mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);

// Sistema de Tiro
if (mouse_check_button_pressed(mb_left)) {
    var _tiro = instance_create_layer(x, y, "Instances", obj_fireball);
    _tiro.direction = image_angle; // Vai na direção em que o player está olhando
    _tiro.image_angle = image_angle;
}