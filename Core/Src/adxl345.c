#include "adxl345.h"
#include "FreeRTOS.h"
#include "semphr.h"

static uint8_t chipid=0;
static float adxl345_float_gain = 0.0078125f;

// Declares a semaphore structure for the UART
SemaphoreHandle_t sem_adxl345 = NULL;

HAL_StatusTypeDef adxl_write (uint8_t reg, uint8_t value)
{
	uint8_t data[2];
	data[0] = reg;
	data[1] = value;
	HAL_GPIO_WritePin(ADXL345_CS_GPIO_Port, ADXL345_CS_Pin, SET);
	HAL_StatusTypeDef ret = HAL_I2C_Master_Transmit_IT(&hi2c1, adxl_address, data, 2);
	if (xSemaphoreTake(sem_adxl345, 100) != pdTRUE) {
		HAL_GPIO_WritePin(ADXL345_CS_GPIO_Port, ADXL345_CS_Pin, RESET);
		return HAL_TIMEOUT;
	}
	HAL_GPIO_WritePin(ADXL345_CS_GPIO_Port, ADXL345_CS_Pin, RESET);
	return ret;
}

void HAL_I2C_MasterTxCpltCallback(I2C_HandleTypeDef *hi2c){
	signed portBASE_TYPE pxHigherPriorityTaskWoken = pdFALSE;
	xSemaphoreGiveFromISR(sem_adxl345, &pxHigherPriorityTaskWoken);
}

void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef *hi2c) {
	signed portBASE_TYPE pxHigherPriorityTaskWoken = pdFALSE;
	xSemaphoreGiveFromISR(sem_adxl345, &pxHigherPriorityTaskWoken);
}

HAL_StatusTypeDef adxl_read_values (uint8_t reg, uint8_t *data_rec, uint16_t size)
{
	HAL_GPIO_WritePin(ADXL345_CS_GPIO_Port, ADXL345_CS_Pin, SET);
	HAL_StatusTypeDef ret = HAL_I2C_Mem_Read_IT(&hi2c1, adxl_address, reg, 1, (uint8_t *)data_rec, size);
	if (xSemaphoreTake(sem_adxl345, 100) != pdTRUE) {
		HAL_GPIO_WritePin(ADXL345_CS_GPIO_Port, ADXL345_CS_Pin, RESET);
		return HAL_TIMEOUT;
	}
	HAL_GPIO_WritePin(ADXL345_CS_GPIO_Port, ADXL345_CS_Pin, RESET);
	return ret;
}

HAL_StatusTypeDef adxl_read_address (uint8_t reg)
{
	HAL_GPIO_WritePin(ADXL345_CS_GPIO_Port, ADXL345_CS_Pin, SET);
	HAL_StatusTypeDef ret = HAL_I2C_Mem_Read_IT(&hi2c1, adxl_address, reg, 1, (uint8_t *)&chipid, 1);
	if (xSemaphoreTake(sem_adxl345, 100) != pdTRUE) {
		HAL_GPIO_WritePin(ADXL345_CS_GPIO_Port, ADXL345_CS_Pin, RESET);
		return HAL_TIMEOUT;
	}
	HAL_GPIO_WritePin(ADXL345_CS_GPIO_Port, ADXL345_CS_Pin, RESET);
	return ret;
}

uint8_t adxl_get_chip_id (void)
{
	return chipid;
}

void adxl_init(adxl345_res_t resolution)
{
	if (sem_adxl345 == NULL) {
		sem_adxl345 = xSemaphoreCreateBinary();
	}
	adxl_read_address (0x00); // read the DEVID

	adxl_write (0x2d, 0x00);  // reset all bits
	adxl_write (0x2d, 0x08);  // power_cntl measure and wake up 8hz
	switch(resolution) {
		case res_2g:
			adxl_write (0x31, 0x00);  // data_format range= +- 2g
			adxl345_float_gain = 0.00390625f;
			break;
		case res_4g:
			adxl_write (0x31, 0x01);  // data_format range= +- 4g
			adxl345_float_gain = 0.0078125f;
			break;
		case res_8g:
			adxl_write (0x31, 0x02);  // data_format range= +- 8g
			adxl345_float_gain = 0.015625f;
			break;
		case res_16g:
			adxl_write (0x31, 0x03);  // data_format range= +- 16g
			adxl345_float_gain = 0.03125f;
			break;
		default:
			adxl_write (0x31, 0x01);  // data_format range= +- 4g
			adxl345_float_gain = 0.0078125f;
			break;
	}

}

HAL_StatusTypeDef adxl_readxyz(int16_t *x, int16_t *y, int16_t *z)
{
	uint8_t data_rec[6];
	HAL_StatusTypeDef ret = adxl_read_values (0x32, data_rec, 6);
	*x = ((data_rec[1]<<8)|data_rec[0]);
	*y = ((data_rec[3]<<8)|data_rec[2]);
	*z = ((data_rec[5]<<8)|data_rec[4]);
	return ret;
}

HAL_StatusTypeDef adxl_readxyz_in_g(float *x, float *y, float *z)
{
	uint8_t data_rec[6];
	HAL_StatusTypeDef ret = adxl_read_values (0x32, data_rec, 6);
	*x = (int16_t)((data_rec[1]<<8)|data_rec[0]) * adxl345_float_gain;
	*y = (int16_t)((data_rec[3]<<8)|data_rec[2]) * adxl345_float_gain;
	*z = (int16_t)((data_rec[5]<<8)|data_rec[4]) * adxl345_float_gain;
	return ret;
}


int16_t adxl_readx(void)
{
	int16_t x;
	uint8_t data_rec[2];
	(void)adxl_read_values (0x32, data_rec, 2);
	x = ((data_rec[1]<<8)|data_rec[0]);
	return x;
}

int16_t adxl_ready(void)
{
	int16_t y;
	uint8_t data_rec[2];
	(void)adxl_read_values (0x34, data_rec, 2);
	y = ((data_rec[1]<<8)|data_rec[0]);
	return y;
}

int16_t adxl_readz(void)
{
	int16_t z;
	uint8_t data_rec[2];
	(void)adxl_read_values (0x36, data_rec, 2);
	z = ((data_rec[1]<<8)|data_rec[0]);
	return z;
}

