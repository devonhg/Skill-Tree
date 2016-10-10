///scr_draw_branch_vertexes( length, direction, position);
/*
    Positions accepted are : "nose" = 0, "left" = 1, "back" = 2, "right" = 3
    
    This script is strictly designed for the obj_branch object
*/

var lengthx = lengthdir_x( argument[0], argument[1] );
var lengthy = lengthdir_y( argument[0], argument[1] );

switch(argument[2]){
    case 0:
        pos_nose[0] = x + lengthx;//Nose position x
        pos_nose[1] = y + lengthy;//Nose position y 
    break;
    
    case 1:
        pos_left[0] = x + lengthx;//Left position x
        pos_left[1] = y + lengthy;//Left position y 
    break;
    
    case 2:
        pos_start[0] = x + lengthx;//start position x
        pos_start[1] = y + lengthy;//start position y 
    break;
    
    case 3:
        pos_right[0] = x + lengthx;//Right position x
        pos_right[1] = y + lengthy;//Right position y   
    break;  
}

draw_vertex( x + lengthx, y + lengthy );
