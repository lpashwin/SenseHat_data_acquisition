from sense_hat import SenseHat
from time import strftime
import datetime
sense=SenseHat()
#sense.show_message("running sensors",scroll_speed=0.01)
print('#Time,pitch(deg),roll(deg),yaw(deg),X-Acceleration(g),Y-Acceleration(g),Z-Acceleration(g),Pressure(Millibars),Temperature(deg C),Humidity(%)')
t0=datetime.datetime.now()
while(True):
    pitch,roll,yaw=(ii if ii <180.0 else ii-360.0 for ii in sense.get_orientation().values())#rotations
    #print(list(sense.get_orientation().values())) 
    ax,ay,az=sense.get_accelerometer_raw().values() #accelerations
    p=sense.get_pressure() # pressure
    t=sense.get_temperature() #temperature
    h=sense.get_humidity() #humidity
    delta=datetime.datetime.now()-t0
    #print(type(delta))
    outputs=(delta.total_seconds(),pitch,roll,yaw,ax,ay,az,p,t,h)
    print(','.join('{:5.3f}'.format(ii) for ii in outputs))
