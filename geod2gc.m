%Determine the geocentric latitude from the geodetic latitude

function y = geod2gc (lat_geod, h)
Rn=a/(sqrt(1-(e^2)*(sin(lat_geod))^2);
tangc=(1-(e^2)*(Rn/(Rn+h)))*tan(tan_geod);
y=atan(tangc);
end