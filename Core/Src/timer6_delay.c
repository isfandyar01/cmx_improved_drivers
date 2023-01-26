/*
 * timer4_delay.c
 *
 *  Created on: Nov 11, 2022
 *      Author: Isfandyar Qureshi
 */


#include <timer6_delay.h>

volatile int myTicks=0;
void enable_timer6(){

	RCC->APB1ENR1|=RCC_APB1ENR1_TIM2EN;
	TIM2->PSC =40-1;
	TIM2->ARR =0xfffff;
	TIM2->CR1 |= TIM_CR1_CEN;

	while (!(TIM2->SR & (1<<0)));

}



void Delay_US(uint32_t US){
	TIM2->CNT = 0;
	while (TIM2->CNT < US);
}

