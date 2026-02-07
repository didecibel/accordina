include <variables.scad>

linear_extrude(ep, center=true, convexity=10,twist=0)
polygon([[0,0],[0,long2],[hpd+htc,long2],[hpd+htc,long2-longh],[htc,long2-longb],[htc,0]]);