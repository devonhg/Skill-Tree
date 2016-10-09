///dt_track('index', value, (category) );
/*
    Add a value to show in the debug screen
    
    Use ALT + D by default to activate debug mode once this script 
    has been ran at least once. 
    
    You can optionally specify a category to group your debug values
    
    
    @'index' - Can be any string, used to describe what the value is.
    @value - Can be any value, padd into it what you want to track. 
    @(category) - Optional, fill with a string on what he category is. 
    
    
    Event : Step ( or any other event called each frame )
    Object Type : Any   
    Scope : Game  
    
*/

//Check if the system has been initiated, if not, initiate it. 
dt_debug_init(); 

if( game_debug_mode ){
    
    var _ind = argument[0],
        _val = argument[1],
        _cat = "General", 
        i = 0,
        _h = array_height_2d( dt_obj_debug.game_debug_values ); 
        
    if( argument_count > 2 ){
        _cat = argument[2];
    }
    
    //Check if index is already entered. 
        for( i=0; i < _h; i++ ){
            //If we find a matching index, redefine _h to that index
            if( dt_obj_debug.game_debug_values[ i, 0 ] == _cat and
                string_pos(_ind, dt_obj_debug.game_debug_values[ i, 1 ]) != 0  ){
                _h = i; 
                break; 
            }
        }

    //Enter results into the debug array
        dt_obj_debug.game_debug_values[ _h, 0 ] = _cat;
        dt_obj_debug.game_debug_values[ _h, 1 ] = "    " + string(_ind) + " : " + string(_val) + "#";   
}
