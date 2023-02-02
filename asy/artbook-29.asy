if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-29";
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
size(300,0);
currentprojection=perspective(3,1,2);
currentlight=light((0,0,3),(0,0,-3));
triple vectaxe=(1,0,0);
transform3 r=rotate(-100,vectaxe);
triple pA=(1.5,0.9,1), pB=(4,0,1), pC=(1.2,0,4), p1=(2,-0.9,1.5);
path3 tri=pA--pB--pC--cycle;
path3 tri1=pA--p1--pC--cycle;
path3 tri2=p1--pB--pC--cycle;
path3 tri3=pA--pB--p1--cycle;
path3 trip=r*tri;
path3 trip1=r*tri1;
path3 trip2=r*tri2;
path3 trip3=r*tri3;
draw(surface(tri^^tri1^^tri2^^tri3^^trip^^trip1^^trip2^^trip3),orange+opacity(0.5));
draw(O--X,Arrow3); // En attendant
draw(O--Y,Arrow3); // d’avoir les axes
draw(O--Z,Arrow3); // avec graph3.asy
label("$x$", 2*X, NW);
label("$y$", 2*Y, SE);
label("$z$", Z, E);
dot(p1^^pA^^pB^^pC^^r*pA^^r*pB^^r*pC^^r*p1);
pen dotteddash=linetype("0 4 4 4"),
p2=.8bp+blue;
draw((-1,0,0)--(4,0,0),red);
draw(pA--(pA.x,0,0)--r*pA,red+dotteddash);
draw(pB--(pB.x,0,0)--r*pB,red+dotteddash);
draw(pC--(pC.x,0,0)--r*pC,red+dotteddash);
draw(arc((pA.x,0,0),pA,r*pA,CCW),p2,Arrow3);
draw(arc((pB.x,0,0),pB,r*pB,CCW),p2,Arrow3);
draw(arc((pC.x,0,0),pC,r*pC,CCW),p2,Arrow3);
