#include "kirakira_ide.h" // Additional Header

#define LED_LENGTH  60
#define RESOLUTION	16
#define RED_R		255/8
#define RED_G		0
#define RED_B		0
#define ORANGE_R	255/8
#define ORANGE_G	64/8
#define ORANGE_B	0
#define YELLOW_R	255/8
#define YELLOW_G	255/8
#define YELLOW_B	0
#define GREEN_R		0
#define GREEN_G		128/8
#define GREEN_B		0
#define CYAN_R		0
#define CYAN_G		255/8
#define CYAN_B		255/8
#define BLUE_R		0
#define BLUE_G		0
#define BLUE_B		255/8
#define VIOLET_R	255/8
#define VIOLET_G	0
#define VIOLET_B	255/8

#define SUBGHZ_CH		36
#define SUBGHZ_PANID	0xABCD

unsigned char led_ram[LED_LENGTH * 3];
uint8_t rx_data[256];
const unsigned char led0[] = {
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x60, 0xff, 0x60  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0xff, 0xdf  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00  ,
  0x00, 0x00, 0x00
};
void ledFunc1(void) {
  int i,j,k;
  unsigned char r, g, b;
  for (i = 0; i < LED_LENGTH; i += 1)
  {
    switch (i % 7) {
      case 0:
        r = RED_R, g = RED_G, b = RED_B;
        break;
      case 1:
        r = ORANGE_R, g = ORANGE_G, b = ORANGE_B;
        break;
      case 2:
        r = YELLOW_R, g = YELLOW_G, b = YELLOW_B;
        break;
      case 3:
        r = GREEN_R, g = GREEN_G, b = GREEN_B;
        break;
      case 4:
        r = CYAN_R, g = CYAN_G, b = CYAN_B;
        break;
      case 5:
        r = BLUE_R, g = BLUE_G, b = BLUE_B;
        break;
      case 6:
        r = VIOLET_R, g = VIOLET_G, b = VIOLET_B;
        break;
    }

    led_ram[i * 3 + 0] = g;
    led_ram[i * 3 + 1] = r;
    led_ram[i * 3 + 2] = b;
    led.write(led_ram);
    delay(40);
  }
  for (k = 0; k < 28; k++) {
    for (j = 0; j < RESOLUTION ; j ++) {
      for (i = 0; i < LED_LENGTH; i += 1)
      {
        switch ((i + k) % 7) {
          case 0:
            //r = 255, g = 64, b = 0;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, RED_R, ORANGE_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, RED_G, ORANGE_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, RED_B, ORANGE_B);
            break;
          case 1:
            //r = 255, g = 64, b = 0;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, ORANGE_R, YELLOW_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, ORANGE_G, YELLOW_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, ORANGE_B, YELLOW_B);
            break;
          case 2:
            //r = 255, g = 255, b = 0;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, YELLOW_R, GREEN_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, YELLOW_G, GREEN_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, YELLOW_B, GREEN_B);
            break;
          case 3:
            //r = 0, g = 128, b = 0;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, GREEN_R, CYAN_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, GREEN_G, CYAN_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, GREEN_B, CYAN_B);
            break;
          case 4:
            //r = 0, g = 255, b = 255;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, CYAN_R, BLUE_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, CYAN_G, BLUE_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, CYAN_B, BLUE_B);
            break;
          case 5:
            //r = 0, g = 0, b = 255;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, BLUE_R, VIOLET_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, BLUE_G, VIOLET_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, BLUE_B, VIOLET_B);
            break;
          case 6:
            //r = 128, g = 0, b = 128;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, VIOLET_R, RED_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, VIOLET_G, RED_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, VIOLET_B, RED_B);
            break;
        }
      }
      led.write(led_ram);
      delay(10);
    }
  }
  for (i = 0; i < LED_LENGTH; i += 1)
  {
    led_ram[i * 3 + 0] = 0;
    led_ram[i * 3 + 1] = 0;
    led_ram[i * 3 + 2] = 0;
    led.write(led_ram);
    delay(40);
  }
}

