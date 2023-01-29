if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-17";
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
import geometry;
pair A=(0,0);
pair V=(1,.1);

pair V1=rotate(90)*(V);
pair V2=rotate(-90)*(V);
pair V3=rotate(-90)*(V)+0.9*(V2-V1);

path g=scale(length(A-V))*unitcircle;
draw(g);
path l=-2*V--2*V;
pair[] I=intersectionpoints(l,g);

pair T=(0.3,-0.8), f1=A-0.6*(A-V), f2=A+((length(A-V))^2/length(f1-A))*unit(A-V);
line l1=line(-2*V,2*V);
line l2=perpendicular(A,l1);
draw(Label("$\mathcal{L}_1$",Relative(.99),align=dir(-45)), l1, 1bp+dashed+.8red);
draw(Label("$\mathcal{L}_2$",Relative(0),align=dir(90)), l2, 1bp+dashed+0.5*orange);
dot("$P_1$",I[0],N);
dot("$P_2$",I[1],N);
dot("$F_1$",f1,N);
dot("$F_2$",f2,N);
dot("$PP$",A,NW);
dot("$V$",V1,W);
dot("$T$",T,dir(-90));
draw(T--f1^^T--f2);

pair T1=T+0.5*unit(V1-A);
pair T2=T+0.2*unit(f1-T);
dot("$T_1$",T1,dir(90));
dot("$T_2$",T2,dir(-50));
pair T3=intersectionpoint(T1--f1,T2--T2+unit(V1-A));
dot("$T_3$",T3,dir(50));
pair T4=T+0.4*unit(f2-T);
dot("$T_4$",T4,dir(-90));
pair T5=intersectionpoint(T1--f2,T4--T4+unit(V1-A));
dot("$T_5$",T5,N);
draw(T1--f1^^T1--f2,blue+dashed);
draw(T3--f2^^T5--f1^^T2--f2^^T4--f1,orange+dashed);
draw(T3--T2^^T5--T4^^intersectionpoint(T3--f2,T5--f1)--intersectionpoint(T2--f2,T4--f1)^^T--T1,yellow);
fill(T2--T3--intersectionpoint(T3--f2,T5--f1)--intersectionpoint(T2--f2,T4--f1)--cycle,blue);
fill(T4--T5--intersectionpoint(T3--f2,T5--f1)--intersectionpoint(T2--f2,T4--f1)--cycle,orange);
fill(T3--T2--T--T1--cycle,orange);
dot("$T_7$",intersectionpoint(T3--f2,T5--f1),N);
dot("$T_8$",intersectionpoint(T2--f2,T4--f1),N);

