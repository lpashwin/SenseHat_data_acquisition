#Time,pitch(deg),roll(deg),yaw(deg),X-Acceleration(g),Y-Acceleration(g),Z-Acceleration(g),Pressure(Millibars),Temperature(deg C),Humidity(%)

set datafile separator ","
set multiplot layout 3,2 title "Outputs from Raspberry Pi Sensehat sensors\n" font ",12"
set title "Pitch(deg)"
set xlabel "Time (sec)"
plot 'output.txt' using 1:2 with lines

set title "Roll(deg)"
set xlabel "Time (sec)"
plot 'output.txt' using 1:3 with lines

set title "Yaw(deg)"
set xlabel "Time (sec)"
plot 'output.txt' using 1:4 with lines

set title "X-Acceleration(g)"
set xlabel "Time (sec)"
plot 'output.txt' using 1:5 with lines

set title "Y-Acceleration(g)"
set xlabel "Time (sec)"
plot 'output.txt' using 1:6 with lines

set title "Z-Acceleration(g)"
set xlabel "Time (sec)"
plot 'output.txt' using 1:7 with lines
