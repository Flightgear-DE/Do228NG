###############################################################################
##
##   Dornier DO J II - f - Bos (Wal)
##   by Marc Kraus :: Lake of Constance Hangar
##
##   Copyright (C) 2012 - 2014  Marc Kraus  (info(at)marc-kraus.de)
##
###############################################################################
# =============================================================================
#                          electrical settings             
# =============================================================================

beacon_switch = props.globals.getNode("controls/lighting/strobe", 0);
aircraft.light.new("controls/lighting/strobe-state", [0.05,0.1,0.05,0.1,0.05,1.30], beacon_switch);

beacon_switch = props.globals.getNode("controls/lighting/beacon", 1);
aircraft.light.new("controls/lighting/beacon-state", [1.0, 1.0], beacon_switch);

var sbc1 = aircraft.light.new( "/sim/model/lights/sbc1", [0.15,0.1,0.15,0.05,1.30] );
sbc1.interval = 0.1;
sbc1.switch( 1 );

var sbc2 = aircraft.light.new( "/sim/model/lights/sbc2", [0.2, 0.3], "/sim/model/lights/sbc1/state" );
sbc2.interval = 0;
sbc2.switch( 1 );


