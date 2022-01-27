//Creates a 40 kHz square wave on pin 10 of an Arduino Uno.

void setup() {
  pinMode(10, OUTPUT);
  cli();
  TCCR1A = B00100011;
  TCCR1B = B00011001;   //No prescaling
  OCR1A = 400 - 1;    //Wraparound value.
  OCR1B = 200;
  sei();
}

void loop() {
  
}
