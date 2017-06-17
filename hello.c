/*
* Encendido secuencial de 3 leds usando makefile en raspberry
* 
* Historial de cambios:
* v1 - Original
* v2 - Se agregaron #defines para los colores
* v3 - Se incluyen funcion Random para el tiempo de encendido
* 
*/

#include<stdio.h>
#include<pigpio.h>
#include<time.h>


#define GREEN 17
#define BLUE  27
#define RED   22


int main()
{
	if(!gpioInitialise()) return -1;
        gpioSetMode(GREEN, PI_OUTPUT);	// green
	gpioSetMode(BLUE, PI_OUTPUT);	// blue
	gpioSetMode(RED, PI_OUTPUT);	// red

	
        while(1)
        {   sleep(rand());

                gpioWrite(GREEN, 0);
	        gpioWrite(BLUE, 1);
	        gpioWrite(RED, 1);               
			sleep(rand());

            gpioWrite(GREEN, 1);
	    gpioWrite(BLUE, 0);
	    gpioWrite(RED, 1);               
	    sleep(rand());        

            gpioWrite(GREEN, 1);
	    gpioWrite(BLUE, 1);
            gpioWrite(RED, 0);               
            sleep(rand());
            
            gpioWrite(GREEN,0);
            gpioWrite(BLUE,0);
            gpioWrite(RED, 0);

}
return 0;
}
