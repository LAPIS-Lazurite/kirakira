#include "kirakira_ide.h" // Additional Header

#define LED_LENGTH  60
#define RESOLUTION	64
#define	DARKNESS	8

#define RED_R		255
#define RED_G		0
#define RED_B		0
#define ORANGE_R	255
#define ORANGE_G	64
#define ORANGE_B	0
#define YELLOW_R	255
#define YELLOW_G	255
#define YELLOW_B	0
#define GREEN_R		0
#define GREEN_G		128
#define GREEN_B		0
#define CYAN_R		0
#define CYAN_G		255
#define CYAN_B		255
#define BLUE_R		0
#define BLUE_G		0
#define BLUE_B		255
#define VIOLET_R	255
#define VIOLET_G	0
#define VIOLET_B	255

#define SUBGHZ_CH		36
#define SUBGHZ_PANID	0xABCD
unsigned char led_start[LED_LENGTH * 3];
unsigned char led_target[LED_LENGTH * 3];
unsigned char led_ram[LED_LENGTH * 3];
uint8_t rx_data[256];

uint32_t last_rx_time = 0;
uint32_t delay_time = 20;
typedef struct  {
	uint8_t b;
	uint8_t g;
	uint8_t r;
	uint8_t mode;
}COLOR;

#define LED_FUNC_CNG	1
#define LED_FUNC_LBL	2
#define LED_FUNC_SFT	3
#define LED_FUNC_SFT_R	4
#define LED_FUNC_GUN	5
#define LED_FUNC_GUN_R	6
#define LED_FUNC_BLOOD		7
#define LED_FUNC_BLOOD_S	8
#define LED_FUNC_STACK		9
#define LED_FUNC_STACK_R	10
#define LED_FUNC_FADE		11
#define LED_FUNC_RB			0xFF

union LED_MODE {
	COLOR color;
	uint32_t d32;
} led_mode;


void setup(void)
{
	SUBGHZ_MSG msg;

	Serial.begin(115200);

	memset(led_ram, 0, sizeof(led_ram));
	
	led.init(8, LED_LENGTH);
	led.write(led_ram);

	msg = SubGHz.init();
	if (msg != SUBGHZ_OK)
	{
	SubGHz.msgOut(msg);
	while (1) { }
	}
	SubGHz.setBroadcastEnb(false);
	msg = SubGHz.begin(SUBGHZ_CH, SUBGHZ_PANID,  SUBGHZ_100KBPS, SUBGHZ_PWR_20MW);
	SubGHz.rxEnable(NULL);
}
uint8_t ledFuncCNG(void) {
	int i;
	for(i=0;i<LED_LENGTH;i++) {
		led_ram[i*3+0] = led_mode.color.g/DARKNESS;
		led_ram[i*3+1] = led_mode.color.r/DARKNESS;
		led_ram[i*3+2] = led_mode.color.b/DARKNESS;
	}
	led.write(led_ram);
	return 0;
}
uint8_t ledFuncLBL(void) {
	int i;
	static int j=0;
	uint8_t retval = LED_FUNC_LBL;
	if(led_mode.color.mode != 0) {
		memcpy(led_start,led_ram,sizeof(led_start));
		for(i=0;i<LED_LENGTH * 3;i++) {
			switch(i%3) {
				case 0:
				led_target[i] = led_mode.color.g/DARKNESS;
				break;
				case 1:
				led_target[i] = led_mode.color.r/DARKNESS;
				break;
				case 2:
				led_target[i] = led_mode.color.b/DARKNESS;
				break;
			}
		}
		j=0;
		delay_time = 40;
	}
	if(j <= RESOLUTION) {
		for(i=0;i<LED_LENGTH*3;i++) {
			led_ram[i] = map(j,0,RESOLUTION,led_start[i],led_target[i]);
		}
		j++;
		led.write(led_ram);
//		Serial.println_long(j,DEC);
	} else {
		retval = 0;
	}
	return retval;
}

