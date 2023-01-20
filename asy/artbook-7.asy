if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-7";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.prc=false;
defaultpen(fontsize(11 pt));
defaultpen(linewidth(0.7pt));
settings.render=2;

import graph3;
import palette;
import contour3;
size(300,0);

real f(real x, real y, real z) {
return cos(x)*sin(y)+cos(y)*sin(z)+cos(z)*sin(x);
}

surface sf=surface(contour3(f,(-2pi,-2pi,-2pi),(2pi,2pi,2pi),12));
sf.colors(palette(sf.map(abs),Gradient(red,yellow)));

currentlight=nolight;

draw(sf,render(merge=true));
