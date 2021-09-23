#define ADDRESS_LOW 6
#define ADDRESS_HIGH 7
#define DATA 8
#define CLOCK 4
#define CLEAR 3
#define WRITE_ENABLE_ROM 9
#define STATUS 13

#define DELAY 1

void writeData(short address, byte data) {
  digitalWrite(CLEAR, LOW);
  delay(DELAY);
  digitalWrite(CLEAR, HIGH);
  delay(DELAY);
  for(int i=0; i<8; i++) {
     digitalWrite(ADDRESS_LOW, (address >> (7-i)) & 1);
     digitalWrite(ADDRESS_HIGH, (address >> (7-i + 8)) & 1);
     digitalWrite(DATA, (data >> (7-i)) & 1);
     digitalWrite(CLOCK, HIGH);
     delay(DELAY);
     digitalWrite(CLOCK, LOW);
     delay(DELAY);
  }  

  digitalWrite(WRITE_ENABLE_ROM, HIGH);
  delay(DELAY);
  digitalWrite(WRITE_ENABLE_ROM, LOW);
  delay(DELAY);
}

void setup() {
  pinMode(ADDRESS_LOW, OUTPUT);
  pinMode(ADDRESS_HIGH, OUTPUT);
  pinMode(DATA, OUTPUT);
  pinMode(CLOCK, OUTPUT);
  pinMode(CLEAR, OUTPUT);
  pinMode(WRITE_ENABLE_ROM, OUTPUT);
  pinMode(STATUS, OUTPUT); 

  digitalWrite(CLEAR, HIGH); // CLR is inverted
  Serial.begin(9600);
  writeData(0xffff, 0xff);
}

void loop() {
  while(Serial.available() == 0) {}
  byte data[32];
  Serial.readBytes(data, 3);
  //digitalWrite(STATUS, HIGH);

  short address = data[1] + (data[0] << 8);
  short length = data[2];

  Serial.readBytes((char*)&data, length);
  //digitalWrite(STATUS, LOW);

  for(int i=0; i<length; i++) {
    writeData(address, data[i]);
    address++;
  }

  delay(DELAY);
  Serial.write('\xff');
}