void ledFunc2(void) {
  int i,j,k;
  unsigned char r, g, b;

  for (i = 0; i < LED_LENGTH; i += 1)
  {
    switch (i % 7) {
      case 0:
        r = RED_R, g = RED_G, b = RED_B;
        break;
      case 1:
        r = ORANGE_R, g = ORANGE_G, b = ORANGE_B;
        break;
      case 2:
        r = YELLOW_R, g = YELLOW_G, b = YELLOW_B;
        break;
      case 3:
        r = GREEN_R, g = GREEN_G, b = GREEN_B;
        break;
      case 4:
        r = CYAN_R, g = CYAN_G, b = CYAN_B;
        break;
      case 5:
        r = BLUE_R, g = BLUE_G, b = BLUE_B;
        break;
      case 6:
        r = VIOLET_R, g = VIOLET_G, b = VIOLET_B;
        break;
    }

    led_ram[i * 3 + 0] = g;
    led_ram[i * 3 + 1] = r;
    led_ram[i * 3 + 2] = b;
    led.write(led_ram);
    delay(40);
  }
  for (k = 0; k < 28; k++) {
    for (j = 0; j < RESOLUTION ; j ++) {
      for (i = 0; i < LED_LENGTH; i += 1)
      {
        switch ((i + k) % 7) {
          case 0:
            //r = 255, g = 64, b = 0;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, RED_R, ORANGE_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, RED_G, ORANGE_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, RED_B, ORANGE_B);
            break;
          case 1:
            //r = 255, g = 64, b = 0;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, ORANGE_R, YELLOW_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, ORANGE_G, YELLOW_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, ORANGE_B, YELLOW_B);
            break;
          case 2:
            //r = 255, g = 255, b = 0;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, YELLOW_R, GREEN_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, YELLOW_G, GREEN_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, YELLOW_B, GREEN_B);
            break;
          case 3:
            //r = 0, g = 128, b = 0;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, GREEN_R, CYAN_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, GREEN_G, CYAN_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, GREEN_B, CYAN_B);
            break;
          case 4:
            //r = 0, g = 255, b = 255;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, CYAN_R, BLUE_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, CYAN_G, BLUE_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, CYAN_B, BLUE_B);
            break;
          case 5:
            //r = 0, g = 0, b = 255;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, BLUE_R, VIOLET_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, BLUE_G, VIOLET_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, BLUE_B, VIOLET_B);
            break;
          case 6:
            //r = 128, g = 0, b = 128;
            led_ram[i * 3 + 1] = map(j, 0, RESOLUTION, VIOLET_R, RED_R);
            led_ram[i * 3 + 0] = map(j, 0, RESOLUTION, VIOLET_G, RED_G);
            led_ram[i * 3 + 2] = map(j, 0, RESOLUTION, VIOLET_B, RED_B);
            break;
        }
      }
      led.write(led_ram);
      delay(10);
    }
  }
  for (i = 0; i < LED_LENGTH; i += 1)
  {
    led_ram[i * 3 + 0] = 0;
    led_ram[i * 3 + 1] = 0;
    led_ram[i * 3 + 2] = 0;
    led.write(led_ram);
    delay(40);
  }
}
void ledFunc3(void) {
  int i;
  for (i = 0; i < LED_LENGTH * 3; i += 3)
  {
    led.write(&led0[i]);
    delay(80);
  }
  for (i = 0; i < LED_LENGTH; i += 1)
  {
    led_ram[i * 3 + 0] = 0;
    led_ram[i * 3 + 1] = 0;
    led_ram[i * 3 + 2] = 0;
    led.write(led_ram);
    delay(40);
  }
}
void setup(void)
{
  SUBGHZ_MSG msg;
  uint8_t myAddr[8];

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
}

void loop(void)
{
  int cmd;
  SUBGHZ_MAC_PARAM mac;
  SUBGHZ_MSG msg;
  short rx_len;
  short index = 0;
  uint16_t data16;

  msg = SubGHz.begin(SUBGHZ_CH, SUBGHZ_PANID,  SUBGHZ_100KBPS, SUBGHZ_PWR_20MW);
  SubGHz.rxEnable(NULL);
  do {
    rx_len = SubGHz.readData(rx_data, sizeof(rx_data));
  } while (rx_len == 0);
  SubGHz.rxDisable();
  SubGHz.close();
  SubGHz.decMac(&mac,rx_data,rx_len);
  rx_data[rx_len] = 0;		// add null at end of message
  Serial.println(mac.payload);
  
  cmd = atoi(mac.payload);	// convert ascii to integer
  switch(cmd) {
  	case 1:
  	ledFunc1();
  	break;
  	case 2:
  	ledFunc2();
  	break;
  	case 3:
  	ledFunc3();
  	break;
  }
}
