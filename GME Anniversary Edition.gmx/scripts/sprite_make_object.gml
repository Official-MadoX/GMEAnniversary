///sprite_make_object(x,y,sprite)

/*
**  Usage:
**      sprite_make_object(x,y,sprite)
**
**  Given:
**      x           X Coordinate
**      y           Y Coordinate
**      sprite      The sprite that represents what you want
**
**  Purpose:
**      Creates an object that the sprite represents at x,y.
*/

switch (argument[2]) {

    //Mushroom
    case (spr_mushroom): return instance_create(argument[0],argument[1],obj_mushroom);
        
    //Fire Flower
    case (spr_fireflower): return instance_create(argument[0],argument[1],obj_fireflower);
        
    //Ice Flower
    case (spr_iceflower): return instance_create(argument[0],argument[1],obj_iceflower);
        
    //Carrot
    case (spr_carrot): return instance_create(argument[0],argument[1],obj_carrot);
        
    //Frog Suit
    case (spr_frogsuit): return instance_create(argument[0],argument[1],obj_frogsuit);
        
    //Tanooki Suit
    case (spr_tanookisuit): return instance_create(argument[0],argument[1],obj_tanookisuit);
        
    //Hammer Flower
    case (spr_hammerflower): return instance_create(argument[0],argument[1],obj_hammerflower);
        
    //Boomerang Flower
    case (spr_boomerangflower): return instance_create(argument[0],argument[1],obj_boomerangflower);
        
    //Super Flower
    case (spr_superflower): return instance_create(argument[0],argument[1],obj_superflower);
        
    //Bomb Shroom
    case (spr_bombshroom): return instance_create(argument[0],argument[1],obj_bombshroom);
        
    //Blue Shell
    case (spr_blueshell): return instance_create(argument[0],argument[1],obj_blueshell);
        
    //Bee Shroom
    case (spr_beeshroom): return instance_create(argument[0],argument[1],obj_beeshroom);
        
    //Volt Shroom
    case (spr_voltshroom): return instance_create(argument[0],argument[1],obj_voltshroom);
    
    //Penguin Suit
    case (spr_penguinsuit): return instance_create(argument[0],argument[1],obj_penguinsuit);
        
    //Propeller Mushroom
    case (spr_propellershroom): return instance_create(argument[0],argument[1],obj_propellershroom);
        
    //Super Bell
    case (spr_superbell): return instance_create(argument[0],argument[1],obj_superbell);
    
    //Green Yoshi
    case (spr_egg): return instance_create(argument[0],argument[1],obj_egg);

    //Red Yoshi
    case (spr_egg_r): {
    
        var i;
        i = instance_create(argument[0],argument[1],obj_egg);
            i.sprite_index = spr_egg_r;
    }
    return i;
    
    //Yellow Yoshi
    case (spr_egg_y): {
    
        var i;
        i = instance_create(argument[0],argument[1],obj_egg);
            i.sprite_index = spr_egg_y;
    }
    return i;
    
    //Blue Yoshi
    case (spr_egg_b): {
    
        var i;
        i = instance_create(argument[0],argument[1],obj_egg);
            i.sprite_index = spr_egg_b;
    }
    return i;
        
    //Kuribo Shoe
    case (spr_kuriboshoe): return instance_create(argument[0],argument[1],obj_getshoe);
    
    //Baburu Shoe
    case (spr_baburushoe): {
    
        var i;
        i = instance_create(argument[0],argument[1],obj_getshoe);
            i.sprite_index = spr_baburushoe;
    }
    return i;
    
    //Yellow Yoshi
    case (spr_dossunshoe): {
    
        var i;
        i = instance_create(argument[0],argument[1],obj_getshoe);
            i.sprite_index = spr_dossunshoe;
    }
    return i;
    
    //Blue Yoshi
    case (spr_jugemushoe): {
    
        var i;
        i = instance_create(argument[0],argument[1],obj_getshoe);
            i.sprite_index = spr_jugemushoe;
    }
    return i;        

    //Golden Mushroom
    case (spr_goldshroom): return instance_create(argument[0],argument[1],obj_goldshroom);    
        
    //1UP
    case (spr_1up): return instance_create(argument[0],argument[1],obj_1up);
    
    //3UP
    case (spr_3upmoon): return instance_create(argument[0],argument[1],obj_3upmoon);
        
    //Star
    case (spr_starman): return instance_create(argument[0],argument[1],obj_starman);
    
    //Poison
    case (spr_poison): return instance_create(argument[0],argument[1],obj_poison);
        
    //Key
    case (spr_key): return instance_create(argument[0],argument[1],obj_key);
    
    //P-Switch
    case (spr_pswitch): return instance_create(argument[0],argument[1],obj_pswitch);
    
    //G-Switch
    case (spr_gswitch): return instance_create(argument[0],argument[1],obj_gswitch);
        
    //Trampoline
    case (spr_trampoline): return instance_create(argument[0],argument[1],obj_trampoline);
    
    //Propeller Block
    case (spr_propellerblock): {
    
        var i;
        i = instance_create(argument[0],argument[1],obj_propellerblock_up);
            i.held = false;
    }
    return i;
}

