// Sempre que um inimigo morrer, avisa o controlador que tem um inimigo a menos na Wave
if (instance_exists(obj_controller)) {
    obj_controller.inimigos_vivos--;
}