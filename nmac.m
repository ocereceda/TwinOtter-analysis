% This function plots the nmac of a trajectory. It needs:
% - ECEF coordinates (m)
% - Geodetic coordinates: Lat, Long Alt (deg and m)
% - Euler angles (rad)

function nmac(ECEF,GEOD,EuAng) %Add time for the vector

% Clear the space and define NMAC
%clf
h=60.96; %200ft
r=152.4; %500ft

% Define the vector of each point:
% A-----B
% |     |
% |     |
% D-----C
A=[0 -r -h/2]';
B=[0 r -h/2]';
C=[0 r h/2]';
D=[0 -r h/2]';

for k = 1:20:length(ECEF) % Plot a rectangle for each 25 rows of the data

% Extract ECEF coordinates
%XP=ECEF(k,1); % Input m
%YP=ECEF(k,2); % Input m
%ZP=ECEF(k,3); % Input m
XP=0.3048*ECEF(k,1); % Input ft
YP=0.3048*ECEF(k,2); % Input ft
ZP=0.3048*ECEF(k,3); % Input ft

% Extract Lat, Long, Alt
Lat=GEOD(k,1);
Long=GEOD(k,2);
%Alt=GEOD(k,3); %In case the Altitude is in m
Alt=0.3048*GEOD(k,3); %In case the Altitude is expressed in ft

% Transform the rectangle coordinates to NED
%Phi=EuAng(k,1); %Roll in RAD
%Theta=EuAng(k,2); %Pitch in RAD
%Psi=EuAng(k,3); %Yaw in RAD
Phi=deg2rad(EuAng(k,1)); %Roll input DEG
Theta=deg2rad(EuAng(k,2)); %Pitch input DEG
Psi=deg2rad(EuAng(k,3)); %Yaw input DEG

a11=cos(Theta)*cos(Psi);
a12=sin(Phi)*sin(Theta)*cos(Psi)-cos(Phi)*sin(Psi);
a13=cos(Phi)*sin(Theta)*cos(Psi)+sin(Phi)*sin(Psi);
a21=cos(Theta)*sin(Psi);
a22=sin(Phi)*sin(Theta)*sin(Psi)+cos(Phi)*cos(Psi);
a23=cos(Phi)*sin(Theta)*sin(Psi)-sin(Phi)*sin(Psi);
a31=-sin(Theta);
a32=sin(Phi)*cos(Theta);
a33=cos(Phi)*cos(Theta);

M=[a11 a12 a13; a21 a22 a23; a31 a32 a33];

ANED=M*A;
BNED=M*B;
CNED=M*C;
DNED=M*D;

% Transform those coordinates to ECEF
[XA, YA, ZA]=ned2ecefv(ANED(1),ANED(2),ANED(3),Lat,Long);
[XB, YB, ZB]=ned2ecefv(BNED(1),BNED(2),BNED(3),Lat,Long);
[XC, YC, ZC]=ned2ecefv(CNED(1),CNED(2),CNED(3),Lat,Long);
[XD, YD, ZD]=ned2ecefv(DNED(1),DNED(2),DNED(3),Lat,Long);

% Add the location of the aircraft
AP=[XA+XP,YA+YP,ZA+ZP];
BP=[XB+XP,YB+YP,ZB+ZP];
CP=[XC+XP,YC+YP,ZC+ZP];
DP=[XD+XP,YD+YP,ZD+ZP];

% Transform those coordinates to latitude, longitude, altitude
[ALat,ALong,AAlt]=ecef2lla(AP(1),AP(2),AP(3));
[BLat,BLong,BAlt]=ecef2lla(BP(1),BP(2),BP(3));
[CLat,CLong,CAlt]=ecef2lla(CP(1),CP(2),CP(3));
[DLat,DLong,DAlt]=ecef2lla(DP(1),DP(2),DP(3));

% Transform to DEG
ALat=rad2deg(ALat); ALong=rad2deg(ALong);
BLat=rad2deg(BLat); BLong=rad2deg(BLong);
CLat=rad2deg(CLat); CLong=rad2deg(CLong);
DLat=rad2deg(DLat); DLong=rad2deg(DLong);

% Plot the rectangle
plot3([ALong BLong CLong DLong ALong],[ALat BLat CLat DLat ALat], [AAlt BAlt CAlt DAlt AAlt],'b')
hold on;

end
grid
end