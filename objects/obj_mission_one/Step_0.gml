switch (section) {
	case (1):
		create_swoop();
		if (swoop_spawn_timer<=-30) section++;
	break;
	
	case (2):
		if (!trio_spawned) {
			create_trio();
			trio_spawned=true;
		}
		else if (trio_spawned&&!instance_exists(obj_controller_trio)) {
			section++;
		}
	break;
	
	case (3):
		create_helix();
		if (helix_spawn_timer<=-180) section++;
	break;
	
	case (4):
		create_cross();
		if (cross_spawn_timer<=0) section++;
	break;
	
	case (5):
		create_circuit();
		if (circuit_spawn_timer<=0) section++;
	break;
	
	case (6):
		create_single_spiral(); //Needs exit
	break;
	
	case (7):
		create_revolver(); //Needs exit
	break;
	
	case (8):
		create_pack(); //Might need exit? Idk
	break;
	
	case (9):
		create_tracer_section(); //Keeps looping to the beginning after iterating completely
	break;
}