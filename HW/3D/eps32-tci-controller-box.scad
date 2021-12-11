$fn=50;

module pcb(){
difference(){
    cube([100,150,1.5], center=true);
    translate([45,70,-5])cylinder(h=10,d=3);
    translate([-45,70,-5])cylinder(h=10,d=3);
    translate([-45,-70,-5])cylinder(h=10,d=3);
    translate([45,-70,-5])cylinder(h=10,d=3);
    translate([0,-35,-5])cylinder(h=10,d=30.5);   
    }
}
module encoder()
{
    union(){
    cylinder(d=30,h=22);
     translate([0,0,22])cylinder(d=6,h=16);   
    }
}

module ufeet()
    {
    difference() { translate([-49.9,52,-22]) cube ([10,20,60]);
        {
        rotate([16,0,0])color([0,1,0]) translate([-50,-65,0])cube([100,150,70]);   
         rotate([16,0,0])translate([-45,70,-12])cylinder(h=20,d=2.4);   
        }
    }
}


module bottom_pcb()
{
      difference(){
      cube([100,144,1.5],center=true);
       rotate([16,0,0])translate([-45,-64,10])cylinder(h=20,d=2.4);    
       rotate([16,0,0])translate([45,-64,10])cylinder(h=20,d=2.4);
       rotate([0,0,0])translate([45,64,-10])cylinder(h=20,d=2.4);    
      rotate([0,0,0])translate([-45,64,-10])cylinder(h=20,d=2.4);     
      }
}
rotate([16,0,0])color([0,1,0])  pcb();
rotate([16,0,0])color([1,1,1])translate([0,-35,-8])encoder();
color([0,0,1])translate([0,0,-22])bottom_pcb();
ufeet();
