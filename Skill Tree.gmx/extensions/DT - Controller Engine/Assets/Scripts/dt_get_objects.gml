///dt_get_objects( "slug1", ..."slug2", ... );
/*
    Use this script to return an "Array" containing a list of objects that has
    names that contain the specified slugs.
    
    For instance, if you use the slug "in_game" and you have two objects called
    in_game_controller and in_game_object these two objects would be returned in
    an array. 
    
    It is not recommended that this script runs in step. 
*/

var i = 0, 
    j = 0,
    _arr = noone, 
    _name = "", 
    _slug = argument[0];

//Check for up to 1000 objects.
for( i=0; i<1000; i++ ){
    if( object_exists(i) ){
        _name = object_get_name(i); 
        
        if( argument_count > 1 ){
            var chk = true; 
            for( j=0; j<argument_count; j++ ){
                if( string_pos( argument[j], _name ) == 0 ){
                    chk = false; 
                }
            }
            if( chk ){
                _arr[array_length_1d( _arr )] = i;
            }
        }else{
            if( string_pos( _slug, _name ) != 0 ){
                _arr[array_length_1d( _arr )] = i;
            }
        }
    }
}

return _arr; 
