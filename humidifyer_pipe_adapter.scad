//humydifyer pipe adapter
//Designed by David Herrera
//If you find anything I produce useful. Consider sending some love.
//venmo @davidherrera55
//shib 0xA7315166a9ccC2682e8c25D66EA7c5e3d7563c40
//eth 0xA7315166a9ccC2682e8c25D66EA7c5e3d7563c40
//btc bc1qvaehlavm6w3tygf8rfmkea9keumv3mzt4y8and


//Build Notes
//opening is 33mm

//bent pipe diameter
od=33;
//this variable expands how long the pipe will be from opening to 
//opening at the closest point. default is od. 
expand=0;
leg=20;



//some maths
a=pow(od,2);
c=sqrt(a+a);
echo(c);


difference(){
    translate([-leg,od+expand,0])rotate([0,90,0])cylinder(d=od,h=leg,$fn=360);
    translate([-leg,od+expand,0])rotate([0,90,0])cylinder(d=od-3,h=leg,$fn=360);}
difference(){
    translate([od+expand,0,0])rotate([90,0,0])cylinder(d=od,h=leg,$fn=360);
    translate([od+expand,0,0])rotate([90,0,0])cylinder(d=od-3,h=leg,$fn=360);}
difference(){
rotate_extrude(angle=90,$fn=360)translate([od+expand,0,0])circle(d=od,$fn=360);
rotate_extrude(angle=90,$fn=360)translate([od+expand,0,0])circle(d=od-3,$fn=360);}