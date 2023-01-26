/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2022 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "CODEC_REG.h"
#include "cbus.h"
#include "functional_image_alog.h"
#include "timer6_delay.h"
#include "unity.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
#define reset 0x01
#define SYNC_CTRL 0x04
#define AIG  0x05
#define AOG  0x06
#define VCFG 0x07
#define VCTRL 0x11
#define VCTR 0x3C
#define _1F   0x1F
#define _1D   0x1D
#define  _0A  0x0A
#define _09   0x09
#define enc 0x30
#define dec 0x10
#define status 0x40
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
uint8_t arr[6];
uint8_t arr2[10];
//{ 0xAA, 0xbb, 0xff, 0xAe, 0xdd, 0xcc, 0xAb, 0xef, 0xcd, 0xbc };
//={ 0xAA,0xbb,0xff,0xee, 0xdd, 0xcc, 0xAb, 0xef,0xcd,0xbc };
uint16_t data;
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef hlpuart1;

SPI_HandleTypeDef hspi1;

PCD_HandleTypeDef hpcd_USB_OTG_FS;

/* USER CODE BEGIN PV */
void sum(int a, int b){
	return a+b;
}

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_LPUART1_UART_Init(void);
static void MX_USB_OTG_FS_PCD_Init(void);
static void MX_SPI1_Init(void);
/* USER CODE BEGIN PFP */
void INPUT_CODEC_REG_SET();
void OUTPUT_CODEC_RED_SET();
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
uint16_t array[24];
static uint16_t x;
/* USER CODE END 0 */
//uint16_t *pointtoarray=array;
/**
 * @brief  The application entry point.
 * @retval int
 */

