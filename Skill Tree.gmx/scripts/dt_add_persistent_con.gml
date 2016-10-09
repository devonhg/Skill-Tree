///dt_add_persistent_con(Controller1, Controller2, ...);
/*
    This script adds to the persistent controller global array. 
    
    Event : Game Config Script
    Object Type : None   
    Scope : Game
*/

//Check if the system has been initiated, if not then initiate it.
if( !instance_exists( dt_con_master ) ){
    dt_init_controller_engine(); 
}

var ind, i, val, j; 

for( i=0; i < argument_count; i++ ){
    //Make sure we are not at the beginning of the array
        if(game_per_con[0] = -1) ind = 0; 
        else ind = array_length_1d(game_per_con);
    
    //Pass object into list
        val = argument[i];
        if( is_array(val) ){
            for(j=0; j<array_length_1d(val); j++ ){
                game_per_con[ind + j] = val[j]; 
            }
        }else{
            game_per_con[ind] = val; 
        }
}

//Make sure it's created 
dt_create_per_controllers(); 
