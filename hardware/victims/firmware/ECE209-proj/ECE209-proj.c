/*
    This file is part of the ChipWhisperer Example Targets
    Copyright (C) 2012-2017 NewAE Technology Inc.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "hal.h"
#include <stdint.h>
#include <stdlib.h>

#include "simpleserial.h"

uint8_t get_key(uint8_t* k)
{
	// Load key here
	return 0x00;
}

static void delay_2_ms(void)
{
  for (volatile unsigned int i=0; i < 0xfff; i++ ){
    ;
  }
}

    float weight[28] = 
{0.243106,0.553743,0.777093,0.099247,0.541075,0.772392,0.835409,0.438045,0.198887,0.011788,
 0.605223,0.587725,0.404945,0.500636,0.578877,0.638513,0.574408,0.094848,0.209278,0.034183,
 0.453673,0.769301,0.283175,0.456955,0.485850,0.305770,0.621719,0.684782};
float imagePixel[28] = {0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0};

uint8_t get_pt(uint8_t* pt)
{
	/**********************************
	* Start user-specific code here. */
    
    float result = 0.512558f;
    
	trigger_high();
    
    /* Section for floating point zero and nozero multiplication
    float vals[14] = {0.0f,5.0f,0.0f,5.0f,0.0f,5.0f,0.0f,5.0f,0.0f,5.0f,0.0f,5.0f,0.0f,5.0f}
    float res = 0.0f;
    for(int i = 0; i < 14; i++){
        res += vals[i] * 5.0f;
    }
    */
    
    /* Section for attacking convolutional neural networks with floating point
    for(int i = 0; i < 14; i++) {
        result += weight[i]*imagePixel[i];
    }
    */
    
    /* Section for integer zero and nozero adds
    int res = 5;
    for(int i = 0; i < 14; i++) {
        res += 5;
    }
    float k = 5.0f * 6.0f;
    
    for(int i = 0; i < 14; i++) {
        res += 0;
    }
    k = 5.0f * k;
    */
    
	
   /* Section for integer zero and nonzero adds with memory accesses.
    int res = 5;
    int nonzero[14] = {5,5,5,5,5,5,5,5,5,5,5,5,5,5};
    for(int i = 0; i < 14; i++) {
        res += nonzero[i];
    }
    float k = 5.0f * 6.0f;
    int zero[14] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    
    for(int i = 0; i < 14; i++) {
        res += zero[i];
    }
    k = 5.0f * k;
    */
    
    /* Section for attacking a binary convolutional neural network
    int pop_count = 0;
    unsigned char val1 = 0xFF;
    unsigned char val2 = 0xAA;
    unsigned char res = ~(val1 ^ val2);
    
    for(int i = 0 ; i < 8; i++){
        pop_count += (res & 1);
        res >>= 1;    
    }
    
    float k = 5.0f * 6.0f;
    (void)k;
    
    pop_count = 0;
    val1 = 0x00;
    val2 = 0xAA;
    res = ~(val1 ^ val2);
    
    for(int i = 0 ; i < 8; i++){
        pop_count += (res & 1);
        res >>= 1;    
    }
    */
    
    /* Section for floating zero and nonzero adds with memory accesses.
    float res = 5.0f;
    int nonzero[14] = {5.0f,5.0f,5.0f,5.0f,5.0f,5.0f,5.0f,5.0f,5.0f,5.0f,5.0f,5.0f,5.0f,5.0f};
    for(int i = 0; i < 14; i++) {
        res += nonzero[i];
    }
    float k = 5.0f * 6.0f;
    int zero[14] = {0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f};
    
    for(int i = 0; i < 14; i++) {
        res += zero[i];
    }
    k = 5.0f * k;
    */
    
      
    // Section for second attempt attacking a binary convolutional neural network
    float pop_count = 0.0f;
    unsigned char val1 = 0xFF;
    unsigned char val2 = 0xAA;
    unsigned char res = ~(val1 ^ val2);
    
    /*
    for(int i = 0 ; i < 8; i++){
        pop_count += (res & 1);
        res >>= 1;    
    }
    */
    
    pop_count = 0.0f;
    val1 = 0x00;
    val2 = 0xAA;
    res = ~(val1 ^ val2);
    
    for(int i = 0 ; i < 8; i++){
        pop_count += (res & 1);
        res >>= 1;    
    }
    
    
    delay_2_ms();
    trigger_low();
    pt[0] = (int)result;
	/* End user-specific code here. *
	********************************/
	simpleserial_put('r', 16, pt);
	return 0x00;
}

uint8_t reset(uint8_t* x)
{
	// Reset key here if needed
	return 0x00;
}

int main(void)
{
    platform_init();
	init_uart();	
	trigger_setup();
	
 	/* Uncomment this to get a HELLO message for debug */
	/*
	putch('h');
	putch('e');
	putch('l');
	putch('l');
	putch('o');
	putch('\n');
	*/
		
	simpleserial_init();		
	simpleserial_addcmd('k', 16, get_key);
	simpleserial_addcmd('p', 16, get_pt);
	simpleserial_addcmd('x', 0, reset);
	while(1)
		simpleserial_get();
}
