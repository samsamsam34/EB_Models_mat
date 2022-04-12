% This calculates the Latent Heat Flux for the met station


% Qe = (rho* 0.622 * L/Pa)*Ce*ua(ea-eo)

% This formula assumes that vapor pressure at the snowpack surface is
% saturated (eo = es)

% L_v   = 2.499e6; % latent heat of vaporization in J/kg
% L_sub = 2.835e6; % Latent heat of sublimation in J/kg
% rho = 1.29; % standard density of air (kg m-3)
% Pa = total atmospheric pressure 100000 Pa(assumed)
% vpdiff = ea - esat % This is computed in the vaporPressure script

% This computes the Latent Heat of Vaporization
   
for i = 1:length(T);
 
    
    if T(i) > 0
            % if the temperature is greater than zero, then use the
            % Latent Heat of Vaporization   
             Qe(1,i) = (rho* 0.622 * L_v/Pa)*Ce*ua(1,i)*(vpdiff(1,i));
                
    else
                
            % if the temperature is less than or equal to zero, then use the
            % Latent Heat of Sublimation
             Qe(1,i) = (rho* 0.622 * L_sub/Pa)*Ce*ua(1,i)*(vpdiff(1,i));
                      
    end 
    
    

end















