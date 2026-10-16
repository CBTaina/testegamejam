// Prepara a próxima rodada
wave_atual++;
inimigos_para_spawnar = 3 + (wave_atual * 4); // Cada wave tem 4 inimigos a mais
esperando_wave = false;

// Começa a spawnar imediatamente
alarm[0] = 10;