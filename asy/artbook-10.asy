if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-10";
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
size(300,0);
real radius=0.5, theta=36, phi=60;
currentprojection=perspective((0.3,1,0.7));
currentlight=Headlamp;
real r=1.1;

triple w1=radius*dir(90,0);
triple w2=radius*dir(90,360/5);
triple w3=radius*dir(90,2*(360/5));
triple w4=radius*dir(90,3*(360/5));
triple w5=radius*dir(90,4*(360/5));
triple w6=abs(w1-w2)*Z+radius*dir(90,1*(36));
triple w7=abs(w1-w2)*Z+radius*dir(90,3*(36));
triple w8=abs(w1-w2)*Z+radius*dir(90,5*(36));
triple w9=abs(w1-w2)*Z+radius*dir(90,7*(36));
triple w10=abs(w1-w2)*Z+radius*dir(90,9*(36));
triple w11=radius*dir(90,(36));
triple ww12=abs(w1-w2)*Z;
triple w12=abs(w1-w2)*Z+abs(w1-w11)*Z;
triple w=O-abs(w1-w11)*Z;
dot(Label("$A$"),w1,W);
dot(Label("$B$"),w2,dir(-90));
dot(Label("$C$"),w3,E);
dot(Label("$D$"),w4,3*N);
dot(Label("$E$"),w5,3*N);
dot(Label("$F$"),w6,dir(-135));
dot(Label("$G$"),w7,E);
dot(Label("$H$"),w8,NE);
dot(Label("$I$"),w9,NE);
dot(Label("$J$"),w10,2*W);
dot(Label("$K$"),w11,dir(-100));
dot(Label("$L$"),w12,dir(90));
dot(Label("$M$"),ww12,dir(0));
dot(Label("$N$"),w,dir(-135));
dot(Label("$O$"),O,dir(-45));
dot(w1^^w2^^w3^^w4^^w5^^w6^^w7^^w8^^w9^^w10^^w11^^w12^^w^^O^^ww12);
draw(surface(w7--w8--w12--cycle^^w10--w6--w12--cycle^^w9--w12--w10--cycle^^w9--w12--w8--cycle^^w1--w6--w10--cycle^^w5--w10--w9--cycle^^w5--w9--w4--cycle^^w9--w4--w8--cycle^^w3--w8--w7--cycle^^w1--w5--w10--cycle^^w--w5--w1--cycle^^w3--w4--w8--cycle^^w5--w4--w--cycle^^w4--w3--w--cycle^^w1--w2--w--cycle^^w2--w3--w--cycle^^w2--w6--w7--cycle^^w7--w6--w12--cycle^^w1--w2--w6--cycle^^w2--w7--w3--cycle), surfacepen=material(blue+opacity(0.5)));
draw(w1--w6--w2--w7--w3--w8--w4--w9--w5--w10--cycle^^w12--w6^^w12--w7^^w12--w8^^w12--w9^^w--w1^^w--w2^^w--w3^^w--w4^^w--w5^^w1--w2--w3--w4--w5--cycle^^w6--w7--w8--w9--w10--cycle,white);
draw(w12--w10);

draw("$36^\circ$",arc(O,w1,w11),align=3*dir(90,50), Arrows3,light=currentlight);

path3 g1 = circle(c=O, r=radius, normal=Z);
path3 g2 = circle(c=ww12, r=radius, normal=Z);
path3 g3 = circle(c=w12, r=radius, normal=Z);
path3 g4 = circle(c=w, r=radius, normal=Z);
draw(g1^^g2^^g3^^g4, dashed);
draw(surface(g3^^g4), orange+opacity(0.5));
pen ww=linewidth(0.2mm);
draw("$r$",w11--w6,W,dashed+ww);
draw("$r$",O--w11,dashed+ww,Arrow3);
draw("$r$",O--ww12,W,dashed);
draw("$r$",w7--(w7.x,w7.y,0),W,dashed+ww);
draw("$r$",w8--(w8.x,w8.y,0),W,dashed+ww);
draw("$r$",w9--(w9.x,w9.y,0),W,dashed+ww);
draw("$r$",w10--(w10.x,w10.y,0),W,dashed+ww);
dot((w7.x,w7.y,0)^^(w8.x,w8.y,0)^^(w9.x,w9.y,0)^^(w10.x,w10.y,0));

draw("$w$",ww12--w12,W,dashed+ww);
draw("$w$",O--w,W,dashed+ww);
draw("$w$",w11--w2,N,dashed+ww);
draw("$w$",w10--(w10.x,w10.y,abs(O-w12)),W,dashed+ww,Arrows3);
draw("$w$",w3--(w3.x,w3.y,-abs(O-w)),E,dashed+ww,Arrows3);
