#include "main.h"

//Adxl345 Device Address 
#define adxl_address 0x53<<1

//Set i2c Handeler here
extern I2C_HandleTypeDef hi2c1;

typedef enum adxl345_res_t_ {
	res_2g,
	res_4g,
	res_8g,
	res_16g
}adxl345_res_t;


HAL_StatusTypeDef adxl_write (uint8_t reg, uint8_t value);
HAL_StatusTypeDef adxl_read_values (uint8_t reg, uint8_t *data_rec, uint16_t size);
HAL_StatusTypeDef adxl_read_address (uint8_t reg);
void adxl_init (adxl345_res_t resolution);
uint8_t adxl_get_chip_id (void);
HAL_StatusTypeDef adxl_readxyz(int16_t *x, int16_t *y, int16_t *z);
HAL_StatusTypeDef adxl_readxyz_in_g(float *x, float *y, float *z);
int16_t adxl_readx(void);
int16_t adxl_ready(void);
int16_t adxl_readz(void);
