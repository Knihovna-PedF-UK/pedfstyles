prologues :=3;
outputtemplate :="%j-%c.mps";
beginfig(5);
  u:=2pt;
  save pos,w,h;
  path out,in;
  pos:=1u;
  w:=18u;
  h:=18u;
  out:= (pos,0) ..(0,h/4) .. (pos,h/2) .. (0,h*3/4)..(pos,h) -- (w,h) ..(w-pos,h*3/4)..(w,h/2)..(w-pos,h/4)..(w,0) --cycle;
  in:=out scaled 0.85 shifted (pos,pos);
  fill out;
  unfill in;
  %draw (pos+u,h/2)--(w-u,h/2);
  
endfig;
 
% tahle verze podporuje správně průhlednost uvnitř 
beginfig(6);
  u:=2pt;
  save pos,w,h;
  path out,in,anti;
  pos:=1u;
  w:=18u;
  h:=18u;
  out:= (pos,0) ..(0,h/4) .. (pos,h/2) .. (0,h*3/4)..(pos,h) -- (w,h) ..(w-pos,h*3/4)..(w,h/2)..(w-pos,h/4)..(w,0) --cycle;
  % anti:= (w,0) .. (w-pos,h/4) .. (w,h/2) .. (w-pos, h*3/4) .. (w,h) -- (pos, h) .. (0,h*3/4) .. (pos, h/2) .. (0,h/4) .. (pos,0) -- cycle;
  anti := reverse(out);
  in:= anti scaled 0.85 shifted (pos,pos);
  fill out -- in -- cycle;
  % unfill in;
endfig;

bye;
