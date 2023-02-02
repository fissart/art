if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-12";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.prc=false;
defaultpen(fontsize(11 pt));
defaultpen(linewidth(0.7pt));
//settings.render=1;

import three;
import graph3;
size(300,0);
currentprojection=perspective((1,2,1.2));
currentlight=Headlamp;
real radius=0.5;
triple w1=radius*dir(90,45);
triple w2=radius*dir(90,135);
triple w3=radius*dir(90,180+45);
triple w4=radius*dir(90,180+135);
triple w5=O+abs(O-w1)*Z;
triple w6=O-abs(O-w1)*Z;

dot(Label("$E$"),w5,W+N);
dot(Label("$F$"),w6,SE);
dot(Label("$A$"),w1,S);
dot(Label("$B$"),w2,S);
dot(Label("$C$"),w3,E);
dot(Label("$D$"),w4,W);
draw(surface(
w1--w2--w5--cycle
^^w2--w3--w5--cycle
^^w3--w4--w5--cycle
^^w4--w1--w5--cycle
^^w1--w2--w6--cycle
^^w2--w3--w6--cycle
^^w3--w4--w6--cycle
^^w4--w1--w6--cycle
), surfacepen=material(palegreen+opacity(0.9)));
draw(
w1--w2--w5--cycle
^^w2--w3--w5--cycle
^^w3--w4--w5--cycle
^^w4--w1--w5--cycle
^^w1--w2--w6--cycle
^^w2--w3--w6--cycle
^^w3--w4--w6--cycle
^^w4--w1--w6--cycle
, white);
draw("$OA$",O--0.5Z,W,Arrows3);

draw(Label("$x$",position=EndPoint,align=dir(-90)),O--0.1X,Arrow3);draw(O--0.3X);
draw(Label("$y$",position=EndPoint,align=N),O--0.1Y,Arrow3);draw(O--0.3Y);
draw(Label("$z$",position=EndPoint,align=W),O--0.1Z,Arrow3);draw(O--0.3Z);
