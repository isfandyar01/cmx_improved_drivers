
#include "cbus.h"
#include "timer6_delay.h"
void CBUS_INIT() {

	// pg9 sck pg10 miso pg11 mosi pg0 cs pg0

	enable_clock_gpio_spi();	//enabled G clocks // enabled SPI3 clock;
	set_cbus_pins(); // set sck mosi miso chip select  alternate function and speed and output type
	set_spi_portg_alternate_fun6(); //

}


void enable_clock_gpio_spi() {

	RCC->AHB2ENR |= RCC_AHB2ENR_GPIOGEN; //enabled G clocks
	RCC->APB1ENR1 |= RCC_APB1ENR1_SPI3EN; // enabled SPI3 clock;
}
//working
void set_cbus_pins() {
	// chip select PG0 chip select output
	// chip select PG0 chip select output
		GPIOG->MODER |= GPIO_MODER_MODE0_0;
		GPIOG->MODER &= ~(GPIO_MODER_MODE0_1);
		// pull up-down settings
		GPIOG->PUPDR |= GPIO_PUPDR_PUPD0_1;
		GPIOG->PUPDR &= ~ GPIO_PUPDR_PUPD0_0;
		// very high speed
		GPIOG->OSPEEDR |= GPIO_OSPEEDR_OSPEED0_1;
		GPIOG->OSPEEDR |= ( GPIO_OSPEEDR_OSPEED0_0);

		// chip select PG1 chip select output
		GPIOG->MODER |= GPIO_MODER_MODE1_0;
		GPIOG->MODER &= ~(GPIO_MODER_MODE1_1);
		// very high speed
		GPIOG->OSPEEDR |= GPIO_OSPEEDR_OSPEED1_1;
		GPIOG->OSPEEDR |= ( GPIO_OSPEEDR_OSPEED1_0);

		// output push pull
		GPIOG->OTYPER |= (GPIO_OTYPER_OT_0);
		//pulled up
		GPIOG->PUPDR |= GPIO_PUPDR_PUPD0;
		GPIOG->PUPDR &= ~GPIO_PUPDR_PUPD1;

		// PC9 alternate function SCK

		GPIOG->MODER &= ~(GPIO_MODER_MODER9_0);
		GPIOG->MODER |= GPIO_MODER_MODER9_1;
		//  very high speed
		GPIOG->OSPEEDR |= GPIO_OSPEEDR_OSPEED9_1;
		GPIOG->OSPEEDR |= ( GPIO_OSPEEDR_OSPEED9_0);

	//	GPIOG->PUPDR &= ~ GPIO_PUPDR_PUPD9_1;
	//	GPIOG->PUPDR |= (GPIO_PUPDR_PUPD9_0);
		//sck ends

		// PG11 alternate function mosi
		//mosi config starts

		GPIOG->MODER |= GPIO_MODER_MODE11_1;
		GPIOG->MODER &= ~(GPIO_MODER_MODE11_0);

		// high speed
		GPIOG->OSPEEDR |= GPIO_OSPEEDR_OSPEED11_1;
		GPIOG->OSPEEDR |= ( GPIO_OSPEEDR_OSPEED11_0);
		// pushpull
		GPIOG->OTYPER &= ~(GPIO_OTYPER_IDR_11);

		//mosi config ends

		// PG10 alternate function miso
		GPIOG->MODER |= GPIO_MODER_MODE10_1;
		GPIOG->MODER &= ~(GPIO_MODER_MODE10_0);
		//  high speed
		GPIOG->OSPEEDR |= GPIO_OSPEEDR_OSPEED10_1;
		GPIOG->OSPEEDR |= ( GPIO_OSPEEDR_OSPEED10_0);
		// push pull
		GPIOG->OTYPER &= ~(GPIO_OTYPER_IDR_10);
		// pulled down
		GPIOG->PUPDR |= GPIO_PUPDR_PUPD10_1;
		GPIOG->PUPDR &= ~ (GPIO_PUPDR_PUPD10_0);
		//miso_ends

}

//working
void set_spi_portg_alternate_fun6() {
	// pg9 10 11 alternation function 6 for spi3 0110
	GPIOG->AFR[1] |= (GPIO_AFRH_AFSEL9_1);
	GPIOG->AFR[1] |= (GPIO_AFRH_AFSEL9_2);
	GPIOG->AFR[1] |= (GPIO_AFRH_AFSEL10_1);
	GPIOG->AFR[1] |= (GPIO_AFRH_AFSEL10_2);
	GPIOG->AFR[1] |= (GPIO_AFRH_AFSEL11_1);
	GPIOG->AFR[1] |= (GPIO_AFRH_AFSEL11_2);
}
//working

//working
void CBUS_CHIP_SElECT_LOW() {
	GPIOG->BSRR |= GPIO_BSRR_BR0;

}
//working
void CBUS_CHIP_SElECT_HIGH() {
	//GPIOG->ODR |=GPIO_ODR_OD0;
	GPIOG->BSRR |= GPIO_BSRR_BS0;
	//Delay_US(10);
}

