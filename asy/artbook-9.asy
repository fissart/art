if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-9";
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
triple F(pair uv) {
real t = uv.x;
real r = uv.y;
return (cos(t) + r*cos(t)*sin(t/2),
sin(t) + r*sin(t)*sin(t/2),
r*cos(t/2));
}
real r = 0.3;
surface moeb = surface(F, (0,-r), (2pi,r), Spline);
draw(moeb, surfacepen=material(blue, emissivepen=0.15 white), meshpen=black+thick());
