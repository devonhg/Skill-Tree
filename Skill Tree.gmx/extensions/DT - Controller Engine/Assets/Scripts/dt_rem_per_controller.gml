///dt_rem_per_controller( controller );
/*
    Using this script you are able to remove a persistent controller from being
    generated, as well as delete its instance. 
*/

var con = argument[0], i;

for( i=0; i<array_length_1d( game_per_con ); i++ ){
    if( game_per_con[i] == con ){ 
        if( instance_exists( game_per_con[i] ) ){
            with( game_per_con[i] ) instance_destroy();
        }
        game_per_con[i] = -1; 
        break; 
    }
}


