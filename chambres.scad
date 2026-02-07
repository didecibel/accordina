//chambres


module ailette(){
linear_extrude(epa, center=true, convexity=10,twist=0)
polygon([[0,0],[0,long1],[hpd+htc,long1],[hpd+htc,long1-longh],[htc,long1-longb],[htc,0]]);
}
module ailette2(){
linear_extrude(ep, center=true, convexity=10,twist=0)
polygon([[0,0],[0,long2],[hpd+htc,long2],[hpd+htc,long2-longh],[htc,long2-longb],[htc,0]]);
}



color("green",0.5){

translate([decal,0,-htc]){
   
    
for(i=[1:2:nb]){
translate([i*etv-etv/2+dtb/2+epa/2,lag/2+drtub/2+epc/2,0]){
translate([etv/2-etv+ep,0,0])
cube([long000,epc,htc]);
rotate([-90,-90,90])
translate([0,epc,-long0/2])
ailette();

}}

for(i=[1:2:nb-1]){
translate([i*etv+etv/2+drtub/2,lag/2-drtub/2-epc-epc/2,0]){
translate([-etv+etv/2+ep,0,0])
cube([long000,epc,htc]);
rotate([90,-90,90])
translate([0,0,long0/2])
ailette();
}}



for(i=[0:1:nb/2-1]){
translate([i*etv+etv+epa/2,lag-drtub/2-epc/2,0]){
translate([i*etv+etv/2+dtb/2+ep/2,-lag/2,0])
rotate([0,-90,0])
ailette2();    

translate([i*etv+etv/2+long0+dtb/2-ep/2,-lag/2,0]) 
rotate([0,-90,0])    
ailette2(); //ailette2

}}


for(i=[0:1:nb/2]){
translate([i*etv+etv,lag/2+epc/2,0]){
translate([i*etv-long0/2+ep/2,drtub/2,0])
rotate([180,-90,0])
ailette2();
translate([i*etv-ep+long0/2+ep/2,drtub/2,0])
rotate([180,-90,0])
ailette2();
}}


}}









