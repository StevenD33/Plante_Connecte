#include <math.h>

const int sensor=A0;

void setup(){
  Serial.begin(9600);
}

void loop(){
  int sensorValue=analogRead(sensor);
  Serial.println("the analog read data is ");
  Serial.println(sensorValue);
  delay(1000);
}
