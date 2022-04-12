Energy Balance Lab

This suite of Matlab functions calls the different sub-routines of the energy balance for snow.

The input data is in the following format:

YEAR, Month, Day, Hour, Temp (C), RH, Wind Speed, Wind Direction, Precipitation (mm/dt), SWE (mm), Incoming Solar Radiation (w/m^2), Soil Temp at 10cm

It includes two input files. The first is CENMET located in the HJ Andrews of in teh western cascades of Oregon. 

(https://andrewsforest.oregonstate.edu/data/streaming/meteorological-stations/central-meteorological-station-cenmet-elev-1020m)

The second is Tascadero located in the Chilean Cordillera (http://www.ceazamet.cl/index.php?pag=mod_estacion&pag2=mod_estacion_hardware&e_cod=TASC&p_cod=ceazamet)

Find both sites in Google Earth and look at the characteristics.  

1. Based upon what you know about the Energy Balance, write out hypothetical ideas of what  the relative differences will be between the two sites. Refer to the Pomeroy text for ideas of the different components.

advective

longwave

shortwave

latentheat

sensibleheat

melt

%% Now run the energybalance.m model in MATLAB.

To do so you will first need to load the data (EB_LAB_DATA.mat) - just double click it.

Now run the Energy Balance Model for both sites.

Compare the differences

2. How do these results compare to your hypothetical ideas that you wrote for question 1?

Please include annotated graphs to support your answers.  

3. Look at the shortwave.m file. How is albedo calculated in this function? How could this be improved? Write it out in words or better yet in code.

4. Look at the file longwave.m. How do clouds play a role in these calculations? Do you think this is accurate for both of the sites? Change the code as need (or at least experiment with it) and run teh entire energy balance suite again. How did this change your results?

Compare this model to a SNOTEL site in Montana. Go to: https://www.nrcs.usda.gov/wps/portal/wcc/home/quicklinks/predefinedMaps/

and find a station that has the requisite data to run the model.

Compare this station's data to the Tascadero data. Make sure to get your input units correct!