uint8_t ledFuncSFT(void) {
	int i;
	static int j=0;
	uint8_t retval = LED_FUNC_SFT;
	if(led_mode.color.mode != 0) {
		j=0;
		delay_time = 100;
	}
	if(j < LED_LENGTH) {
		for(i = (LED_LENGTH-2); i>= 0; i--) {
			int k = i*3;
			led_ram[k+3] = led_ram[k+0];
			led_ram[k+4] = led_ram[k+1];
			led_ram[k+5] = led_ram[k+2];
		}
		led_ram[0] = led_mode.color.g/DARKNESS;
		led_ram[1] = led_mode.color.r/DARKNESS;
		led_ram[2] = led_mode.color.b/DARKNESS;
		led.write(led_ram);
		j++;
	} else {
		retval = 0;
		j=0;
	}
	Serial.println_long(j,DEC);
	return retval;
}

uint8_t ledFuncSFT_R(void) {
	int i,k;
	static int j=0;
	uint8_t retval = LED_FUNC_SFT_R;
	if(led_mode.color.mode != 0) {
		j=0;
		delay_time = 100;
	}
	if(j < LED_LENGTH) {
		for(i = 1; i < LED_LENGTH; i++) {
			k = i*3;
			led_ram[k-3] = led_ram[k];
			led_ram[k-2] = led_ram[k+1];
			led_ram[k-1] = led_ram[k+2];
		}
		k = i*3;
		led_ram[k-3] = led_mode.color.g/DARKNESS;
		led_ram[k-2] = led_mode.color.r/DARKNESS;
		led_ram[k-1] = led_mode.color.b/DARKNESS;
		led.write(led_ram);
		j++;
	} else {
		retval = 0;
		j=0;
	}
	return retval;
}
uint8_t ledFuncGun(void) {
	int i;
	static int j=0;
	uint8_t retval = LED_FUNC_GUN;
	if(led_mode.color.mode != 0) {
		memcpy(led_start,led_ram,sizeof(led_start));
		j=0;
		delay_time = 40;
	}
	memcpy(led_ram,led_start,sizeof(led_ram));
	if(j < LED_LENGTH) {
		led_ram[j*3] = led_mode.color.g/DARKNESS;
		led_ram[j*3+1] = led_mode.color.r/DARKNESS;
		led_ram[j*3+2] = led_mode.color.b/DARKNESS;
		led.write(led_ram);
//		Serial.println_long(j,DEC);
		j++;
	} else {
		retval = 0;
		j=0;
		led.write(led_ram);
	}
	return retval;
}
uint8_t ledFuncGunR(void) {
	int i;
	static int j=0;
	uint8_t retval = LED_FUNC_GUN_R;
	if(led_mode.color.mode != 0) {
		memcpy(led_start,led_ram,sizeof(led_start));
		j=LED_LENGTH-1;
		delay_time = 40;
	}
	memcpy(led_ram,led_start,sizeof(led_ram));
	if(j >= 0) {
		led_ram[j*3] = led_mode.color.g/DARKNESS;
		led_ram[j*3+1] = led_mode.color.r/DARKNESS;
		led_ram[j*3+2] = led_mode.color.b/DARKNESS;
		led.write(led_ram);
//		Serial.println_long(j,DEC);
		j--;
	} else {
		retval = 0;
		j=0;
		led.write(led_ram);
	}
	return retval;
}

