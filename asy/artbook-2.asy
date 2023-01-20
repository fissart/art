if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-2";
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

size(300);
path ltrans(path p,int d)
{
path a=rotate(65)*scale(0.4)*p;
return shift(point(p,(1/d)*length(p))-point(a,0))*a;
}
path rtrans(path p, int d)
{
path a=reflect(point(p,0),point(p,length(p)))*rotate(65)*scale(0.35)*p;
return shift(point(p,(1/d)*length(p))-point(a,0))*a;
}

void drawtree(int depth, path branch)
{
if(depth == 0) return;
real breakp=(1/depth)*length(branch);
draw(subpath(branch,0,breakp),blue);
drawtree(depth-1,subpath(branch,breakp,length(branch)));
drawtree(depth-1,ltrans(branch,depth));
drawtree(depth-1,rtrans(branch,depth));
return;
}

path start=(0,0)..controls (-1/10,1/3) and (-1/20,2/3)..(1/20,1);
drawtree(7,start);
