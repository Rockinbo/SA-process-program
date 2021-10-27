function T=RPY2T(x,y,z,a,b,c)
%Input: six-dimension data
%Output: HTM
%Made by: Rockinbo
%2021-10-20
%RotZ=c，RotY=b, RotX=a  unit:deg,mm


R=[cosd(c) -sind(c) 0;sind(c) cosd(c) 0;0 0 1;]*[cosd(b) 0 sind(b);0 1 0;-sind(b) 0 cosd(b);]*[1 0 0;0 cosd(a) -sind(a);0 sind(a) cosd(a);];

P=[x;y;z];
T=[R,P;0 0 0 1];

end
