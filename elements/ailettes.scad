include <variables.scad>

linear_extrude(epa, center=true, convexity=10,twist=0)
polygon([[0,0],[0,long1],[hpd+htc,long1],[hpd+htc,long1-longh],[htc,long1-longb],[htc,0]]);