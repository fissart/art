if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-15";
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

size(12cm,0);
//import markers;
import geometry;
//import math;
path g=scale(1)*unitcircle;
path gg=scale(1.5)*unitcircle;
path ggg=scale(2.1)*unitcircle;
draw(g);
pair A=(0,0);
pair V=unit((1,.2));
pair V1=rotate(90)*(V);
path l=-2*V--2*V;
dot(intersectionpoints(l,g));
pair[] I=intersectionpoints(l,g);

pair P=(0.3,-0.5), Q=1.5*(V1-A)/2+P;
pair P1=(length(V)*cos(-2),length(V)*sin(-2)), Q1=4.5*(V1-A)/2+P1;
pair P2=(2,-1), Q2=4.5*(V1-A)/2+P2;

dot(midpoint(l)^^V1^^P^^P1^^P2);
draw(I[0]--I[0]+0.6*(P-I[0])--I[1]^^I[1]--I[1]+0.6*(P-I[1])--I[0], 1*orange+linewidth(0.2mm));

draw(I[0]--P--I[1]^^Q--I[1]--I[0]--cycle, 1*blue);
draw(I[0]--P1--I[1]^^Q1--I[1]--I[0]--cycle, 0.8*orange);
draw(I[0]--P2--I[1]^^Q2--I[1]--I[0]--cycle, 0.8*paleblue);
line l1=line(-2*V,2*V);
line l1=line(-2*V,2*V);
draw(Label("$\mathcal{L}_1$",Relative(.99),align=dir(-45)), l1,
1bp+dashed+.8red);
line l2=perpendicular(A,l1);
draw(Label("$\mathcal{L}_2$",Relative(.99),align=dir(-90)), l2,
1bp+dashed+0.5*orange);
line d2=parallel(I[0],l2);
draw(d2,.8green);
distance("$www$",offset=10mm,joinpen=dashed,A,I[0],orange);
draw(I[1]--A,StickIntervalMarker(1,3,size=15,angle=45,blue));
draw(I[0]--A,StickIntervalMarker(1,3,size=15,angle=45,blue));
label("$PP$",A,SE,UnFill);
label("$V$",V1,2*NE,UnFill);
label("$P_1$",I[0],3*dir(-110),UnFill);
label("$P_2$",I[1],2*NE,UnFill);

//show(currentcoordsys);
perpendicular(A,NE,V1-A,Fill(blue));
markangle(Label("$\alpha$",Relative(0.5),UnFill),n=3,radius=15,I[1],P,I[0],ArcArrow(5mm,2mm),red);
markangle(Label("$\alpha_2$",Relative(0.25)),n=3,radius=-5,I[1],Q,I[0],p=0.5blue);

markangle(Label("$\alpha_1$",Relative(0.5)),n=3,radius=15,I[1],P1,I[0],ArcArrow(5mm,2mm),red);
markangle(Label("$\gamma_1$",Relative(0.5)),n=3,radius=-15,I[1],Q1,I[0],p=0.5blue);

markangle(Label("$\alpha_3$",Relative(0.25)),n=3,radius=15,I[1],P2,I[0],ArcArrow(5mm,2mm),red);
markangle(Label("$\omega$",Relative(0.5)),n=3,radius=-15,I[1],Q2,I[0],p=0.5blue);
