///dt_debug_init();
/*
    This is an optional script that initiates the debug
    engine if you have objects that use the global debug mode 
    variable. 
    
    Put this in your game initiation script. 
    
    Event : Any
    Object Type : Any
    Scope : Game
*/

if( !instance_exists( dt_obj_debug ) ){
    globalvar game_debug_mode,
    game_debug_butt1,
    game_debug_butt2,
    game_debug_title;
    
    game_debug_mode = false; 
    game_debug_butt1 = vk_alt; 
    game_debug_butt2 = ord("D");
    game_debug_title = "Debug Mode";  
    
    
    instance_create( 0, 0, dt_obj_debug ); 
}
