if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-16";
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
pair V2=rotate(-90)*(V);
pair V3=rotate(-90)*(V)+0.9*(V2-V1);
path l=-2*V--2*V;
pair[] I=intersectionpoints(l,g);
dot(I);

pair T=(0.3,-1.2), R=T+0.3*(3,-0.2);
dot(midpoint(l));
dot(V1^^T^^R);

line l1=line(-2*V,2*V);

draw(Label("$\mathcal{L}_1$",Relative(.99),align=dir(-45)), l1,
1bp+dashed+.8red);
line l2=perpendicular(A,l1);
draw(Label("$\mathcal{L}_2$",Relative(0),align=dir(90)), l2, 1bp+dashed+0.5*orange);
line l3=parallel(V2,l1);draw(l3,green);line l4=parallel(V3,l1);draw(l4,green);
label("$PP$",A,3*NW,UnFill);
label("$V$",V1,W,UnFill);
label("$P_1$",I[0],3*dir(-110),UnFill);
label("$P_2$",I[1],2*NE,UnFill);

transform proj=projection(l4);
point Mp=proj*T;
point Mp1=proj*R;
dot(Mp^^Mp1);
dot(Label("$P_T$",Mp,dir(-90),UnFill),orange);
dot(Label("$P_R$",Mp1,dir(-90),UnFill),orange);
dot(Label("$T$",T,W,UnFill));
dot(Label("$R$",R,N,UnFill));
circle C=circle(Mp,length(Mp-T));
circle C1=circle(Mp1,length(Mp1-R));
draw(C^^C1,dashed);
pair[] II=intersectionpoints(l4,C);
dot(II);
pair[] II1=intersectionpoints(l4,C1);
dot(II1);

transform proj1=projection(l3);
point w1=proj1*II[0], w2=proj1*II[1];
point ww1=proj1*II1[0], ww2=proj1*II1[1];
point T1=proj1*T, R1=proj1*R;
dot(w1^^w2^^ww1^^ww2^^T1^^R1);
dot("$W_1$",w1,dir(90));
dot("$W_2$",w2,dir(-135));
dot("$W_3$",ww1,dir(-120));
dot("$W_4$",ww2,dir(90));
dot("$T_1$",T1,dir(90));
dot("$R_1$",R1,dir(90));
draw(II[0]--w1^^II[1]--w2^^II1[0]--ww1^^II1[1]--ww2^^T--T1^^R--R1, dashed);
draw(I[1]--w1^^I[0]--w2^^I[1]--ww1^^I[0]--ww2^^A--T1^^A--R1, dashed);
draw(T--R, orange+linewidth(0.5mm));
pair[] T3=intersectionpoints(T1--A,w2--I[0]);
pair[] R3=intersectionpoints(R1--A,ww1--I[1]);

dot(R3[0]);
dot(T3[0]);
draw(T3[0]--R3[0], orange+linewidth(0.5mm));
pair R5=rotate(90)*(T-R)+T;
pair RW=rotate(90)*(T-R)+R;
dot("$R_W$",RW,E,UnFill);
dot("$R_5$",R5,W,UnFill);
draw(T--R5--RW--R--cycle, orange+linewidth(0.5mm));
//draw(T--R5, orange+linewidth(0.5mm));
point S1=proj1*R5;
point S2=proj*R5;
dot(S1^^S2);
dot("$S_1$",S1,N);
dot("$S_2$",S2,N);
circle CC=circle(S2,length(R5-S2));
draw(CC,dashed);
pair[] I5=intersectionpoints(l4,CC);
point j=proj1*I5[1], k=proj1*I5[0];
dot(I5);
dot(j);
dot(k);
draw(j--I5[1]^^k--I5[0]^^S1--R5,dashed);
draw(j--I[0]^^k--I[1]^^S1--A,dashed);
pair[] R9=intersectionpoints(S1--A,j--I[0]);
dot(R9[0]);

line l5=line(T3[0],R9[0]);
line l6=line(T3[0],R3[0]);
draw(l5^^l6,dashed+orange);

//line l5=line(T3[0],R9[0]);
line l7=line(intersectionpoint(l5,l1),R3[0]);
line l8=line(intersectionpoint(l6,l1),R9[0]);
draw(T3[0]--R9[0]--intersectionpoint(l7,l8)--R3[0]--cycle, orange+linewidth(0.5mm));
draw(l7^^l8,dashed+orange);
dot("$T_3$",intersectionpoint(l6,l1),N);
dot("$T_8$",intersectionpoint(l7,l1),N);

//show(currentcoordsys);

perpendicular(A,NE,V1-A,Fill(blue));

