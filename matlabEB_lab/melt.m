% This script calculates the loss of latent heat of fusion through melt

% M is the melt rate and is read in from CENMET data
% Rhow is the density of water 1000 kg m-3
% Lf = 0.334e6; % Latent heat of fusion in J/kg
% B = 0.97; % thermal quality of snowpack (dimensionless)


for i = 1:length(M)
   Qmelt(1,i) = M(1,i) * RHOw * L_f * B;
end

