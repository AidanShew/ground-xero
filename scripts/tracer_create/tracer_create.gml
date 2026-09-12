function tracer_create(move_type, red=noone){	
	for (var i=0; i<2; i++) {
		var enemy=instance_create_layer(0, 0, "Instances", obj_tracer);
		enemy.move_type=move_type;
		enemy.red=red;
		enemy.alignment= i==1 ? TRACER_ALIGN.RIGHT : TRACER_ALIGN.LEFT;
		
		switch (move_type) {
			case TRACER_MOVE.FROM_BOTTOM_CENTER:
			case TRACER_MOVE.FROM_BOTTOM_RIGHT:
			case TRACER_MOVE.FROM_BOTTOM_LEFT:
				switch (move_type) {
					case (TRACER_MOVE.FROM_BOTTOM_CENTER):
					enemy.xstart=960;
					break;
				
					case(TRACER_MOVE.FROM_BOTTOM_LEFT):
					enemy.xstart=744;
					break;
				
					case (TRACER_MOVE.FROM_BOTTOM_RIGHT):
					enemy.xstart=1176;
					break;
				}
			
				enemy.x=xstart;
			
				enemy.ystart = 1130;
				enemy.y = 1130;
			
				enemy.image_angle = 90;
			break;
			
			case TRACER_MOVE.FROM_TOP_CENTER:
			case TRACER_MOVE.FROM_TOP_RIGHT:
			case TRACER_MOVE.FROM_TOP_LEFT:
				switch (move_type) {
					case (TRACER_MOVE.FROM_TOP_CENTER):
					enemy.xstart=960;
					break;
				
					case(TRACER_MOVE.FROM_TOP_LEFT):
					enemy.xstart=744;
					break;
				
					case (TRACER_MOVE.FROM_TOP_RIGHT):
					enemy.xstart=1176;
					break;
				}
			
				enemy.x=xstart;
			
				enemy.ystart = -50;
				enemy.y = ystart;
			
				enemy.image_angle = 270;
			break;
					
			case TRACER_MOVE.FROM_LEFT:
				enemy.image_angle = 0;
			break;
			
			case TRACER_MOVE.FROM_RIGHT:
				enemy.image_angle = 180;
			break;
		}
	}
}