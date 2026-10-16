if (global.game_over) {
    if (keyboard_check_pressed(ord("R"))) game_restart();
    exit;
}

var _dt = delta_time / 1000000;

// O TEMPO SÓ CAI SE NÃO ESTIVER ESPERANDO A PRÓXIMA WAVE
if (!esperando_wave) {
    global.timer -= _dt * multiplicador_tempo;
    global.tempo_sobrevivido += _dt;
    multiplicador_tempo += _dt * 0.01;
}

// Verifica se a Wave Acabou
if (inimigos_para_spawnar <= 0 && inimigos_vivos <= 0 && !esperando_wave) {
    esperando_wave = true;
    global.timer += 2.0; // Bônus de 2 segundos por terminar a wave!
    
    // Inicia a próxima wave em 3 segundos
    alarm[1] = 180; 
}

// Condição de Derrota
if (global.timer <= 0) {
    global.timer = 0;
    global.game_over = true;
    if (instance_exists(obj_player)) instance_destroy(obj_player);
}