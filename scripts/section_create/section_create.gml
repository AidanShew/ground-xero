function section_create(section_script){
	section_script();
	show_debug_message("Enemies Off Screen: "+string(global.enemies_off_screen));
	
	if (global.enemies_off_screen >= 10) {
		
		global.enemies_off_screen=0;
		spawn_timer=90;
		spawned=false;
		section++;
	}
}