/*
encendido secuencial de 3 leds usando makefile en raspberry
*/

#include<stdio.h>
#include<pigpio.h>

int main()
{
        if(!gpioInitialise()) return -1;
        gpioSetMode(17, PI_OUTPUT);// green
	gpioSetMode(27, PI_OUTPUT);// blue
	gpioSetMode(22, PI_OUTPUT);// red

	
        while(1)
        {       sleep(1);
		gpioWrite(17, 0);
	        gpioWrite(27, 1);
	        gpioWrite(22, 1);               
 		sleep(1);

                gpioWrite(17, 1);
	        gpioWrite(27, 0);
	        gpioWrite(22, 1);               
 		sleep(1);        

                gpioWrite(17, 1);
	        gpioWrite(27, 1);
	        gpioWrite(22, 0);               
                sleep(1);
        }
return 0;
}
