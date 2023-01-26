/*
 * functional_image_alog.h
 *
 *  Created on: Nov 4, 2022
 *      Author: Isfandyar Qureshi
 */

#ifndef INC_FUNCTIONAL_IMAGE_ALOG_H_
#define INC_FUNCTIONAL_IMAGE_ALOG_H_


#include <stdbool.h>
typedef bool fi_error_check;

/// reset the codec
void General_Reset_to_CMX72619();


/// functional image load first step
///
/// checks for 3 word levels in register Audio_out_fifo_level
/// test driven function report true when check_word_level >=3
fi_error_check Read_audio_fifo_out_level_reg_for_3_device_check_word();

/// set pin pg2 and pg3 and enable them as outputs
///
/// high speed both pins
void enable_codec_boot_control_gpios();


/// sent boot pin to logic 1
void set_boot_en1_en2_high();

void set_boot_en1_en2_low();

void set_boot_en1_en2_for_serial_mem();

/// functional block 2nd part flow diagram implementation
fi_error_check Write_block();

#endif /* INC_FUNCTIONAL_IMAGE_ALOG_H_ */
