if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-14";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.prc=false;
defaultpen(fontsize(11 pt));
defaultpen(linewidth(0.7pt));
settings.render=1;

import three;
import graph3;
size(300,0);
currentprojection=perspective((0.5,0.5,0.1));
currentlight=Headlamp;
real radius=0.5;
triple w1=radius*dir(90,60);
triple w2=radius*dir(90,180);
triple w3=radius*dir(90,360-60);
triple w4=O+sqrt((abs(w2-w1)*sin(radians(60)))^2-(abs(w2-w1)/2*sin(radians(30)))^2)*Z;
//write(abs(w2-w1));
//write(abs(w4-w1));

draw("$\sqrt{(L\sin(60))^2-(\frac{L}{2}\sin(30))^2}$",O--w4,W,Arrows3);

dot(Label("$A$"),w1,S);
dot(Label("$B$"),w2,E);
dot(Label("$C$"),w3,W);
dot(Label("$D$"),w4,W);
draw(surface(
w1--w2--w4--cycle
^^w2--w3--w4--cycle
^^w3--w1--w4--cycle
^^w3--w1--w2--cycle
), surfacepen=material(palegreen+opacity(0.5)));

draw(w1--w2--w4--cycle
^^w2--w3--w4--cycle
^^w3--w1--w4--cycle
^^w3--w1--w2--cycle, white);

draw(Label("$x$",position=EndPoint,align=dir(-90)),O--0.3X,Arrow3);draw(O--0.5X);
draw(Label("$y$",position=EndPoint,align=N),O--0.4Y,Arrow3);draw(O--0.5Y);
draw(Label("$z$",position=EndPoint,align=W),O--0.8Z,Arrow3);draw(O--0.2Z);
