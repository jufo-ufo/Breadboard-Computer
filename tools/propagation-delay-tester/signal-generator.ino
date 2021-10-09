#define SIGNAL_PIN 12
#define STATUS_LED 13

void setup() {
    pinMode(STATUS_LED, OUTPUT);
    pinMode(SIGNAL_PIN, OUTPUT);

    Serial.begin(9600);
}

void loop() {
    if (Serial.available() > 0) {
        byte incomingByte = Serial.read();
        if(incomingByte > 0) {
            digitalWrite(SIGNAL_PIN, HIGH);
            digitalWrite(STATUS_LED, HIGH);
        } else {
            digitalWrite(SIGNAL_PIN, LOW);
            digitalWrite(STATUS_LED, LOW);
        }
    }    
}
