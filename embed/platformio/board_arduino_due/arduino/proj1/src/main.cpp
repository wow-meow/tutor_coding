#include <Arduino.h>

/**
 * Setup function for Arduino.
 * This function is called once when the device starts.
 * It is used to initialize pins, set up communication, etc.
 */
void setup() {
    // Example: blink the built-in LED
    pinMode(LED_BUILTIN, OUTPUT);

    // Example: print a message to the serial monitor
    Serial.begin(9600);
    Serial.println("Hello, Arduino!");

    // Example: blink the LED every second
    unsigned long previousMillis = 0;
    const long intervalMillis = 1000; // blink every 1 second

    while (true) {
        unsigned long currentMillis = millis();
        if (currentMillis - previousMillis >= intervalMillis) {
            previousMillis = currentMillis;
            digitalWrite(LED_BUILTIN,!digitalRead(LED_BUILTIN));
        }
    }

}

/**
 * Main loop function for Arduino.
 * This function is called repeatedly after setup() is completed.
 * It is used to implement the main logic of the program.
 */
void loop() {
// write your code here
}