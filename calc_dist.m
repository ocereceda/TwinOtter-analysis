% Created by Oihane Cereceda
% January 29, 2018

% This function calculates the coordinates of the distance
% between two points on space very close to each other assuming
% flat Earth. It needs:
% - Geodetic coordinates of point A: Lat, Long Alt (deg and ft)
% - Geodetic coordinates of point B: Lat, Long Alt (deg and ft)

function [Result]=calc_dist(PA, PB)

% Vertical distance calculation
Dy=abs(PB(3)-PA(3));

% Distance calculation. Harvesine formula (DEG)
Dist=haversine([PA(1) PA(2)], [PB(1) PB(2)]);

% Horizontal distance calculation
Dx=sqrt((Dist^2)-(Dy^2));

% Return horizontal (Dx) and vertical (Dy) distances
Result=[Dx, Dy];

end