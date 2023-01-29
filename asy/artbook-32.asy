if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-32";
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

import tube;
import graph3;
size(300,0);
currentprojection = orthographic(4,4,14);
triple f(real x){
return (x, x*x, 0);
}
path3 p = graph(f, -1, 1, operator ..);

transform T(real t){
return scale(t*(1-t)/500);
}
draw(tube(p, unitcircle, T), purple);

draw(shift(relpoint(p,0))*scale3(0.1)*unitsphere, black);
draw(shift(relpoint(p,1))*scale3(0.1)*unitsphere, green);
