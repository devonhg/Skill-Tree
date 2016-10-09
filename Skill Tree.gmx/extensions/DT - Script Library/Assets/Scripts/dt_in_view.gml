///dt_in_view( id, ...hborder, ..vborder );
/*
    Check if the specified object is within the view
    
    You can specify a "border" if you want and won't return 
    true unless the object is also within that border.
    
    Specifying only one border specifies for both
    Specifying both independently specifies each independently
    Specifying neither it will assume the borders are 0
    
*/

var _id = argument[0],
    _xclear = false, _yclear = false,
    _hbor = 0, _vbor = 0; ;
    
if( argument_count > 1 ){
    _hbor = argument[1]; 
    _vbor = argument[1]; 
}else if( argument_count > 2 ){
    _hbor = argument[1];
    _vbor = argument[2]; 
}
    
if( _id.x > (view_xview + _hbor ) and _id.x < ((view_xview + view_wview) - _hbor ) ) _xclear = true; 
if( _id.y > (view_yview + _vbor ) and _id.y < ((view_yview + view_hview) - _vbor ) ) _yclear = true; 
return ( _xclear and _yclear );
