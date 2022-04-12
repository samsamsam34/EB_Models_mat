% This calculates the sensible heat for the met station



% Qh = rho * cp * Ch * ua * (Ta + 273.2)

% Qh  = sensible heat flux [Wm^2]

% rho = standard density of air (1.29 kg m-3)
% cp = specific heat of dry air (1005 J kg-1 K-1)
% Ch = bulk transfer coefficient for sensible heat transfer
% ua = wind speed at height z (m s-1)
% Ta = air temperature (K)
% Ts = snow temperature (K)


    
first_portion = rho * cp * Ch;



for i = 1:length(T);
    
        % This calculates the Sensible Heat Flux
        Qh(1,i) = (ua(1,i) * Ta(1,i))*first_portion;
    
 end
 

