///init_globals()

/*
**  Usage:
**      init_globals()
**
**  Purpose:
**      Initializes all of the global variables used throughout the game.
*/

//World Number
global.world = "1";

//Level Number
global.level = "1";

//Level id
global.lvlid = 0;

//Level time
global.time = 0;

//Level skid
global.skin = 0;

//Lives
lives = 5;

//Score
score = 0;

//Health
health = 3;
global.healthmax = 3;

//Skin
//0: No skin
//1: Underground
//2: Castle
global.skin = 0;

//Coins
global.coins = 0;

//Red Coins
global.redcoins = 0;

//Current Player
global.player = 0;

//Whether the player died on a level
global.died = 0;

//Display 'Mario Start!'
global.mariostart = false;

//Checks whether a level is cleared
//0: No clear
//1: Clear
//2: Clear (Secret Exit)
//3: Clear (Exit from side)
global.clear = 0;

//Berries
global.berries = 0;

//Cherries
global.cherries = 0;

//Powerup
global.powerup = cs_small;

//Reserve item
global.reserve = cs_small;

//Checkpoint
global.checkpoint = noone;

//Checkpoint Room
global.checkpointroom = noone;

//Switch Palaces
global.palaceyellow = 0;
global.palacegreen = 0;
global.palacered = 0;
global.palaceblue = 0;

//On / Off Blocks
global.onoffyellow = 1;
global.onoffgreen = 1;
global.onoffred = 1;
global.onoffblue = 1;
global.onoffpurple = 1;
global.onofforange = 1;

//Position change object type
//-1: No Change
//0: Mario
//1: Pipe
//2: Jump
//3: Climb
//4: Warp/Mystery Boxes
global.postchange = -1;

//Position change coordinates
global.postx = 0;
global.posty = 0;

//Mount
//0: No mount
//1: Yoshi
//2: Kuribo Shoe
global.mount = 0;

//Mount colour
//0: Green
//1: Red
//2: Yellow
//3: Blue
global.mountcolour = 0;

//P-Switch time limit
global.pswitch = 0;

//G-Switch time limit
global.gswitch = 0;

//Star time limit
global.starman = 0;

//Star used in map?
global.mapstar = 0;

//Warp used in map
global.pipex = 0;
global.pipey = 0;

//Mushroom house prizes
global.prize[0] = 0;
global.prize[1] = 0;
global.prize[2] = 0;

//Map pipe area type
global.pipetype = 0;

//Remember level music
global.levelmusic = noone;

//Data structure for opened doors
global.doors = ds_map_create();

//Data structure for collected ace coins
global.acecoins = ds_map_create();

//Data structure for collected red coin rings
global.redrings = ds_map_create();

//Item that is being carried between rooms
global.carrieditem = noone;

//The sprite used by an item carried between rooms
global.carriedsprite = noone;

//Initialize star coin system
//0: Not collected
//1: Collected, not saved
//2: Collected, saved with checkpoint
//3: Collected, saved with level completion. (Adds to global.sc_count)
for (var i=0; i<99; i++;) {

    global.starcoin[i,0] = 0;
    global.starcoin[i,1] = 0;
    global.starcoin[i,2] = 0;
}

//Data structure for picked up star medals
global.sc_get = ds_map_create();

//Data structure for collected star medals (This will be displayed on map.)
global.sc_count = ds_map_create();

//Data structure for storing the state of the world map.
global.mapscreen = ds_map_create();

//Particle effect variables
global.rain_sys = noone;
global.snow_sys = noone;

//Map inventory variables
for(var i=0; i<13; i++)
    global.inventory[i] = 0;