int main(void)
{
	/* USER CODE BEGIN 1 */
	//  char check[5];
	/* USER CODE END 1 */

	uint8_t address = 0xcd;
	uint16_t address_casted = (uint16_t)address;

	UNITY_BEGIN();
	/* MCU Configuration--------------------------------------------------------*/

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* USER CODE BEGIN Init */

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	CBUS_INIT();
	MX_LPUART1_UART_Init();
	MX_USB_OTG_FS_PCD_Init();
	MX_SPI1_Init();
	/* USER CODE BEGIN 2 */

	//enable_codec_boot_control_gpios();
	//set_boot_en1_en2_high();
	enable_timer6();
	Cbus_Config(SPI3);
	CBUS_ENABLE(SPI3);

	CBUS_CHIP_SElECT_HIGH();

	HAL_Delay(30);

	CBUS_CHIP_SElECT_LOW();
	Cbus_Write_no_data(SPI3, reset);
	CBUS_CHIP_SElECT_HIGH();
//Delay_US(10000);
	HAL_Delay(100);

	CBUS_CHIP_SElECT_LOW();
	CbusWriteRegister(SPI3, _1F, 0xC107);
	CBUS_CHIP_SElECT_HIGH();
	HAL_Delay(100);

	CBUS_CHIP_SElECT_LOW();
	CbusWriteRegister(SPI3, _1D, 0x0006);
	CBUS_CHIP_SElECT_HIGH();
	HAL_Delay(100);

	CBUS_CHIP_SElECT_LOW();
//Cbus_Write_Byte(SPI3,_0A , 0x00);
	CbusWriteByte(SPI3, _0A, 0x00);
	CBUS_CHIP_SElECT_HIGH();
//Delay_US(100000);
	HAL_Delay(100);

	CBUS_CHIP_SElECT_LOW();
//Cbus_Write_Byte(SPI3,_09 , 0x0F);
	CbusWriteByte(SPI3, _09, 0x0F);
	CBUS_CHIP_SElECT_HIGH();
//Delay_US(100000);
	HAL_Delay(50);

	CBUS_CHIP_SElECT_LOW();
//Cbus_Write_Byte(SPI3,VCFG , 0x34);
	CbusWriteByte(SPI3, VCFG, 0x34);
	CBUS_CHIP_SElECT_HIGH();
//Delay_US(100000);
	HAL_Delay(100);

	CBUS_CHIP_SElECT_LOW();
//Cbus_Write_Byte(SPI3,AIG, 0x8F);
	CbusWriteByte(SPI3, AIG, 0x8F);
	CBUS_CHIP_SElECT_HIGH();
//Delay_US(100000);
	HAL_Delay(100);

	CBUS_CHIP_SElECT_LOW();
//Cbus_Write_Byte(SPI3,AOG , 0x0A);
	CbusWriteByte(SPI3, AOG, 0x05);
	CBUS_CHIP_SElECT_HIGH();
//Delay_US(100000);
	HAL_Delay(100);

	 CBUS_CHIP_SElECT_LOW();
	 CbusWriteRegister(SPI3, VCTRL, 0x0007);
	 CBUS_CHIP_SElECT_HIGH();
	 //Delay_US(100000);
	 HAL_Delay(80);

	 CBUS_CHIP_SElECT_LOW();
	  x = Cbus_Read_Word(SPI3, VCTR);
	 CBUS_CHIP_SElECT_HIGH();
	 HAL_Delay(80);

	while (1)

	{
		//Delay_US(80000);
		/*
		 CBUS_CHIP_SElECT_LOW();
		 //Cbus_Read_Byte_stream(SPI3,VCTR,arr,2);
		 uint16_t y = Cbus_Read_Word(SPI3, status);
		 CBUS_CHIP_SElECT_HIGH();
		 HAL_Delay(2);

		 while((y & 0x00C7) == 0x00C7){
		 Delay_US(80000);
		 CBUS_CHIP_SElECT_LOW();
		 Cbus_Read_Byte_stream(SPI3, enc, arr, 10);
		 CBUS_CHIP_SElECT_HIGH();
		 Delay_US(15);
		 CBUS_CHIP_SElECT_LOW();
		 Cbus_Write_Byte_stream(SPI3, 0x10, arr, 10);
		 CBUS_CHIP_SElECT_HIGH();

*/
		Delay_US(80000);

		CBUS_CHIP_SElECT_LOW();
		//Cbus_Read_Byte_stream(SPI3,VCTR,arr,2);
		uint16_t y = Cbus_Read_Word(SPI3, status);
		CBUS_CHIP_SElECT_HIGH();
		HAL_Delay(2);
		if((y & 0x0001) == 0x0001){

		  CBUS_CHIP_SElECT_LOW();
		  Cbus_Read_Byte_stream(SPI3, enc, arr, 6);
		  CBUS_CHIP_SElECT_HIGH();



		  CBUS_CHIP_SElECT_LOW();
		  Cbus_Write_Byte_stream(SPI3, 0x10, arr, 6);
		  CBUS_CHIP_SElECT_HIGH();






/*
		CBUS_CHIP_SElECT_LOW();
		CbusWriteRegister(SPI3, VCTRL, 0x1234);
		CBUS_CHIP_SElECT_HIGH();
		//Delay_US(100000);
		HAL_Delay(5);

		CBUS_CHIP_SElECT_LOW();
		//Cbus_Read_Byte_stream(SPI3,VCTR,arr,2);
		uint32_t x = Cbus_Read_Word(SPI3, VCTR);
		CBUS_CHIP_SElECT_HIGH();
		HAL_Delay(5);
*/
	}
}
}
/**
 * @brief System Clock Configuration
 * @retval None
 */
void SystemClock_Config(void)
{
	RCC_OscInitTypeDef RCC_OscInitStruct =
	{ 0 };
	RCC_ClkInitTypeDef RCC_ClkInitStruct =
	{ 0 };

	/** Configure the main internal regulator output voltage
	 */
	if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
	{
		Error_Handler();
	}

	/** Configure LSE Drive Capability
	 */
	HAL_PWR_EnableBkUpAccess();
	__HAL_RCC_LSEDRIVE_CONFIG(RCC_LSEDRIVE_LOW);

	/** Initializes the RCC Oscillators according to the specified parameters
	 * in the RCC_OscInitTypeDef structure.
	 */
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_LSE
			| RCC_OSCILLATORTYPE_MSI;
	RCC_OscInitStruct.LSEState = RCC_LSE_ON;
	RCC_OscInitStruct.MSIState = RCC_MSI_ON;
	RCC_OscInitStruct.MSICalibrationValue = 0;
	RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
	RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
	RCC_OscInitStruct.PLL.PLLM = 1;
	RCC_OscInitStruct.PLL.PLLN = 40;
	RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
	RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
	RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
	if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
	{
		Error_Handler();
	}

	/** Initializes the CPU, AHB and APB buses clocks
	 */
	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
			| RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
	{
		Error_Handler();
	}

	/** Enable MSI Auto calibration
	 */
	HAL_RCCEx_EnableMSIPLLMode();
}