void CBUS_CHIP_SElECT_OUPUT_CODEC_LOW() {
	GPIOG->BSRR |= GPIO_BSRR_BR1;
}

void CBUS_CHIP_SElECT_OUPUT_CODEC_HIGH() {
	GPIOG->BSRR |= GPIO_BSRR_BS1;
	//Delay_US(10);
}

// working configs cbus baud rate and other settings
void Cbus_Config(SPI_TypeDef *SPI_PORT) {

	//// fclk mhz 40mhz /64 ///10mhz for uncompressed clean voice
	SPI_PORT->CR1 &= ~  SPI_CR1_BR_2;

	SPI_PORT->CR1 |=  SPI_CR1_BR_1;

	SPI_PORT->CR1 &= ~  SPI_CR1_BR_0;

	//SPI_PORT-> mode 3

	//SPI_PORT->CR1 |= SPI_CR1_CPHA;

	SPI_PORT->CR1 &= ~ SPI_CR1_CPOL;
	SPI_PORT->CR1 &= ~ SPI_CR1_CPHA;

	// FULL duplex
	SPI_PORT->CR1 &= ~ SPI_CR1_RXONLY;
	// msb first
	SPI_PORT->CR1 &= ~ SPI_CR1_LSBFIRST;

	//software slave
	SPI_PORT->CR1 |= SPI_CR1_SSM;
	SPI_PORT->CR1 |= SPI_CR1_SSI;

	// master mode enabled
	SPI_PORT->CR1 |= SPI_CR1_MSTR;

	// 8BIT DATA

	SPI_PORT->CR2 |= (SPI_CR2_DS_0 | SPI_CR2_DS_1 | SPI_CR2_DS_2 );

	//SPI_PORT->

	SPI_PORT->CR2 |= SPI_CR2_FRXTH;

}








/*
 *
################################
||                            ||
||  CBUS READ BYTE START      ||
||                            ||
################################

 *
 */

uint8_t Cbus_Read_Byte(SPI_TypeDef * SPI_PORT ,uint8_t Addr){

	uint8_t received_data = 0;


	received_data = CBUS_ReceiveFrame(SPI_PORT);

		//CBUS_SendFrame(SPI_PORT,Addr);


	return received_data;
}


/*
 *
################################
||                            ||
||  CBUS READ BYTE END        ||
||                            ||
################################

 */

/*
######################################
||                            		||
||  CBUS READ BYTE STREAM START     ||
||                            		||
######################################

 */



void Cbus_Read_Byte_stream(SPI_TypeDef *SPI_PORT,uint8_t Addr,uint8_t *pdata,uint16_t num_of_bytes_to_read){

	uint16_t i=0;

	//uint8_t received_data = 0;
	while(CBUS_BUSY(SPI_PORT));
	while(CBUS_RX_FIFO_NOT_EMPTY_CHECK(SPI_PORT))
		{
			uint16_t junk=CBUS_ReceiveFrame(SPI_PORT);
		}
	__disable_irq();
	CBUS_SendFrame(SPI_PORT,Addr);
	__enable_irq();
	while(CBUS_BUSY(SPI_PORT));
	for(i=0;i<=num_of_bytes_to_read;i++){
		CBUS_SendFrame(SPI_PORT,i);
		while(CBUS_BUSY(SPI_PORT));
		while(!CBUS_TX_BUFFER_EMPTY_CHECK(SPI_PORT));
		while(!CBUS_RX_FIFO_NOT_EMPTY_CHECK(SPI_PORT));
		pdata[i-1]=CBUS_ReceiveFrame(SPI_PORT);
	}


}







/*
 *
################################
||                            ||
||      CBUS READ WORD START  ||
||                            ||
################################
 *
 *
 *
 *
 */


uint16_t Cbus_Read_Word(SPI_TypeDef *SPI_PORT, uint8_t Addr) {

	uint16_t received_data = 0;

	while(CBUS_BUSY(SPI_PORT));
	while(CBUS_RX_FIFO_NOT_EMPTY_CHECK(SPI_PORT))
	{
		uint16_t junk=CBUS_ReceiveFrame(SPI_PORT);
	}
	__disable_irq();

		CBUS_SendFrame(SPI_PORT, Addr);
		CBUS_SendFrame(SPI_PORT, 1);
		CBUS_SendFrame(SPI_PORT, 2);
	__enable_irq();
	while(CBUS_BUSY(SPI_PORT));
	while(!CBUS_RX_FIFO_NOT_EMPTY_CHECK(SPI_PORT));
	received_data = CBUS_ReceiveFrame(SPI_PORT);
	received_data<<=8;
	while(!CBUS_RX_FIFO_NOT_EMPTY_CHECK(SPI_PORT));
	received_data |= CBUS_ReceiveFrame(SPI_PORT);
	received_data =swap_uint16(received_data);
	return received_data;
}



