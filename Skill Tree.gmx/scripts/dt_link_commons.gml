///dt_link_commons( "Slug" );
/*
    This script quite simply links all controllers and all rooms
    that have the unified "slug" in their names. 
*/

//Check if the system has been initiated, if not then initiate it.
if( !instance_exists( dt_con_master ) ){
    dt_init_controller_engine(); 
}

var _s = argument[0];

dt_add_room_con( dt_get_rooms( _s ), dt_get_objects( _s ) );
