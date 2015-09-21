/* Name: main.h
* Project: 1541-rebuild
* Author: Thorsten Kattanek
* Copyright: (c) 2015 by Thorsten Kattanek <thorsten.kattanek@gmx.de>
* License: GPL 2
*/

// AVR Spezifische Headerdateien
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

// Für die LCD Ansteuerung
#include "./lcd.h"

// SDCard Lib
#include "./sd_card_lib/fat.h"
#include "./sd_card_lib/fat_config.h"
#include "./sd_card_lib/partition.h"
#include "./sd_card_lib/sd_raw.h"
#include "./sd_card_lib/sd_raw_config.h"

// Enthält nur die Versionsnummer als String
#include "./version.h"

#define NULL    ((void *)0)

// Konfiguration /////////////////////////////////////////////////

// LCD
#define LCD_LINE_COUNT 4
#define LCD_LINE_SIZE 20

// Zeit in ms wie lange die Version nach dem Start angezeigt wird
#define START_MESSAGE_TIME 2000

// Spur auf dem der Lesekopf beim Start/Reset stehen soll
#define INIT_TRACK 1

// Prellzeit der Taster in ms
#define PRELL_TIME 200

// Anschluss der Stepper Signale
// Zwingend diese PINs wegen Extern Interrupts PCINT6/7
// Bei Änderung muss der Sourcecode angepasst werden !
#define STP_DDR  DDRA
#define STP_PIN PINA
#define STP1 PINA6
#define STP0 PINA7

// Anschluss des Laufwerkmotor Signals
#define MTR_DDR DDRC
#define MTR_PIN PINC
#define MTR	PINC2

#define get_motor_status() (MTR_PIN & (1<<MTR))

// Steuersignale
// BYTE READY
#define BYTE_READY_DDR DDRC
#define BYTE_READY_PORT PORTC
#define BYTE_READY  PC0

#define set_byte_ready() BYTE_READY_PORT |= 1 << BYTE_READY
#define clear_byte_ready() BYTE_READY_PORT &= ~(1 << BYTE_READY)

// SYNC
#define SYNC_DDR DDRC
#define SYNC_PORT PORTC
#define SYNC  PC1

#define set_sync() SYNC_PORT |= 1 << SYNC
#define clear_sync() SYNC_PORT &= ~(1 << SYNC)

// SOE
#define SOE_DDR DDRC
#define SOE_PIN PINC
#define SOE	PINC6

#define get_soe_status() (SOE_PIN & (1<<SOE))

// WPS
#define WPS_DDR DDRC
#define WPS_PORT PORTC
#define WPS  PC4

#define set_wps() WPS_PORT |= 1 << WPS
#define clear_wps() WPS_PORT &= ~(1 << WPS)

// Anschluss der Datenleitungen
#define DATA_DDR   DDRD
#define DATA_PORT  PORTD

#define out_gcr_byte(gcr_byte) DATA_PORT = gcr_byte

// Einabetasten
#define KEY0_DDR DDRB
#define KEY0_PORT PORTB
#define KEY0_PIN PINB
#define KEY0	 PINB0

#define KEY1_DDR DDRB
#define KEY1_PORT PORTB
#define KEY1_PIN PINB
#define KEY1	 PINB1

#define KEY2_DDR DDRC
#define KEY2_PORT PORTC
#define KEY2_PIN PINC
#define KEY2	 PINC3

#define get_key0_status() (~KEY0_PIN & (1<<KEY0))
#define get_key1_status() (~KEY1_PIN & (1<<KEY1))
#define get_key2_status() (~KEY2_PIN & (1<<KEY2))

//////////////////////////////////////////////////////////////////
// #define __AVR_ATmega128__

int8_t init_sd_card();
void show_start_message();
void init_stepper();
void stepper_inc();
void stepper_dec();
void init_motor();
void init_controll_signals();
void init_timer0();
void start_timer0();
void stop_timer0();
void init_timer2();
void start_timer2();
void stop_timer2();
void init_keys();
int8_t view_dir_entry(uint16_t entry_start, struct fat_dir_entry_struct* dir_entry);
int8_t open_disk_image(struct fat_dir_entry_struct* file_entry);
int8_t close_disk_image(struct fat_dir_entry_struct* file_entry);
int8_t open_g64_image(struct fat_dir_entry_struct* file_entry);
int8_t open_d64_image(struct fat_dir_entry_struct* file_entry);

void send_disk_change();

/////////////////////////////////////////////////////////////////
// Globale Variablen

struct partition_struct* partition = NULL;
struct fat_fs_struct* fs = NULL;
struct fat_dir_entry_struct directory;
struct fat_dir_struct* dd = NULL;

struct fat_dir_entry_struct file_entry;
struct fat_file_struct* fd;

uint8_t gcr_track[8192];
int16_t gcr_track_length = 7139;
volatile uint8_t akt_gcr_byte = 0;
volatile uint16_t akt_track_pos = 0;

int8_t lcd_puffer[33]; // Maximal 32 Zeichen

volatile uint16_t wait_key_counter0 = 0;
volatile uint16_t wait_key_counter1 = 0;
volatile uint16_t wait_key_counter2 = 0;

uint8_t akt_half_track;

volatile stepper_msg = 0;   // 0-keine Stepperaktivität ; 1=StepperDec ; 2-255=StepperInc