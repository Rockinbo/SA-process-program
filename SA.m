function T_B_M_a=SA(Table)
%Extract pose data recorded by SA software
%Input: Excel sheet exported from SA software
%Output: 4-by-4-by-M pose matrix,M is the number of measured pose
%Made by: Rockinbo
%2021-10-20

j=1;
for i=1:11:size(Table,1)
    x(j,1)=Table(i,1); y(j,1)=Table(i,2); z(j,1)=Table(i,3);   
    Rx(j,1)=Table(i+1,1);Ry(j,1)=Table(i+1,2);Rz(j,1)=Table(i+1,3);
    
    pose_vec(j,:)=[x(j,1),y(j,1),z(j,1),Rx(j,1),Ry(j,1),Rz(j,1)];
    
    T_B_M_a(:,:,j)=RPY2T(x(j,1),y(j,1),z(j,1),Rz(j,1),Ry(j,1),Rx(j,1));
    j=j+1;
end

end