/**
 * @brief LPUART1 Initialization Function
 * @param None
 * @retval None
 */
static void MX_LPUART1_UART_Init(void)
{

	/* USER CODE BEGIN LPUART1_Init 0 */

	/* USER CODE END LPUART1_Init 0 */

	/* USER CODE BEGIN LPUART1_Init 1 */

	/* USER CODE END LPUART1_Init 1 */
	hlpuart1.Instance = LPUART1;
	hlpuart1.Init.BaudRate = 209700;
	hlpuart1.Init.WordLength = UART_WORDLENGTH_7B;
	hlpuart1.Init.StopBits = UART_STOPBITS_1;
	hlpuart1.Init.Parity = UART_PARITY_NONE;
	hlpuart1.Init.Mode = UART_MODE_TX_RX;
	hlpuart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	hlpuart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
	hlpuart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
	if (HAL_UART_Init(&hlpuart1) != HAL_OK)
	{
		Error_Handler();
	}
	/* USER CODE BEGIN LPUART1_Init 2 */

	/* USER CODE END LPUART1_Init 2 */

}

/**
 * @brief SPI1 Initialization Function
 * @param None
 * @retval None
 */
static void MX_SPI1_Init(void)
{

	/* USER CODE BEGIN SPI1_Init 0 */

	/* USER CODE END SPI1_Init 0 */

	/* USER CODE BEGIN SPI1_Init 1 */

	/* USER CODE END SPI1_Init 1 */
	/* SPI1 parameter configuration*/
	hspi1.Instance = SPI1;
	hspi1.Init.Mode = SPI_MODE_MASTER;
	hspi1.Init.Direction = SPI_DIRECTION_2LINES;
	hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
	hspi1.Init.CLKPolarity = SPI_POLARITY_HIGH;
	hspi1.Init.CLKPhase = SPI_PHASE_2EDGE;
	hspi1.Init.NSS = SPI_NSS_SOFT;
	hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_4;
	hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
	hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
	hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
	hspi1.Init.CRCPolynomial = 7;
	hspi1.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
	hspi1.Init.NSSPMode = SPI_NSS_PULSE_DISABLE;
	if (HAL_SPI_Init(&hspi1) != HAL_OK)
	{
		Error_Handler();
	}
	/* USER CODE BEGIN SPI1_Init 2 */

	/* USER CODE END SPI1_Init 2 */

}

/**
 * @brief USB_OTG_FS Initialization Function
 * @param None
 * @retval None
 */
static void MX_USB_OTG_FS_PCD_Init(void)
{

	/* USER CODE BEGIN USB_OTG_FS_Init 0 */

	/* USER CODE END USB_OTG_FS_Init 0 */

	/* USER CODE BEGIN USB_OTG_FS_Init 1 */

	/* USER CODE END USB_OTG_FS_Init 1 */
	hpcd_USB_OTG_FS.Instance = USB_OTG_FS;
	hpcd_USB_OTG_FS.Init.dev_endpoints = 6;
	hpcd_USB_OTG_FS.Init.speed = PCD_SPEED_FULL;
	hpcd_USB_OTG_FS.Init.phy_itface = PCD_PHY_EMBEDDED;
	hpcd_USB_OTG_FS.Init.Sof_enable = ENABLE;
	hpcd_USB_OTG_FS.Init.low_power_enable = DISABLE;
	hpcd_USB_OTG_FS.Init.lpm_enable = DISABLE;
	hpcd_USB_OTG_FS.Init.battery_charging_enable = ENABLE;
	hpcd_USB_OTG_FS.Init.use_dedicated_ep1 = DISABLE;
	hpcd_USB_OTG_FS.Init.vbus_sensing_enable = ENABLE;
	if (HAL_PCD_Init(&hpcd_USB_OTG_FS) != HAL_OK)
	{
		Error_Handler();
	}
	/* USER CODE BEGIN USB_OTG_FS_Init 2 */

	/* USER CODE END USB_OTG_FS_Init 2 */

}

/**
 * @brief GPIO Initialization Function
 * @param None
 * @retval None
 */