uint8_t ledFuncBlood(void) {
	int i;
	static int j=0;
	static int k=0;
	uint8_t retval = LED_FUNC_BLOOD;
	if(led_mode.color.mode != 0) {
		j=0,k=0;
		delay_time = 15;
		memset(led_ram,0,sizeof(led_ram));
	}
	if(j ==0 ) { 
		memcpy(led_start,led_ram,sizeof(led_start));
		for(i=0;i<LED_LENGTH;i++){
			switch((k+i)%8) {
				case 0:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
				case 1:
				led_target[i*3+0] = led_mode.color.g/DARKNESS;
				led_target[i*3+1] = led_mode.color.r/DARKNESS;
				led_target[i*3+2] = led_mode.color.b/DARKNESS;
				break;
				case 2:
				led_target[i*3+0] = led_mode.color.g/DARKNESS;
				led_target[i*3+1] = led_mode.color.r/DARKNESS;
				led_target[i*3+2] = led_mode.color.b/DARKNESS;
				break;
				case 3:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
				case 4:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
				case 5:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
				case 6:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
				case 7:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
			}
		}
	}
	for(i=0;i<LED_LENGTH*3;i++) {
		led_ram[i] = map(j,0,RESOLUTION/8,led_start[i],led_target[i]);
//		Serial.println_long(led_ram[i],DEC);
	}
	led.write(led_ram);
	j++;
	if(j>=RESOLUTION/8) {
		j=0;
		k++;
		if(k>=8) k = 0;
	}

	return retval;
}
uint8_t ledFuncBloodS(void) {
	int i;
	static int j=0;
	static int k=0;
	uint8_t retval = LED_FUNC_BLOOD;
	if(led_mode.color.mode != 0) {
		j=0,k=0;
		delay_time = 10;
		memset(led_ram,0,sizeof(led_ram));
	}
	if(j ==0 ) { 
		memcpy(led_start,led_ram,sizeof(led_start));
		for(i=0;i<LED_LENGTH;i++){
			switch((k+i)%8) {
				case 0:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
				case 1:
				led_target[i*3+0] = led_mode.color.g/DARKNESS;
				led_target[i*3+1] = led_mode.color.r/DARKNESS;
				led_target[i*3+2] = led_mode.color.b/DARKNESS;
				break;
				case 2:
				led_target[i*3+0] = led_mode.color.g/DARKNESS;
				led_target[i*3+1] = led_mode.color.r/DARKNESS;
				led_target[i*3+2] = led_mode.color.b/DARKNESS;
				break;
				case 3:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
				case 4:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
				case 5:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
				case 6:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
				case 7:
				led_target[i*3+0] = led_mode.color.g/DARKNESS/32;
				led_target[i*3+1] = led_mode.color.r/DARKNESS/32;
				led_target[i*3+2] = led_mode.color.b/DARKNESS/32;
				break;
			}
		}
	}
	for(i=0;i<LED_LENGTH*3;i++) {
		led_ram[i] = map(j,0,RESOLUTION/8,led_start[i],led_target[i]);
//		Serial.println_long(led_ram[i],DEC);
	}
	led.write(led_ram);
	j++;
	if(j>=RESOLUTION/8) {
		j=0;
		k++;
		if(k>=8) k = 0;
	}

	return retval;
}
uint8_t ledFuncFade(void) {
	int i;
	static int j=30;
	static bool reverse = true;
	uint8_t retval = LED_FUNC_FADE;
	if(led_mode.color.mode != 0) {
		j=1;
		delay_time = 100;
		memset(led_ram,0,sizeof(led_ram));
	}
	for(i=0;i<LED_LENGTH*3;i+=3) {
		if(led_mode.color.g != 0 ) {
			led_ram[i+0] = (led_mode.color.g/DARKNESS > j)?(led_mode.color.g/DARKNESS - j) : 0;
		}
		if(led_mode.color.r != 0 ) {
			led_ram[i+1] = (led_mode.color.r/DARKNESS > j)?(led_mode.color.r/DARKNESS - j) : 0;
		}
		if(led_mode.color.b != 0 ) {
			led_ram[i+2] = (led_mode.color.b/DARKNESS > j)?(led_mode.color.b/DARKNESS - j) : 0;
		}
	}
	led.write(led_ram);
	if(reverse == false ) {
		j++;
		if(j>=30) {
			reverse = true;
		}
	} else {
		j--;
		if(j<=16) {
			reverse = false;
		}
	}
	return retval;
}

