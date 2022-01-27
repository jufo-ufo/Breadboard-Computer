#include <EEPROM.h>

const int ROM_ADDRESS = 0x0;
const int DELAY = 10000;

void setup() {
  Serial.begin(9600);
  if(analogRead(0) < 10) {
    EEPROM.put(ROM_ADDRESS, 0);
  }
}

void loop() {
  unsigned int time_passed;
  EEPROM.get(ROM_ADDRESS, time_passed);
  if(analogRead(0) < 10) {
    EEPROM.put(ROM_ADDRESS, time_passed + (DELAY / 1000));
  }
  Serial.print("Last Time passed: ");
  Serial.println(time_passed);
  delay(DELAY);  
}
