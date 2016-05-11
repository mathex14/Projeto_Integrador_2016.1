//menu option select

switch(mpos){
    case 0:{
    room_goto_next();
    break;
    }
    
    case 1:{
    instance_deactivate_all( false ); 
    instance_create(0,0,obj_instr_menu);
    break;
    }
    
    case 2:{
    instance_deactivate_all( false ); 
    instance_create(0,0,obj_cred_menu);
    break;
    }
    
    case 3:{
    game_end();
    break;
    }
}
