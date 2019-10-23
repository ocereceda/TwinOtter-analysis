% Created by Oihane Cereceda
% Last modified Feb 19th 2018

% This is the INITIAL STATE for the Twin Otter
% This is used to calculate the inital encounter
% ECEF is expressed in ft
% GEOD=(GeodLat,Long, Alt) with Lat and Long in deg and Alt in ft
% EuAng is the Roll, Pitch and Yaw in deg

for k = 1:1:4800
    ECEF(k,:)=[7889415.377	-11069337.83	15910743.82];
    GEOD(k,:)=[49.68111539	-54.52150397	1004.864527];
    EuAng(k,:)=[22.91907875	0.902967592	142.9222358];
end
