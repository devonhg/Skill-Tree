///dt_add_room_con( Room, Controller1, Controller2, ... );
/*
    Add room controllers to the game. You can specify a room and the controllers
    that go into it. 
    
    Room : What room to put controllers into.
    
    Controller1, Controller2, ... : Specify up to 15 controllers to go into the room.
    If you need more, you can simply recall the script and respecify the room. 
    
    Event : Game Config Script
    Object Type : None   
    Scope : Game
*/

//Check if the system has been initiated, if not then initiate it.
if( !instance_exists( dt_con_master ) ){
    dt_init_controller_engine(); 
}

var rm = argument[0], i, j, k, in;

//Sort all listed keys into array, as well as allows for optional arguments.
if argument_count > 1{
    if( is_array( rm ) ){
        for( k=0; k<array_length_1d(rm); k++ ){
            for(i=1;i<argument_count;i++){
                in = argument[i];
                if( is_array(in) ){
                    for(j=0; j<array_length_1d(in); j++ ){
                        dt_ut_list_room_con( rm[k], in[j] );
                    }
                }else{
                    dt_ut_list_room_con( rm[k], in );
                } 
            }            
        }
    }else{
        for(i=1;i<argument_count;i++){
            in = argument[i];
            if( is_array(in) ){
                for(j=0; j<array_length_1d(in); j++ ){
                    dt_ut_list_room_con( rm, in[j] );
                }
            }else{
                dt_ut_list_room_con( rm, in );
            } 
        }
    }
    
    //Make sure it's added
    dt_create_rm_controllers(); 
}else{
    show_error( "dt_add_room_con: Error, this script requires additional arguments", true );
}


