///dt_init_controller_engine(); 
/*
    This script is OPTIONAL! Calling any of the add controllers scripts runs this 
    automatically if the system isn't already initiated. 
*/
globalvar
game_per_con,
game_nor_con;

//The list of persistent controllers
    game_per_con[0] = -1;
//The list of room controllers
//0 = room
//1-... = objects that go into room
    game_nor_con[0,0] = -1;
  
instance_create( 0,0, dt_con_master ); 
