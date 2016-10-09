///dt_rem_rm_controller( controller, room );
/*
    Using this script you are able to remove a room controller from being
    generated, as well as delete its instance. 
*/

var con = argument[0], rm = argument[1], i, j;

for( j=0; j<array_height_2d( game_nor_con ); j++ ){
    if( game_nor_con[j, 0] == rm ){
        for( i=1; i<array_length_2d( game_nor_con, j ); i++ ){
            if( game_nor_con[j, i] == con ){ 
                if( instance_exists( game_nor_con[j, i] ) ){
                    with( game_nor_con[j, i] ) instance_destroy();
                }
                game_nor_con[j, i] = -1; 
                break; 
            }
        }
    }
}

