///dt_create_per_controllers()
/*
    Create the persistent controllers, ignore any that are already initiated 
*/

///Create Persistent Controllers
var i, per_con;
for(i=0; i < array_length_1d(game_per_con); i++){
    if( game_per_con[i] != -1 and game_per_con[i] != -4 ){
        if( !instance_exists( game_per_con[i] ) ){
            per_con = instance_create( x, y, game_per_con[i] ); 
            per_con.persistent = true; 
        }
    }
}
