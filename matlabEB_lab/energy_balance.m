function [Qi, Qsw, Qlw, Qh, Qe, Qr, Qmelt] = energy_balance(input_data);

% This program executes several shorter programs for the energy balance

% Qi  = change in snowpacks internal sensible and latenet heat storage
% Qsw = net shortwave flux [Wm^2]
% Qlw = net longwave flux [Wm^2]
% Qh  = sensible heat flux [Wm^2]
% Qe  = latent heat flux [Wm^2]
% Qr  = advective heat flux from rain [Wm^2]
 
% Qm  = loss due to snowwater existing the snowpack [Wm^2] 

% Extracts the T,RH,and wind data and gets it into a format for the model
T = transpose(input_data(:,5));
Tr = T; % rain temp is same as air temp
Ta = T; % the input for the air temp

% RelHum converted to the format for the calculations
RH = transpose(input_data(:,6));
RH = RH/100; 

%wind speed in m/s
ua = transpose(input_data(:,7));
% replace all bad wind values with a value of 1
ua(ua==-9999) = 1;

% Extracts the precip data and gets it into a format for the model
precip_hourly = transpose(input_data(:,9)); % mm/hr
Pr = (precip_hourly/(3600))/1000; % this converts mm/hr to m/sec

%incoming solar radiation in w/m^2
SWin = transpose(input_data(:,11));

%snow depth in mm
snow = transpose(input_data(:,10));

% Soil temperature at 10 cm

Tg = transpose(input_data(:,12));

% Melt rate at CENMET in m/s

M_hourly = transpose(input_data(:,13));
M = M_hourly/3600; % Converts from m/hour to m/s


%Set all of the constants
RHOw = 1000; % density of water (kg m-3)
Cw =  4.1876e3; % specific heat of water  at Tr (J kg-1 K-1)
Ts = 273.16; % The temperature of snow is set to 0C or 273.16 K
StefBoltz = 5.67e-8; % [W * m^-2 * K^-4]
EMIS = 0.99; % this is the emmissivity for snow 
rho = 1.29; % standard density of air (1.29 kg m-3)
L_v   = 2.499e6; % latent heat of vaporization (J kg-1)
L_sub = 2.835e6; % Latent heat of sublimation (J kg-1)
L_f = 0.334; % latent heat of Fusion 
z = 2; % height of wind sensor (m)
Pa = 10000; % total atmospheric pressure (Pa)
z0 = 0.003; % % this is an average value for aerodymanic roughness (in meters)
z = 2; % this is the height of the wind gauge at CENMET in meters
k = 0.4; % vonKarman's constant
rho = 1.29; % standard density of air (kg m-3)
cp = 1005; % specific heat of dry air (J kg-1 K-1)
kg = 0.5; % soil thermal conductivity (W m-1 K-1)


B = 0.97; % thermal quality of snowpack (dimensionless)

Ce = (k^2) * [log(z/z0)]^-2; % bulk transfer coefficient for vapor exchange

% ua = wind speed at height z (m s-1)
% Ta = air temperature (K)
% Ts = snow temperature (K) 

% Ch = bulk transfer coefficient for sensible heat transfer - assumes
% neutral stability

Ch = (k^2) * [log(z/z0)]^-2;

% call vapPressure.m
vapPressure

% call advective.m
advective

% call longwave.m
longwave

% call shortwave
shortwave

%call latent
latentheat

% call sensible heat
sensibleheat

% call melt
melt

% Calculate the energy available for heating/melting the snowpack

for i = 1:length(T)
    
    tmp = [Qsw(1, i), Qlw(1, i), Qh(1, i), Qe(1, i), Qr(1, i), Qmelt(1, i)];

    Qi(1, i)  = nansum(tmp);
    
end

% for i = 1:length(T)
% 
%     Qi(1, i)  = Qsw(1, i) + Qlw(1, i) + Qh(1, i) + Qe(1, i) + Qr(1, i) + Qg(1, i) + Qmelt(1, i);
%     
% end
    

%Qi  = Qsw + Qlw+ Qh + Qe + Qr + Qg + Qmelt;

% Plot the results

plot_components









