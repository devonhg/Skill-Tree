///det_debug_set_title( "title" );
/*
    Using this script you can set the title of the debug screen, useful for if you have
    different "gamestates", you can dynamically update the title based on state. 
    
    @title - What the new debug title should be.
    
    Event : Any
    Object Type : Any
    Scope : Game
*/

dt_debug_init(); 

game_debug_title = argument[0]; 
