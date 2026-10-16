global.timer = 10.0;
global.pontos = 0;
global.tempo_sobrevivido = 0;
global.game_over = false;

multiplicador_tempo = 1.0;

// SISTEMA DE WAVES
wave_atual = 1;
inimigos_para_spawnar = 5; // Primeira wave terá 5 inimigos
inimigos_vivos = 0;
esperando_wave = false;

alarm[0] = 60; // Começa a spawnar inimigos em 1 segundo