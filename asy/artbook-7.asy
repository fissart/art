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
//settings.render=1;

// Riemann surface of z^{1/n}
import graph3;
import palette;

int n=3;

size(200,300,keepAspect=false);

currentprojection=orthographic(10,10,10);
currentlight=(10,10,5);
triple f(pair t) {return (t.x*cos(t.y),t.x*sin(t.y),t.x^(1/n)*sin(t.y/n));}

surface s=surface(f,(0,0),(1,2pi*n),8,16,Spline);
s.colors(palette(s.map(zpart),Rainbow()));

draw(s,meshpen=black,render(merge=true));
