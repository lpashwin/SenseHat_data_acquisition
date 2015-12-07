# SenseHat_data_acquisition
Uses the Sensehat sensor to collect data and processes this data  
1) The sensors can be run using the following command  
  sudo python3 Sensor_data.py > output.txt &  
2 The data are plotted in real time using gnuplot  
 -gnuplot -persist -e "config1='config1.plt'" loop.plt   
 Change the config1.plt file to change the plot parametes  
