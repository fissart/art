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
settings.render=2;

import graph;
size(300,0);

real f(real x) {return x*sin(x);}
pair F(real x) {return (x,f(x));}

dotfactor=7;

void subinterval(real a, real b)
{
path g=box((a,0),(b,f(b)));
filldraw(g,orange+opacity(0.1)+linewidth(1.5));
draw(box((a,f(a)),(b,0)));
}

int a=-9, b=9;

xaxis("$x$",0,b);
yaxis("$y$",0);

draw(graph(f,a,b,n=200, Hermite));

int n=2;

for(int i=a; i <= b; ++i) {
if(i < b) subinterval(i,i+1);
if(i <= n) labelx(i);
dot(F(i));
}

int i=n;
labelx("$\ldots$",++i);
labelx("$k$",++i);
labelx("$k+1$",++i);
labelx("$\ldots$",++i);
