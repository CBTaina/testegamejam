global.timer += tempo_ganho; 
global.pontos += 1;

instance_destroy(other); // Destrói a bola de fogo
instance_destroy();      // Destrói a si mesmo (aciona o evento Destroy acima)