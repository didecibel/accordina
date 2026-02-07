
//tigettes

translate([decal,0,0]){
color("lightgrey"){

//coté droit

for(i=[1:1:nb-1]){

translate([i*etv+etv/2,lag/2-eth,0]){
translate([0,0,-longb-ep-0.5])
cylinder(htig+longb, d=dtige);
translate([0,0,hpd-hrtub+epe])
cylinder(hrtub, d=dtub);
translate([0,0,hpd+epe])
cylinder(etouch, d=diat); //touche

translate([0,0,-ep/2-longb-ep-0.5])
cylinder(ep, d= drtub+4); //clapet
    
}}


//centre

for(i=[1:2:nb]){

translate([i*etv,lag/2,0]){
translate([0,0,-longb-ep-0.5])
cylinder(htig+escalier, d=dtige);
translate([0,0,hpd-hrtub+epe])
cylinder(hrtub+escalier, d=dtub);
translate([0,0,hpd+epe+escalier])
cylinder(etouch, d=diat); //touche
    
translate([0,0,-ep/2-longb-ep-0.5])
cylinder(ep, d= drtub+4); //clapet

}}

for(i=[1:2:nb-1]){

translate([i*etv+etv,lag/2,0]){
translate([0,0,-longb-ep-0.5])
cylinder(htig+escalier, d=dtige);
translate([0,0,hpd-hrtub+epe])
cylinder(hrtub+escalier, d=dtub);
translate([0,0,hpd+epe+escalier])
cylinder(etouch, d=diat); //touvhe
    
translate([0,0,-ep/2-longb-ep-0.5])    
cylinder(ep, d= drtub+4); //clapet

}}




//coté gauche

for(i=[1:1:nb-1]){

translate([i*etv+etv/2,lag/2+eth,0]){
translate([0,0,-longb-ep-0.5])
cylinder(htig+escalier*2, d=dtige);
translate([0,0,hpd-hrtub+epe])
cylinder(hrtub+escalier*2, d=dtub);
    
translate([0,0,hpd+epe+escalier*2])
cylinder(etouch, d=diat); //touche

    
 translate([0,0,-ep/2-longb-ep-0.5])
cylinder(ep, d= drtub+4); //clapet
}}


}
}

