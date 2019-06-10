#include "SparkFunBME280.h"
//Library allows either I2C or SPI, so include both.
#include "Wire.h"
#include "SPI.h"
// #include <math.h>

// const int sensor=A0;
    
    BME280 capteur;
     
    void setup() {
     
       Serial.begin(9600);
      while (!Serial) {
        // Attente de l'ouverture du port série pour Arduino LEONARDO
      }
      //configuration du capteur
      capteur.settings.commInterface = I2C_MODE; 
      capteur.settings.I2CAddress = 0x76;
      capteur.settings.runMode = 3; 
      capteur.settings.tStandby = 0;
      capteur.settings.filter = 0;
      capteur.settings.tempOverSample = 1 ;
      capteur.settings.pressOverSample = 1;
      capteur.settings.humidOverSample = 1;
     
      delay(10);  // attente de la mise en route du capteur. 2 ms minimum
      // chargement de la configuration du capteur
      capteur.begin();
    }
     
    void loop() {
      // int sensorValue=analogRead(sensor);
      Serial.print(capteur.readTempC(), 2);
      Serial.print(" ");
      Serial.print(capteur.readFloatPressure() / 100.0F, 2);
      Serial.print(" ");
      Serial.print(capteur.readFloatHumidity(), 2);
      // Serial.print(" ");
      // Serial.println(sensorValue);
      Serial.print("return");
      delay(1000);
    }
