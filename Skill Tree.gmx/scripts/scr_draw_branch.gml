///scr_draw_branch( startx, starty, stopx, stopy, width );
/*   
    This script is strictly designed for the obj_branch object
*/

var _length = point_distance(argument[0], argument[1], argument[2], argument[3]);
var _direction = point_direction(argument[0], argument[1], argument[2], argument[3]);

var _back_length = sqrt( (sqr( argument[4]*.25 ) + sqr( argument[4]*.5 )) )

var XX, YY; 

draw_primitive_begin( pr_trianglefan );

    //Draw the start
    XX = argument[0];
    YY = argument[1];
    draw_vertex( XX, YY );
    pos_start[0] = XX;
    pos_start[1] = YY; 
    
    
    //Draw the leftmost corner
    XX = argument[0] + lengthdir_x( _back_length, _direction - 45 );
    YY = argument[1] + lengthdir_y( _back_length, _direction - 45 );
    draw_vertex( XX, YY );
    pos_left[0] = XX;
    pos_left[1] = YY;
    
    //Draw the nose
    XX = argument[2];
    YY = argument[3];
    draw_vertex( XX, YY );
    pos_nose[0] = XX;
    pos_nose[1] = YY; 
    
    
    //Draw the Rightmost
    XX = argument[0] + lengthdir_x( _back_length, _direction + 45 );
    YY = argument[1] + lengthdir_y( _back_length, _direction + 45 );
    draw_vertex( XX, YY );
    pos_right[0] = XX;
    pos_right[1] = YY;

draw_primitive_end();

draw_line( argument[0], argument[1], argument[2], argument[3] );