uint8_t ledFuncRB(void) {
	int i;
	static int j=0;
	static int k=0;
	uint8_t retval = LED_FUNC_RB;
	if(led_mode.color.mode != 0) {
		j=0,k=0;
		delay_time = 20;
	}
	if(j ==0 ) { 
		memcpy(led_start,led_ram,sizeof(led_start));
		for(i=0;i<LED_LENGTH;i++){
			switch((k+i)%7) {
				case 0:
				led_target[i*3+0] = RED_G/DARKNESS;
				led_target[i*3+1] = RED_R/DARKNESS;
				led_target[i*3+2] = RED_B/DARKNESS;
				break;
				case 1:
				led_target[i*3+0] = ORANGE_G/DARKNESS;
				led_target[i*3+1] = ORANGE_R/DARKNESS;
				led_target[i*3+2] = ORANGE_B/DARKNESS;
				break;
				case 2:
				led_target[i*3+0] = YELLOW_G/DARKNESS;
				led_target[i*3+1] = YELLOW_R/DARKNESS;
				led_target[i*3+2] = YELLOW_B/DARKNESS;
				break;
				case 3:
				led_target[i*3+0] = GREEN_G/DARKNESS;
				led_target[i*3+1] = GREEN_R/DARKNESS;
				led_target[i*3+2] = GREEN_B/DARKNESS;
				break;
				case 4:
				led_target[i*3+0] = CYAN_G/DARKNESS;
				led_target[i*3+1] = CYAN_R/DARKNESS;
				led_target[i*3+2] = CYAN_B/DARKNESS;
				break;
				case 5:
				led_target[i*3+0] = BLUE_G/DARKNESS;
				led_target[i*3+1] = BLUE_R/DARKNESS;
				led_target[i*3+2] = BLUE_B/DARKNESS;
				break;
				case 6:
				led_target[i*3+0] = VIOLET_G/DARKNESS;
				led_target[i*3+1] = VIOLET_R/DARKNESS;
				led_target[i*3+2] = VIOLET_B/DARKNESS;
				break;
			}
		}
	}
	for(i=0;i<LED_LENGTH*3;i++) {
		led_ram[i] = map(j,0,RESOLUTION/8,led_start[i],led_target[i]);		Serial.println_long(led_ram[i],DEC);
	}
	led.write(led_ram);
	j++;
	if(j>=RESOLUTION/8) {
		j=0;
		k++;
		if(k>=7) k = 0;
	}

	return retval;
}

void loop(void)
{
	static uint32_t last_event_time = 0;
	uint32_t now;
	static uint8_t current_func = 0;
	
	SUBGHZ_MAC_PARAM mac;
	SUBGHZ_MSG msg;
	short rx_len;

	now = millis();
	
    rx_len = SubGHz.readData(rx_data, sizeof(rx_data));
	if(rx_len > 0) {
		rx_data[rx_len] = 0;		// add null at end of message	
		SubGHz.decMac(&mac,rx_data,rx_len);
		Serial.println(mac.payload);
		led_mode.d32 = strtol(mac.payload,NULL,0);	// convert ascii to integer
		Serial.print_long(led_mode.d32,HEX);
		Serial.print(",");
		Serial.print_long(led_mode.color.mode,HEX);
		Serial.print(",");
		Serial.print_long(led_mode.color.r,HEX);
		Serial.print(",");
		Serial.print_long(led_mode.color.g,HEX);
		Serial.print(",");
		Serial.print_long(led_mode.color.b,HEX);
		Serial.println("");
		current_func = led_mode.color.mode;
	}
	if(((now-last_event_time) > delay_time) || (led_mode.color.mode != 0)){
		last_event_time = now;
		switch(current_func) {
			case LED_FUNC_CNG:
			current_func = ledFuncCNG();
			break;
			case LED_FUNC_LBL:
			current_func = ledFuncLBL();
			break;
			case LED_FUNC_SFT:
			current_func = ledFuncSFT();
			break;
			case LED_FUNC_SFT_R:
			current_func = ledFuncSFT_R();
			break;			
			case LED_FUNC_GUN:
			current_func = ledFuncGun();
			break;
			case LED_FUNC_GUN_R:
			current_func = ledFuncGunR();
			break;			
			case LED_FUNC_BLOOD:
			current_func = ledFuncBlood();
			break;
			case LED_FUNC_BLOOD_S:
			current_func = ledFuncBloodS();
			break;
			case LED_FUNC_STACK:
			break;
			case LED_FUNC_STACK_R:
			break;
			case LED_FUNC_FADE:
			current_func = ledFuncFade();
			break;
			case LED_FUNC_RB:
			current_func = ledFuncRB();
			break;
		}
	}
	led_mode.color.mode = 0;
}

