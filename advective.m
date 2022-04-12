%function [Qr] = advective(RHOw,Cw,Tr,Pr)

% This calculates the advective heat for the met station

% The algebra needs to be checked
% also make sure that the scale for the precip is correct
% This needs to be converted to a function file

% Qr = Pr * RHOw * Cw * (Tr - Ts) 

% Qr = advected heat exchange due to rain on snow (Wm-2)
% Pr = rainfall intensity (m s-1)
% RHOw = density of water (kg m-3)
% Cw = specific heat of water  at Tr (J kg-1 K-1)
% Tr = temperature of the rain (K), assume Tr = air temp.
% Ts = temperature of the snow (K)



for i = 1:length(Tr)
    
    if Tr(1,i) > 0
        
    Qr(1,i) = RHOw *Cw *Tr(1,i) * Pr(1,i); 
    
    else Qr(1,i) = 0;
        
    end
end


