depth=1;

left=true;

section=1;

global.enemies_off_screen=0;

spawned=false;

spawn_timer=90;
spawn_timer2=120;
spawn_timer3=240;
tracer_section_spawn_timer=2000; //Spawn Timer for Tracer Section

trio_spawned = false //Indicates that trio has started once.

//Spawn Timers
swoop_spawn_timer = 90; //Required For create_swoop()
helix_spawn_timer = 90; //Required For create_helix()
cross_spawn_timer = 120; //Required for create_cross()
circuit_spawn_timer = 600; //Required for create_circuit()
//Required for create_pack();
pack_spawn_timer = 120;
pack_iteration = 0;