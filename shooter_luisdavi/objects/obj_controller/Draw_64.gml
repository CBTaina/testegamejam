draw_set_halign(fa_center);

if (global.game_over) {
    draw_set_color(c_red);
    draw_text_transformed(room_width/2, room_height/2 - 50, "O TEMPO ACABOU!", 2, 2, 0);
    draw_set_color(c_white);
    draw_text(room_width/2, room_height/2 + 10, "Chegou na Wave: " + string(wave_atual));
    draw_text(room_width/2, room_height/2 + 40, "Pontos: " + string(global.pontos));
    draw_set_color(c_gray);
    draw_text(room_width/2, room_height/2 + 80, "Pressione [R] para reiniciar");
} else {
    // Relógio
    if (global.timer > 5.0) draw_set_color(c_white);
    else if (global.timer > 3.0) draw_set_color(c_yellow);
    else draw_set_color(c_red);
    
    draw_text_transformed(room_width/2, 30, string_format(global.timer, 0, 2) + "s", 2, 2, 0);
    
    // Se estiver no intervalo, avisa o jogador
    if (esperando_wave) {
        draw_set_color(c_aqua);
        draw_text_transformed(room_width/2, room_height/2, "WAVE " + string(wave_atual + 1) + " PREPARANDO...", 1.5, 1.5, 0);
    }
    
    // HUD Lateral
    draw_set_halign(fa_left);
    draw_set_color(c_ltgray);
    draw_text(20, 20, "Pontos: " + string(global.pontos));
    draw_text(20, 40, "Wave: " + string(wave_atual));
}