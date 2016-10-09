/*
    Skilltree global values file
*/

global.game_version = "0.0.1";

//Set the debug mode title
dt_debug_set_title( string_replace(game_project_name, "_", " ") + " - Ver " + global.game_version );

//Set up our controllers
dt_add_persistent_con( con_main ); 

//Other configuration scripts
