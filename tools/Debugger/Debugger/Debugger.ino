const int BUFFER_ENABLE = 10;
const int CLOCK_OUT = 13;
const int DATA_OUT = 11;
const int RESET_OUT = 12;
const int TRIGGER_OUT = 3;

const int CLOCK_IN = 7;
const int CTRL_IN = 8;
const int TRIGGER_IN = 2;
const int DATA1_IN = 5;
const int DATA2_IN = 6;

const int STATUS_LED = 13;

void waitForData(size_t size) {
	while (Serial.available() < size) {}
}

void setup() {

	pinMode(BUFFER_ENABLE, OUTPUT);
	pinMode(CLOCK_OUT, OUTPUT);
	pinMode(DATA_OUT, OUTPUT);
	pinMode(RESET_OUT, OUTPUT);
	pinMode(TRIGGER_OUT, OUTPUT);

	digitalWrite(TRIGGER_OUT, LOW);
	digitalWrite(BUFFER_ENABLE, HIGH);
	digitalWrite(RESET_OUT, HIGH);

	pinMode(CLOCK_IN, OUTPUT);
	pinMode(CTRL_IN, OUTPUT);	
	pinMode(TRIGGER_IN, INPUT);
	pinMode(DATA1_IN, INPUT);
	pinMode(DATA2_IN, INPUT);

	digitalWrite(CTRL_IN, HIGH);

	pinMode(STATUS_LED, OUTPUT);
	Serial.begin(9600);
}

void shiftOutData(byte data) {
	for(int i=0; i<8; i++) {
		digitalWrite(DATA_OUT, (1 << i) & data);
		digitalWrite(CLOCK_OUT, HIGH);
		digitalWrite(CLOCK_OUT, LOW);
	}
}

void pullSample() {
	digitalWrite(CTRL_IN, HIGH);
	digitalWrite(CLOCK_IN, HIGH);
	digitalWrite(CLOCK_IN, LOW);
	digitalWrite(CTRL_IN, LOW);
	byte b1 = 0;
	byte b2 = 0;

	for(int i=0; i<8; i++) {
		b1 = b1 << 1;
		b2 = b2 << 1;
		b1 += digitalRead(DATA1_IN);
		b2 += digitalRead(DATA2_IN);
		digitalWrite(CLOCK_IN, HIGH);
		digitalWrite(CLOCK_IN, LOW);
	}
	Serial.write(b1);
	Serial.write(b2);

	digitalWrite(CTRL_IN, HIGH);
}

void loop() {
	while (Serial.available() < 4) {
		digitalWrite(STATUS_LED, HIGH);
		delay(200);	
		digitalWrite(STATUS_LED, LOW);
		delay(200);
	}
	
	char buf[4];
	Serial.readBytes(buf, 4);
	Serial.print(buf);
	
	if(strncmp(buf, "Sync", 4))
		return;

	Serial.print("ack");

	waitForData(1);
	char mode = Serial.read();

	if(mode == 'w') {
		byte* buffer;
		int size = 0;
		int delay_w = 0;

		waitForData(8);
		for(int i=0; i<4; i++) {
			size = size << 8; 
			size += Serial.read();
		}

		for(int i=0; i<4; i++) {
			delay_w = delay_w << 8; 
			delay_w += Serial.read();
		}

		buffer = (byte*)malloc(size*sizeof(byte));
		Serial.print("ok");
		Serial.readBytes(buffer, size);
		Serial.print("ok");
		waitForData(1);
		
		Serial.read();

		for(int i=0; i<size; i+=2) {
			shiftOutData(buffer[i+1]);
			shiftOutData(buffer[i]);
			digitalWrite(BUFFER_ENABLE, LOW);
			digitalWrite(TRIGGER_OUT, HIGH);
			delay(delay_w);
			digitalWrite(TRIGGER_OUT, LOW);
			digitalWrite(BUFFER_ENABLE, HIGH);

			digitalWrite(RESET_OUT, LOW);
			digitalWrite(RESET_OUT, HIGH);
		}

		Serial.print("done");
	} else {
		attachInterrupt(digitalPinToInterrupt(TRIGGER_IN), pullSample, RISING);
		while (Serial.available() < 1) {}
		detachInterrupt(digitalPinToInterrupt(TRIGGER_IN));
	}
}
