if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-13";
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

import graph3;
size(300,0);
currentprojection=perspective((1,2,1.2));
currentlight=Headlamp;
real radius=0.5;
triple w1=radius*dir(90,45);
triple w2=radius*dir(90,135);
triple w3=radius*dir(90,180+45);
triple w4=radius*dir(90,180+135);
triple w5=w1+abs(w2-w1)*Z;
triple w6=w2+abs(w2-w1)*Z;
triple w7=w3+abs(w2-w1)*Z;
triple w8=w4+abs(w2-w1)*Z;

dot(Label("$A$"),w1,W);
dot(Label("$B$"),w2,SE);
dot(Label("$C$"),w3,E);
dot(Label("$D$"),w4,W);
dot(Label("$E$"),w5,dir(-135));
dot(Label("$F$"),w6,E);
dot(Label("$G$"),w7,N);
dot(Label("$H$"),w8,W);
draw(surface(
w1--w2--w3--w4--cycle
^^w5--w6--w7--w8--cycle
^^w1--w2--w6--w5--cycle
^^w2--w3--w7--w6--cycle
^^w3--w4--w8--w7--cycle
^^w1--w4--w8--w5--cycle
), surfacepen=material(palegreen+opacity(0.5)));
draw(
w1--w2--w3--w4--cycle
^^w5--w6--w7--w8--cycle
^^w1--w2--w6--w5--cycle
^^w2--w3--w7--w6--cycle
^^w3--w4--w8--w7--cycle
^^w1--w4--w8--w5--cycle
, white);
draw(Label("$x$",position=EndPoint,align=dir(-90)),O--0.1X,Arrow3);draw(O--0.3X);
draw(Label("$y$",position=EndPoint,align=N),O--0.1Y,Arrow3);draw(O--0.3Y);
draw(Label("$z$",position=EndPoint,align=W),O--0.1Z,Arrow3);draw(O--0.3Z);
