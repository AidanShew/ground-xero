function create_cross(){
	var timer=cross_spawn_timer;
	
	//Set cross_spawn_timer to 120
	if (timer%20==0&&timer>0) {
		soldier_create(1, MOVE.CROSS_RIGHT, noone, false);
		soldier_create(1, MOVE.CROSS_LEFT, noone, true);
	}
	
	cross_spawn_timer--;
}