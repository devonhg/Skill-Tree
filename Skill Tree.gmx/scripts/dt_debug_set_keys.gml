///dt_debug_set_keys( key1, key2 );
/*
    Using this script you are able to specify the key combination
    to initiate debug mode. 
    
    The first key is the button you hold down ( ex : alt ) and the second
    key is the button you press ( ex : ord('D') ).
    
    @key1 - The first key, usually alt or shift or something.
    @key2 - The second key, can be any other key. 
    
    Event : Any
    Object Type : Any
    Scope : Game
*/

dt_debug_init()

var _key1 = argument[0],
    _key2 = argument[1];
    
    game_debug_butt1 = _key1; 
    game_debug_butt2 = _key2; 
