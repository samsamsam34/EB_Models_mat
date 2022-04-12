%Qi  = Qsw + Qlw+ Qh + Qe + Qr + Qg;

answer = inputdlg('Provide title'); 
figure('Name',answer{:},'NumberTitle','off');
time = 1:i;
subplot (8,1,1) 

plot(time, Qi);
title('Change in Snowpack Internal Sensible and Latent Heat (Qi)', 'FontSize', 12)

       ylabel('W/m^2', 'FontSize', 10)
       set(gca, 'YLim', [-250, 250])
       set(gca, 'XLim',[1 3588])
       set(gca,'XTick',[169,913,1657,2329,3073])
       set(gca,'XTickLabel',{'Dec1','Jan1','Feb1','Mar1','Apr1'})

subplot (7,1,2) 

plot(time, Qsw);
title('ShortWave (Qsw)', 'FontSize', 12)
       ylabel('W/m^2', 'FontSize', 10)
       set(gca, 'XLim',[1 3588])
       set(gca,'XTick',[169,913,1657,2329,3073])
       set(gca,'XTickLabel',{'Dec1','Jan1','Feb1','Mar1','Apr1'})

subplot (7,1,3) 

plot(time, Qlw);
title('LongWave (Qlw)', 'FontSize', 12)
       ylabel('W/m^2', 'FontSize', 10)
       set(gca, 'YLim', [-125, 25])
       set(gca, 'XLim',[1 3588])
       set(gca,'XTick',[169,913,1657,2329,3073])
       set(gca,'XTickLabel',{'Dec1','Jan1','Feb1','Mar1','Apr1'})

subplot (7,1,4) 

plot(time, Qh);
title('Sensible Heat Flux (Qh)', 'FontSize', 12)
       ylabel('W/m^2', 'FontSize', 10)
       set(gca, 'YLim', [-200, 200])
       set(gca, 'XLim',[1 3588])
       set(gca,'XTick',[169,913,1657,2329,3073])
       set(gca,'XTickLabel',{'Dec1','Jan1','Feb1','Mar1','Apr1'})

subplot (7,1,5)
plot(time, Qe);
title('Latent Heat Flux (Qe)', 'FontSize', 12)
       ylabel('W/m^2', 'FontSize', 10)
       set(gca, 'YLim', [-20, 5])
       set(gca, 'XLim',[1 3588])
       set(gca,'XTick',[169,913,1657,2329,3073])
       set(gca,'XTickLabel',{'Dec1','Jan1','Feb1','Mar1','Apr1'})

subplot (7,1,6)
plot(time, Qr);
title('Advective Heat Flux (Qr)', 'FontSize', 12)
       ylabel('W/m^2', 'FontSize', 10)
       set(gca, 'XLim',[1 3588])
       set(gca,'XTick',[169,913,1657,2329,3073])
       set(gca,'XTickLabel',{'Dec1','Jan1','Feb1','Mar1','Apr1'})


subplot (7,1,7)
plot(time, Qmelt);
title('Melt Energy Lost (Qmelt)', 'FontSize', 12)

       ylabel('W/m^2', 'FontSize', 10)
       set(gca, 'XLim',[1 3588])
       set(gca,'XTick',[169,913,1657,2329,3073])
       set(gca,'XTickLabel',{'Dec1','Jan1','Feb1','Mar1','Apr1'})