/*
 *
################################
||                            ||
||  CBUS READ WORD END        ||
||                            ||
################################

 *
 */

/*
 *
 * 		write functions start
 *
 */

/*
 *
################################
||                            		||
||  CBUS WRITE BYTE STREAM START    ||
||                            		||
################################

 *
 */

void Cbus_Write_Byte_stream(SPI_TypeDef *SPI_PORT, uint8_t Addr,uint8_t *pdata,uint16_t num_of_bytes_to_write){
	uint16_t i;
//	__disable_irq();
	while(CBUS_BUSY(SPI_PORT));
	CBUS_SendFrame(SPI_PORT, Addr);
	while(CBUS_BUSY(SPI_PORT));
	while(!CBUS_TX_BUFFER_EMPTY_CHECK(SPI_PORT));
	for(i=0;i<=num_of_bytes_to_write;i++)
	{
		CBUS_SendFrame(SPI_PORT,pdata[i]);
		while(CBUS_BUSY(SPI_PORT));
		while(!CBUS_TX_BUFFER_EMPTY_CHECK(SPI_PORT));
	}
	 return;
}



/*
 *
################################
||                            ||
||  CBUS WRITE BYTE START     ||
||                            ||
################################

 *
 */





void  CbusWriteByte(SPI_TypeDef *SPI_PORT, uint32_t Addr, uint32_t data){

	   uint8_t    wVal;

	    wVal=Addr;
	    //__disable_irq();
	        CBUS_SendFrame(SPI_PORT,wVal);
	        while(CBUS_BUSY(SPI_PORT));
	        while(!CBUS_TX_BUFFER_EMPTY_CHECK(SPI_PORT));
	        wVal=(uint16_t)data;
	        CBUS_SendFrame(SPI_PORT,wVal);
	        while(CBUS_BUSY(SPI_PORT));
	      	while(!CBUS_TX_BUFFER_EMPTY_CHECK(SPI_PORT));
	    //__enable_irq();
	    return;


}




/*
 *
################################
||                            ||
||  CBUS WRITE BYTE END       ||
||                            ||
################################

 *
 */


/*
 *
################################
||                            ||
||  CBUS WRITE REG START      ||
||                            ||
################################

 *
 */

void CbusWriteRegister(SPI_TypeDef *SPI_PORT, uint8_t Addr, uint16_t data) ///working
{
	uint16_t swapped = swap_uint16(data);
	uint8_t address_and_Value[3];
	uint8_t address = Addr;
	address_and_Value[2] = address;
	address_and_Value[1] = (swapped & 0xff);
	address_and_Value[0] = ((swapped >> 8) & (0xff));
	//while(CBUS_BUSY(SPI_PORT));

	while (CBUS_BUSY(SPI_PORT)) {
	};
	__disable_irq();
	CBUS_SendFrame(SPI_PORT, address_and_Value[2]);
	CBUS_SendFrame(SPI_PORT, address_and_Value[1]);
	CBUS_SendFrame(SPI_PORT, address_and_Value[0]);
	__enable_irq();
	while (CBUS_BUSY(SPI_PORT)) {
	};
	__enable_irq();
	return;

}


/*
 *
################################
||                            ||
||  CBUS WRITE REG END        ||
||                            ||
################################

 *
 */


/*
 *
################################
||                            ||
||  CBUS WRITE NO DATA START  ||
||                            ||
################################

 *
 */

void Cbus_Write_no_data(SPI_TypeDef *SPI_PORT, uint8_t addr) {
	while (CBUS_BUSY(SPI_PORT));
	CBUS_SendFrame(SPI_PORT, addr);
	return;
}
/*
 *
################################
||                            ||
||  CBUS WRITE NO DATA ENDS   ||
||                            ||
################################

 *
 */


/*
 *
################################
||                            ||
||  CBUS SENDFRAME START      ||
||                            ||
################################

 *
 */



void CBUS_SendFrame(SPI_TypeDef *SPI_PORT, uint16_t tx_data)
{

	*((volatile uint8_t*) & SPI_PORT->DR )= tx_data;
	//SPI_PORT->DR = tx_data;
//	while(CBUS_BUSY(SPI_PORT));
//	while(!CBUS_TX_BUFFER_EMPTY_CHECK(SPI_PORT));


}

/*
 *
################################
||                            ||
||  CBUS SENDFRAME END        ||
||                            ||
################################

 *
 */


/*
 *
################################
||                            ||
||  CBUS RECEIVEFRAME START   ||
||                            ||
################################

 *
 */

uint16_t CBUS_ReceiveFrame(SPI_TypeDef *SPI_PORT)
{
	//	return (uint8_t*)(SPI_PORT->DR);
	return (uint16_t)(SPI_PORT->DR);
}

/*
 *
################################
||                            ||
||  CBUS RECEIVEFRAME END     ||
||                            ||
################################

 *
 */

