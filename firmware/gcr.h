/**********************************
 * GCR Routines header
 *
 * Author: F00K42
 * Last change: 2021/12/31
***********************************/

#ifndef _GCR_HEADER_
#define _GCR_HEADER_

#include <stdio.h>
#include <string.h>
#include <stdint.h>

void ConvertToGCR(uint8_t *source_buffer, uint8_t *destination_buffer);
void ConvertFromGCR(uint8_t *source_buffer, uint8_t *destination_buffer);

#endif // _GCR_HEADER_