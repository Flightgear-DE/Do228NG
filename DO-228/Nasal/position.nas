# =========================
#  Word map by Helijah 2013
# =========================

var loop = func {
  var poslatitude = getprop("position/latitude-deg");
  var poslongitude = getprop("position/longitude-deg");
  
  poslatitude = poslatitude + 90;
  poslatitude = poslatitude / 180;
  poslatitude = poslatitude - 0.4794;
  
  poslongitude = poslongitude + 180;
  poslongitude = poslongitude / 360;
  poslongitude = poslongitude - 0.6489;
  
  setprop("/position/map/poslat", poslatitude);
  setprop("/position/map/poslon", poslongitude);
  
  settimer(loop, 0);
}

loop();
