/*
 * edge_impulse.cpp
 *
 *  Created on: Oct 9, 2023
 *      Author: gustavo
 */

#include "main.h"
#include "cmsis_os.h"
#include "adxl345.h"
#include "print_service.h"
#include <stdio.h>

#if 1
#include "edge-impulse-sdk/classifier/ei_run_classifier.h"
#include "edge-impulse-sdk/dsp/numpy.hpp"
#include "model-parameters/model_metadata.h"

SemaphoreHandle_t sem_new_data;

static float features[100] = {0.0f};
    // copy raw features here (for example from the 'Live classification' page)
    // see https://docs.edgeimpulse.com/docs/running-your-impulse-arduino

/**
 * @brief      Copy raw feature data in out_ptr
 *             Function called by inference library
 *
 * @param[in]  offset   The offset
 * @param[in]  length   The length
 * @param      out_ptr  The out pointer
 *
 * @return     0
 */
int raw_feature_get_data(size_t offset, size_t length, float *out_ptr) {
    memcpy(out_ptr, features + offset, length * sizeof(float));
    return 0;
}

extern "C" int raw_feature_set_data(float *data);
int raw_feature_set_data(float *data) {
    memcpy(features, data, 100 * sizeof(float));
    return 0;
}

extern "C" void Task_edge_impulse(void *param);

void Task_edge_impulse(void *param){
	if (sem_new_data == NULL) {
		sem_new_data = xSemaphoreCreateBinary();
	}

	while(1)
	{
		xSemaphoreTake(sem_new_data, portMAX_DELAY);
	    ei_printf("Edge Impulse inferencing\n");

	    if (sizeof(features) / sizeof(float) != EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE) {
	        ei_printf("The size of your 'features' array is not correct. Expected %lu items, but had %lu\n",
	            (long int)EI_CLASSIFIER_DSP_INPUT_FRAME_SIZE, (long int)(sizeof(features) / sizeof(float)));
	        vTaskSuspend(NULL);
	    }

	    ei_impulse_result_t result = { 0 };

	    // the features are stored into flash, and we don't want to load everything into RAM
	    signal_t features_signal;
	    features_signal.total_length = sizeof(features) / sizeof(features[0]);
	    features_signal.get_data = &raw_feature_get_data;

	    // invoke the impulse
	    EI_IMPULSE_ERROR res = run_classifier(&features_signal, &result, false /* debug */);
	    ei_printf("run_classifier returned: %d\n", res);

	    if (res != 0) return;

	    // print the predictions
	    ei_printf("Predictions ");
	    ei_printf("(DSP: %d ms., Classification: %d ms., Anomaly: %d ms.)",
	        result.timing.dsp, result.timing.classification, result.timing.anomaly);
	    ei_printf(": \n");
	    ei_printf("[");
	    for (size_t ix = 0; ix < EI_CLASSIFIER_LABEL_COUNT; ix++) {
	        ei_printf("%.5f", result.classification[ix].value);
	#if EI_CLASSIFIER_HAS_ANOMALY == 1
	        ei_printf(", ");
	#else
	        if (ix != EI_CLASSIFIER_LABEL_COUNT - 1) {
	            ei_printf(", ");
	        }
	#endif
	    }
	#if EI_CLASSIFIER_HAS_ANOMALY == 1
	    ei_printf("%.3f", result.anomaly);
	#endif
	    ei_printf("]\n");

	    // human-readable predictions
	    for (size_t ix = 0; ix < EI_CLASSIFIER_LABEL_COUNT; ix++) {
	        ei_printf("    %s: %.5f\n", result.classification[ix].label, result.classification[ix].value);
	    }
	#if EI_CLASSIFIER_HAS_ANOMALY == 1
	    ei_printf("    anomaly score: %.3f\n", result.anomaly);
	#endif
	}
}
#endif



