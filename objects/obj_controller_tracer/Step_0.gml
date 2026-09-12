switch (tracer_phase) {
	case (10):
		if (tracer_spawn_timer>0 && tracer_spawn_timer%5==0) {
			tracer_create(TRACER_MOVE.FROM_TOP_CENTER);
		}
	break;
	
	case (9):
		if (tracer_spawn_timer>0 && tracer_spawn_timer%5==0) {
			tracer_create(TRACER_MOVE.FROM_TOP_LEFT);
		}
	break;
	
	case (8):
	if (tracer_spawn_timer>0 && tracer_spawn_timer%5==0) {
		tracer_create(TRACER_MOVE.FROM_TOP_RIGHT);
	}
	break;
	
	case (7):
	if (tracer_spawn_timer>0 && tracer_spawn_timer%5==0) {
		tracer_create(TRACER_MOVE.FROM_BOTTOM_CENTER);
	}
	break;	
	
	case (6):
		if (tracer_spawn_timer>0 && tracer_spawn_timer%5==0) {
			tracer_create(TRACER_MOVE.FROM_BOTTOM_LEFT);
		}
	break;	
	
	case (5):
		if (tracer_spawn_timer>0 && tracer_spawn_timer%5==0) {
			tracer_create(TRACER_MOVE.FROM_BOTTOM_CENTER);
		}
	break;	
	
	case (4):
		if (tracer_spawn_timer>0 && tracer_spawn_timer%5==0) {
			tracer_create(TRACER_MOVE.FROM_BOTTOM_LEFT);
			tracer_create(TRACER_MOVE.FROM_TOP_CENTER);
		}
	break;	

	case (3):
		if (tracer_spawn_timer>0 && tracer_spawn_timer%5==0) {
			tracer_create(TRACER_MOVE.FROM_TOP_LEFT);
			tracer_create(TRACER_MOVE.FROM_BOTTOM_RIGHT);
		}
	break;	
	
	case (2):
		if (tracer_spawn_timer>0 && tracer_spawn_timer%5==0) {
			tracer_create(TRACER_MOVE.FROM_BOTTOM_LEFT);
			tracer_create(TRACER_MOVE.FROM_TOP_CENTER);
			tracer_create(TRACER_MOVE.FROM_BOTTOM_RIGHT);
		}
	break;	
	
	case (1):
		if (tracer_spawn_timer>0 && tracer_spawn_timer%5==0) {
			tracer_create(TRACER_MOVE.FROM_BOTTOM_LEFT);
			tracer_create(TRACER_MOVE.FROM_TOP_CENTER);
			tracer_create(TRACER_MOVE.FROM_BOTTOM_RIGHT);
		}
	break;		
	
	case (0):
	instance_destroy();
	break;
}

if (--tracer_spawn_timer <=0) {
	tracer_phase--;
	tracer_spawn_timer=120;
}

show_debug_message("Tracer Phase: "+string(tracer_phase));