static void MX_GPIO_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct =
	{ 0 };

	/* GPIO Ports Clock Enable */
	__HAL_RCC_GPIOC_CLK_ENABLE();
	__HAL_RCC_GPIOH_CLK_ENABLE();
	__HAL_RCC_GPIOA_CLK_ENABLE();
	__HAL_RCC_GPIOB_CLK_ENABLE();
	__HAL_RCC_GPIOG_CLK_ENABLE();
	HAL_PWREx_EnableVddIO2();

	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(GPIOB, LD3_Pin | LD2_Pin, GPIO_PIN_RESET);

	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(USB_PowerSwitchOn_GPIO_Port, USB_PowerSwitchOn_Pin,
			GPIO_PIN_RESET);

	/*Configure GPIO pin : B1_Pin */
	GPIO_InitStruct.Pin = B1_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);

	/*Configure GPIO pins : LD3_Pin LD2_Pin */
	GPIO_InitStruct.Pin = LD3_Pin | LD2_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

	/*Configure GPIO pin : USB_OverCurrent_Pin */
	GPIO_InitStruct.Pin = USB_OverCurrent_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	HAL_GPIO_Init(USB_OverCurrent_GPIO_Port, &GPIO_InitStruct);

	/*Configure GPIO pin : USB_PowerSwitchOn_Pin */
	GPIO_InitStruct.Pin = USB_PowerSwitchOn_Pin;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(USB_PowerSwitchOn_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
void CODEC1_REG_SET()
{
	HAL_Delay(100);
	CBUS_CHIP_SElECT_LOW();
	CbusWriteRegister(SPI3, MODE, 0x0210); //0024
	CBUS_CHIP_SElECT_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_LOW();
	CbusWriteRegister(SPI3, Input_type, 0x0124); //0024
	CBUS_CHIP_SElECT_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_LOW();
	CbusWriteRegister(SPI3, Output_type, 0x0124); //0024
	CBUS_CHIP_SElECT_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_LOW();
	CbusWriteRegister(SPI3, MODE, 0x0212); //0222
	CBUS_CHIP_SElECT_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_LOW();
	CbusWriteRegister(SPI3, ANAIN_Coarse_GAIN, 0x0500); //0A66
	CBUS_CHIP_SElECT_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_LOW();
	CbusWriteRegister(SPI3, ANAIN_Config, 0x0A09); //0A66
	CBUS_CHIP_SElECT_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_LOW();
	CbusWriteRegister(SPI3, Fine_Gain_Channel_1, 0x0080); //0A66
	CBUS_CHIP_SElECT_HIGH();
	HAL_Delay(50);
}

void OUTPUT_CODEC_RED_SET()
{

	CBUS_CHIP_SElECT_OUPUT_CODEC_LOW();
	CbusWriteRegister(SPI3, MODE, 0x0120);
	CBUS_CHIP_SElECT_OUPUT_CODEC_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_OUPUT_CODEC_LOW();
	CbusWriteRegister(SPI3, Input_type, 0x0124);
	CBUS_CHIP_SElECT_OUPUT_CODEC_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_OUPUT_CODEC_LOW();
	CbusWriteRegister(SPI3, Output_type, 0x0124);
	CBUS_CHIP_SElECT_OUPUT_CODEC_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_OUPUT_CODEC_LOW();
	CbusWriteRegister(SPI3, MODE, 0x0122);
	CBUS_CHIP_SElECT_OUPUT_CODEC_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_OUPUT_CODEC_LOW();
	CbusWriteRegister(SPI3, ANAOUT_CONFIG, 0x0A66);
	CBUS_CHIP_SElECT_OUPUT_CODEC_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_OUPUT_CODEC_LOW();
	CbusWriteRegister(SPI3, SPKR_COARSE_GAIN, 0x8000);
	CBUS_CHIP_SElECT_OUPUT_CODEC_HIGH();
	HAL_Delay(50);

	CBUS_CHIP_SElECT_OUPUT_CODEC_LOW();
	CbusWriteRegister(SPI3, Fine_Gain_Channel_1, 0x0090);
	CBUS_CHIP_SElECT_OUPUT_CODEC_HIGH();
	HAL_Delay(50);

}
/* USER CODE END 4 */

/**
 * @brief  This function is executed in case of error occurrence.
 * @retval None
 */
void Error_Handler(void)
{
	/* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1)
	{
	}
	/* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
