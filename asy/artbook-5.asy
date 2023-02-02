if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-5";
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

size(300,0);
import graph3;
currentprojection =perspective(3,4,2);
pair a=(-1.5,-1);
pair b=(1,1.5);

real f(pair xy) {
real x = xy.x; real y = xy.y;
return (6/5 - x^2/2) * (-y^4/2 + y^3/15 + y^2 + y/5 + 1);
}
real f1(pair xy) {
real x = xy.x; real y = xy.y;
return -x * (-y^4/2 + y^3/15 + y^2 + y/5 + 1);
}
real f2(pair xy) {
real x = xy.x; real y = xy.y;
return (6/5 - x^2/2) * (-2*y^3 + y^2/5 + 2*y + 1/5);
}
real w=1.1 ;
real x1(real t){return t;}
real y1(real t){return w;}
real z1(real t){pair z=(t,w); return f(z);}
path3 l1=graph(x1,y1,z1,a.x,b.x);
real ww=.4;
real x2(real t){return ww;}
real y2(real t){return t;}
real z2(real t){pair z=(ww,t); return f(z);}
path3 l2=graph(x2,y2,z2,a.y,b.y);
triple Q=(ww,w,f((ww,w)));
draw(l1, orange);
draw(l2, white);
dot(Label("$P$",align=2N),Q);

pair tww=(Q.x,Q.y);
real m1=f1(tww);
path3 tgx=Q-unit((Q.x+1,Q.y,Q.z+m1)-Q)--(Q+unit((Q.x+1,Q.y,Q.z+m1)-Q));
draw(tgx, orange);
pair tww2=(Q.x,Q.y);
real m2=f2(tww2);
path3 tgy=Q-unit((Q.x,Q.y+1,Q.z+m2)-Q)--(Q+unit((Q.x,Q.y+1,Q.z+m2)-Q));
draw(tgy, white);
draw(surface(plane(
O=Q+unit((Q.x,Q.y+1,Q.z+m2)-Q)+unit((Q.x+1,Q.y,Q.z+m1)-Q),
-2*unit((Q.x,Q.y+1,Q.z+m2)-Q),
-2*unit((Q.x+1,Q.y,Q.z+m1)-Q)
)), blue + opacity(0.5));

surface s = surface(f, a, b, Spline);
draw(s, surfacepen=paleyellow);axes3("$x$","$y$","$z$", Arrow3);
