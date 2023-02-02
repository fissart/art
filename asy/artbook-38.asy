if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-38";
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

import graph3;
import solids;
currentprojection=perspective(1,1,1);
currentlight=(0,2,1);
defaultrender.merge=true;
size(12cm,0);
pair k=(1,0.2);
real r=abs(k);
real theta=angle(k);
real x(real t) { return 1-r^t*cos(t*theta); }
real y(real t) { return r^t*sin(t*theta); }
real z(real t) { return 0; }
real u(real t) { return x(t)/(x(t)^2+y(t)^2+1); }
real v(real t) { return y(t)/(x(t)^2+y(t)^2+1); }
real w(real t) { return (x(t)^2+y(t)^2)/(x(t)^2+y(t)^2+1); }
real nb=2;
//for (int i=0; i<12; ++i) draw((0,0,0)--nb*(Cos(i*30),Sin(i*30),0),yellow);
for (int i=0; i<=nb; ++i) draw(circle((0,0,0),i),lightgreen+white);
path3 p=graph(x,y,z,-200,40,operator ..);
path3 q=graph(u,v,w,-200,40,operator ..);
revolution sph=sphere((0,0,0.5),0.5);
draw(surface(sph),green+white+opacity(0.2));
draw(p,blue);
draw(q,white);
triple
A=(0,0,1),
B=(u(40),v(40),w(40)),
C=(x(40),y(40),z(40));
path3 L=A--C;
draw(L);
pen p=orange;
dot("$(0,0,1)$",A,N);
dot("$(u,v,w)$",B,NE,orange);
dot("$(x,y,0)$",C,dir(-90));
axes3("$x$","$y$","$z$", extend=true, min=(0,0,0),max=(2,1,0.5), p, Arrow3);
