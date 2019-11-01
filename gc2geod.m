% Determine the geodetic latitude from the geocentric latitude

function y = gc2geod (lat_gc)

y=atan((tan(lat_gc))/((1-(1.0/298.25722))^2));
end

