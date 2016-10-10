/*
    Skilltree global values file
*/

global.game_version = "0.0.2";

//Set the debug mode title
dt_debug_set_title( string_replace(game_project_name, "_", " ") + " - Ver " + global.game_version );

//Set up our controllers
dt_add_persistent_con( con_main ); 

dt_add_room_con( rm_test, con_tree_builder);

//Other configuration scripts
