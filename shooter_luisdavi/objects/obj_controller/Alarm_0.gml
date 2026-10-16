if (!global.game_over && inimigos_para_spawnar > 0) {
    var _xx, _yy;
    
    // Nasce nas bordas
    if (choose(0, 1) == 0) {
        _xx = choose(-32, room_width + 32); _yy = random(room_height);
    } else {
        _xx = random(room_width); _yy = choose(-32, room_height + 32);
    }
    
    // Decide qual inimigo vai nascer
    var _tipo = obj_hamburger;
    
    // A partir da Wave 2, tem 40% de chance de nascer um Cachorro-Quente
    if (wave_atual >= 2 && irandom(100) < 40) {
        _tipo = obj_hotdog;
    }
    
    // Cria o inimigo
    instance_create_layer(_xx, _yy, "Instances", _tipo);
    
    inimigos_para_spawnar--;
    inimigos_vivos++;
    
    // Chama o alarme de novo (cada vez mais rápido dependendo da wave)
    alarm[0] = max(15, 60 - (wave_atual * 5)); 
}