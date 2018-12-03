#include "kirakira_ide.h"       // Additional Header

#define LED_LENGTH  60

unsigned char led_ram[LED_LENGTH * 3];

void setup(void)
{
  memset(led_ram, 0, sizeof(led_ram));
  led.init(8, LED_LENGTH);
}

void loop(void)
{
  int i;
  int j;
  for (i = 0; i < LED_LENGTH * 3; i += 3)
  {
    led_ram[i + 0] = map(64, 0, 0xff, 0, 0x60);
    led_ram[i + 1] = map(64, 0, 0xff, 0, 0xff);
    led_ram[i + 2] = map(64, 0, 0xff, 0, 0x60);
    led.write(led_ram);
    delay(40);
  }
  for (i = (LED_LENGTH - 1) * 3; i >= 0; i -= 3)
  {
    led_ram[i + 0] = 0;
    led_ram[i + 1] = 0;
    led_ram[i + 2] = 0;
    led.write(led_ram);
    delay(40);
  }
  for (i = 0; i < LED_LENGTH * 3; i += 3)
  {
    led_ram[i + 0] = map(64, 0, 0xff, 0, 0x00);
    led_ram[i + 1] = map(64, 0, 0xff, 0, 0xff);
    led_ram[i + 2] = map(64, 0, 0xff, 0, 0xdf);
    led.write(led_ram);
    delay(40);
  }
  for (i = 0; i < LED_LENGTH * 3; i += 3)
  {
    led_ram[i + 0] = 0;
    led_ram[i + 1] = 0;
    led_ram[i + 2] = 0;
    led.write(led_ram);
    delay(40);
  }}
