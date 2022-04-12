
%% This calculates the shortwave radiation

%SWin is the measured shortwave radiation 
%Look in energy_balance.m to see how it is read in.
ALBvis = zeros(1, length(T));
ALBnir = zeros(1, length(T));

for i = 1:length(T);
    
    if snow(1, i) == 0 
        
        ALBvis(1, i) = 0.2;
        
    else  ALBvis(1, i) = 0.9;
        
        
    end
          
    
end
 
for i = 1:length(T);
    if snow(1, i) == 0 
        
        ALBnir(1, i) = 0.2;
        
    else  ALBnir(1, i) = 0.9;
                
    end
          
end

% This assumes that the incoming shortwave radiation will be evenly split between the visable and NIR.
% We need to split the incoming

% Preallocate space

SWvisI = zeros(1, length(T)); % Preallocate space for incoming SW visible
SWvisO = zeros(1, length(T)); % Preallocate space for outgoing SW visible
SWnirI = zeros(1, length(T)); % Preallocate space for incoming SW NIR
SWnirO = zeros(1, length(T)); % Preallocate space for outgoing SW NIR

% calculate the visible SW
for i = 1:length(T);
    
    SWvisI(1,i) = SWin(1,i) * 0.5;
    
end


% calculate the nir SW
for i = 1:length(T);
    
    SWnirI(1,i) = SWin(1,i) * 0.5;
    
end


% calculate the outgoing visible SW
% 0.9 is the albedo of snow in the visible

for i = 1:length(T);
    
    SWvisO(1,i) = SWvisI(1,i) * 0.9;
    
end


% calculate the outgoing nir SW
% 0.7 is the albedo of snow in the nir
for i = 1:length(T);
    
    SWnirO(1,i) = SWnirI(1,i) * 0.7;
    
end

% Compute the net shortwave radiation flux

% Qsw = (SWvisI - SWvisO) + (SWnirI - SWnirO)


for i = 1:length(T)
    
Qsw(1, i) = (SWvisI(1, i) - SWvisO(1, i)) + (SWnirI(1, i) - SWnirO(1, i));    
    
    
end








