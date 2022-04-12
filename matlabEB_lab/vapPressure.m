% This calculates the vapor pressure in mb

% this formula is from Dingman, Appendix D, formula D-7. The output is in
% mb.  

for i = 1:length(T);
    esat(1,i) = 6.11*(exp((17.3*T(1,i))./(T(1,i) + 237.3)));
end

% convert the saturation vapor pressure to vapor pressure using
% relative humidity
  ea = RH.*esat;
  
  % this simply subtracts the difference between the ea and esat for use in the latent heat calculations. 
  
  vpdiff = ea - esat;
    

