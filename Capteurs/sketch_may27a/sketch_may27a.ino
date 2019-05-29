#include <SPI.h>
#include <WiFi101.h>

void setup() {
  Serial.begin(9600);
  while (!Serial) {
    ; // Attendre que le port série se connecte. Nécessaire pour le port USB natif uniquement
  }
  
  // On verifie la présence du Shield Wifi
  if (WiFi.status() == WL_NO_SHIELD) {
    Serial.println("WiFi shield absent");
    // On ne continue pas
    while (true);
  }
}

void loop() {
// Code des capteurs
}
