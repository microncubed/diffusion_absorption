// Gmsh project created on Mon Feb 21 13:10:14 2022
SetFactory("OpenCASCADE");
//+
Disk(1) = {0,0,0,100,100};
//+
Disk(2) = {0,0,0,10,10};
//+
BooleanDifference(3) = { Surface{1}; Delete; }{ Surface{2}; Delete; };
//+
Physical Curve("inner", 4) = {2};
//+
Physical Curve("outer", 5) = {1};
//+
Physical Surface("all", 6) = {3};
//+
Transfinite Curve {2} = 30 Using Progression 1;
