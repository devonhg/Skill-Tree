///dt_create_rm_controllers();
/*
    Create the controllers for that room, ignore making any that are already made. 
*/

var i,j, ind = array_height_2d(game_nor_con); 

for(i=0; i < ind; i++){
    if(room == game_nor_con[i,0]){
        for(j=1; j < array_length_2d(game_nor_con, i); j++){
            if( game_nor_con[i, j] != -1 and game_nor_con[i, j] != -4 ){
                if( !instance_exists( game_nor_con[i, j] ) ){
                    instance_create(0,0, game_nor_con[i, j]); 
                }
            }
        }
    }
}

