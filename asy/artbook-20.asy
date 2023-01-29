if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-20";
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

size(7.5cm,0);
import solids;
import graph3;

currentprojection=orthographic(40,10,10);

real a=2, r=4, h=5, l=(r/h)^2, m=sqrt(l*h^2-a^2);
limits((-r,-r,-h),(2r,r,1.2*h));
triple pA1=(0,0,-h), pA2=-pA1, pB1=(r,0,-h), pB2=-pB1,
pO=(0,0,0), pI=(a,0,-sqrt(a^2/l));
triple F1(real y){return (a,y,sqrt((a^2+y^2)/l));}
triple F2(real y){return (a,y,-sqrt((a^2+y^2)/l));}
path3 b1=graph(F1,-r,r,operator ..),
b2=graph(F2,-r,r,operator ..);
triple v1=(0,2m,0),v2=(0,0,2h),p0=(a,-m,-h);
path3 pl1=plane(v1,v2,p0);

draw(cone(pA1,r,h,Z,1),1bp+blue,longitudinalpen=nullpen);
draw(cone(pA2,r,h,-Z,1),1bp+blue,longitudinalpen=nullpen);

// Figure prévue initialement avec transparence du cône (+opacity(.6))
// supprimée dans les 2 lignes suivantes pour un meilleur rendu ci-contre.
draw(surface(cone(pA1,r,h,Z,1)),lightgray+white);
draw(surface(cone(pA2,r,h,-Z,1)),lightgray);

draw(surface(pl1),green+opacity(.6));
draw(pI--pB1^^pA2--pB2);
draw(pB1--pA1--pA2^^pI--pO--pB2,dashed);
draw(b1^^b2,1bp+red);

dot(pB1--pA1--pA2^^pI--pO--pB2);
dot((a,m,-h)--(a,m,h)--(a,-m,h)--(a,-m,-h));
dot(Label("$a$",align=-Y+X),(a,0,0));
label("$O$",pO,2E);
xaxis3("$x$",Arrow3);
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
