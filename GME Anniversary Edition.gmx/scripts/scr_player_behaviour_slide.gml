///scr_player_behaviour_slide()

/*
**  Usage:
**      scr_player_behaviour_slide()
**
**  Purpose:
**      Handles the main movement of the player when it's sliding down a slope
*/

//Reset following variables
stompstyle = 0;

//Figure out the player's state.
if ((collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_semisolid,0,0))
|| (collision_rectangle(x-1,bbox_bottom+1,x+1,bbox_bottom+1,obj_slopeparent,1,0)))
&& (gravity == 0) {

    //Figure out if the player is standing or walking
    if (hspeed == 0)
        state = 0;
    else
        state = 1;

    //Reset state delay
    delay = 0;
}

//the player is jumping if there's no ground below him.
else {

    //Delay the change to the jump state
    if (delay > 4)
        state = 2;
    else
        delay++;
}

//Prevent the player from falling too fast.
if (vspeed > 4)
    vspeed = 4;
    
//Prevent the player from sliding too fast.
hspeedmax = 2.7;

//You can't slide down slopes while having the frog suit, so make him stop.
if (global.powerup == cs_frog)
    sliding = false;

//Make the player able to jump.
if (!disablecontrol) { //If the player's controls are not disabled.
    
    //Make the player able to jump when is on contact with the ground.
    if (keyboard_check_pressed(vk_shift))
    && (jumping == 0)
    && (vspeed == 0) 
    && (state != 2) { //If the 'Shift' key is pressed and the player is not jumping.
                            
        //If the 'Up' key is pressed.
        if (keyboard_check(vk_up)) {
            
            //Set the vertical speed.
            vspeed = -jumpstr+abs(hspeed)/3.75*-1;
            
            //Set the stomp style
            stompstyle = true;
            
            //Play 'Jump' sound
            audio_play_sound(snd_spin, 0, false);                    
        }
        
        //Otherwise, if it's not
        else if (!keyboard_check(vk_up)) {
            
            //Set the vertical speed.
            vspeed = -jumpstr+abs(hspeed)/7.5*-1;
            
            //Set the stomp style
            stompstyle = false;
            
            //Play 'Jump' sound
            audio_play_sound(snd_jump, 0, false);
        }
        
        //Stop slide
        sliding = false;
        
        //Switch to jump state
        state = 2;        
        
        //Make the player able to vary the jump.
        jumping = 1;
                
        //Move the player a few pixels upwards when on contact with a moving platform or a slope.
        var platform = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_semisolid,0,0);
        if ((platform) && (platform.vspeed < 0))
            y -= 4;
    }
}

//Make the player accelerate when sliding down a slope.
if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_slopeparent,1,0)) {

    //22.5º Right Slope
    if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slope_r,1,0))     
        hspeed += -0.05;
    
    //22.5º Left Slope
    else if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slope_l,1,0))  
        hspeed += 0.05;
    
    //45º Right Slope
    else if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slope_sr,1,0))    
        hspeed += -0.1;
    
    //45º Left Slope
    else if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slope_sl,1,0))    
        hspeed += 0.1;
}

//Make the player decelerate when not sliding down a slope.
else if (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slopeparent,1,0)) {

    //If the player is on contact with the floor.
    if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_semisolid,0,0)) {
    
        //If the player is not on contact with a slippery surface.
        if (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slippery,0,0)) {
        
            //Slowdown
            hspeed = max(0,abs(hspeed)-0.05)*sign(hspeed);
            if ((hspeed > -0.05) && (hspeed < 0.05)) {
            
                //Stop horizontal speed.
                hspeed = 0;
                
                //End combo
                hitcombo = 0;
                
                //Stop sliding behaviour
                sliding = false;
            }
        }
        
        //Otherwise, if the player is on contact with a slippery surface.
        else if (collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_slippery,0,0)) {
        
            //Slowdown
            hspeed = max(0,abs(hspeed)-0.0125)*sign(hspeed);
            if ((hspeed > -0.0125) && (hspeed < 0.0125)) {
            
                //Stop horizontal speed.
                hspeed = 0;
                
                //End combo
                hitcombo = 0;
                
                //Stop sliding behaviour
                sliding = false;
            }        
        }
    }
}

//Prevent the player from sliding too fast.
if (abs(hspeed) > hspeedmax)
    hspeed = max(0,abs(hspeedmax)-0.1)*sign(hspeed);
    
//If the player is jumping
if ((state == 2) || (delay > 0))
    gravity = grav;
