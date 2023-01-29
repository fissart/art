if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-3";
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
import three;
size3(200,0);
currentprojection=perspective(4,6,3);
real x(real t) {return 1+cos(2pi*t);}
real y(real t) {return 1+sin(2pi*t);}
real z(real t) {return t;}
real x1(real t) {return -2pi*sin(2pi*t);}
real y1(real t) {return 2pi*cos(2pi*t);}
real z1(real t) {return 1;}
real x2(real t) {return -4pi^2*cos(2pi*t);}
real y2(real t) {return -4pi^2*sin(2pi*t);}
real z2(real t) {return 0;}
real t=0.7;
triple pp=(x(t),y(t),z(t));
triple tt=(x1(t),y1(t),z1(t));
triple nn=(x2(t),y2(t),z2(t));
triple ww=cross(tt,nn);
triple cc=pp+length(ww)/length(tt)^3*unit(nn);
path3 p=graph(x,y,z,0,1,operator --);
dot((x(t),y(t),z(t)));
draw(pp--pp+unit(tt), Arrow3, p=gray(0.6), light=currentlight );
draw(pp--pp+unit(ww), Arrow3, p=orange, light=currentlight );
draw(pp--pp+length(ww)/length(tt)^3*unit(nn),Arrow3, p=orange, light=currentlight );
//draw(pp--pp+unit(nn), orange, Arrow3 );
dot(pp--pp+length(ww)/length(tt)^3*unit(nn), orange );
draw((plane(O=pp+unit(tt)+unit(nn), -2*unit(tt), -2*unit(nn))), gray + 0.1cyan);
//draw(surface(pp+unit(tt)-unit(nn)--pp+unit(tt)+unit(nn)--pp-unit(tt)+unit(nn)--pp-unit(tt)-unit(nn)--cycle),orange);
draw(surface(plane(O=pp+unit(ww)+unit(nn), -2*unit(ww), -2*unit(nn))),blue+opacity(.2));
draw(surface(plane(O=pp+unit(tt)+unit(ww), -2*unit(tt), -2*unit(ww))),magenta+opacity(.5));
draw(p, Arrow3);
//path3 g=pp..cc+unit(tt)..cc+unit(nn)..cc-unit(tt)..cycle;
//draw(g);
path3 g = circle(c=cc, r=length(ww)/length(tt)^3, normal=ww);
draw(g);
draw(surface(g), blue+opacity(0.3));
axes3("$x$","$y$","$z$", Arrow3);
