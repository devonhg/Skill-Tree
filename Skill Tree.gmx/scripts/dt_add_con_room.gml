///dt_add_con_room( object, ...room1, ...room2,... );
/*
    Add room controllers to the game. You can specify an object and what rooms 
    the object goes to. 
    
    Object : What object to include
    
    room1, room2, ... : Specify up to 15 rooms for the object to go into.
    If you need more, you can simply recall the script and respecify the object. 
    
    Event : Game Config Script
    Object Type : None   
    Scope : Game
*/

//Check if the system has been initiated, if not then initiate it.
if( !instance_exists( dt_con_master ) ){
    dt_init_controller_engine(); 
}

var obj = argument[0], i, j, k, in;

//Sort all listed keys into array, as well as allows for optional arguments.
if argument_count > 1{
    if( is_array( obj ) ){
        for( k=0; k<array_length_1d(obj); k++ ){
            for(i=1;i<argument_count;i++){
                in = argument[i];
                if( is_array(in) ){
                    for(j=0; j<array_length_1d(in); j++ ){
                        dt_ut_list_room_con( in[j], obj[k] );
                    }
                }else{
                    dt_ut_list_room_con( in, obj[k] );
                } 
            }           
        }    
    }else{
        for(i=1;i<argument_count;i++){
            in = argument[i];
            if( is_array(in) ){
                for(j=0; j<array_length_1d(in); j++ ){
                    dt_ut_list_room_con( in[j], obj );
                }
            }else{
                dt_ut_list_room_con( in, obj );
            } 
        }
    }
    
    //Make sure it's added
    dt_create_rm_controllers();
}else{
    show_error( "dt_add_room_con: Error, this script requires additional arguments", true );
}

