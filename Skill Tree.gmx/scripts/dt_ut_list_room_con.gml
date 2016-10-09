///dt_ut_list_room_con( room, controller );
/*
    This script simply lists a room controller into the system, used for 
    properly adding the controllers to the system. 
*/

var rm = argument[0], con = argument[1], i;

/******************
* Check for Entry
******************/
    //Default the index to the end of the list
        var ind = array_height_2d(game_nor_con);
    
    //Check if room is already on the list, of so 
    //set index to that rooms place on list
        for( i=0; i<ind; i++ ){
            if( game_nor_con[i,0] = rm ){ 
                ind = i; 
                break;     
            }
        }
        
    //Put into list
        game_nor_con[ind,0] = rm;

/******************
* Check for Objects
******************/
    //Default index to the end of the list
        var v_len = array_length_2d(game_nor_con, ind);
        
    //Check if object is already on the list, of so 
    //set index to that objects place on list
        for( i=1; i<v_len; i++ ){
            if( game_nor_con[ind,i] = con ){ 
                v_len = i;
                break;
            }
        }
        
    //Put into list
        game_nor_con[ind, v_len] = con;
