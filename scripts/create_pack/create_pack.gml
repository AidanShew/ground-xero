function create_pack(){
	var timer = pack_spawn_timer;
	
	if (pack_iteration<4) {
		if (timer>0&&timer%120==0) {
			soldier_create(
			3, 
			pack_iteration%2==0 ? MOVE.PACK_LEFT : MOVE.PACK_RIGHT, 
			ATTACK.AIMED, 
			pack_iteration%2==0 ? false : true);
		}
		timer--;
		if (timer<=0) {
			pack_iteration++;
			timer=120;
		}
	}
}