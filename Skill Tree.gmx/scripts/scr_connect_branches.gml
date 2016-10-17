///scr_connect_branches( parent id, child id );


draw_primitive_begin( pr_trianglefan );

    //Draw Parents Left
    XX = argument[0].pos_left[0];
    YY = argument[0].pos_left[1];
    draw_vertex( XX, YY );
    
    //Draw Parents Right
    XX = argument[0].pos_right[0];
    YY = argument[0].pos_right[1];
    draw_vertex( XX, YY );
    
    //Draw Childs Right
    XX = argument[1].pos_right[0];
    YY = argument[1].pos_right[1];
    draw_vertex( XX, YY );
    
    //Draw Childs Left
    XX = argument[1].pos_left[0];
    YY = argument[1].pos_left[1];
    draw_vertex( XX, YY );
    


draw_primitive_end();
