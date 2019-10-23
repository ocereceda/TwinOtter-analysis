% Created by Oihane Cereceda
% Jan 29, 2018

% This function calculates and plots the Dx and Dy over time to
% asses the NMAC. This function needs:
% - Time (sec)
% - Geodetic coordinates of aircraft 1: Lat, Long, Alt (deg and ft)
% - Geodetic coordinates of aircraft 2: Lat, Long, Alt (deg and ft)

% IMPORTANT! Time, PA and PB do not have to be the same lenght

function plot_dist(Time,PA, PB)
%Enc=0;

if length(Time)>length(PA)
    min_lenght=length(PA);
else
    min_lenght=length(Time);
end

for k = 1:1:min_lenght
    D_vector(k,:)=calc_dist(PA(k,:), PB(k,:));
%     if D_vector(k,1)<500 %This is to check when the encounter is happening 
%        Enc(k,:)=k;
%     end
end
 
dist_horizontal=D_vector(:,1);
dist_vertical=D_vector(:,2);
 
plot(Time(1:k), dist_horizontal)
title('Distance - horizontal')
xlabel('Time (seconds)')
ylabel('Dx (ft)')
grid
figure
plot (Time(1:k), dist_vertical)
title('Distance - vertical')
xlabel('Time (seconds)')
ylabel('Dy (ft)')
grid
 
%disp(Enc)

