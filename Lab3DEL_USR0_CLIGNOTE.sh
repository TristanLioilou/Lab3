#!/bin/bash

while true; do
    # Allume la LED
    echo 1 | sudo tee /sys/class/leds/beaglebone\:green\:usr0/brightness
    # Attendre 300 ms
    sleep 0.3
    # Éteint la LED
    echo 0 | sudo tee /sys/class/leds/beaglebone\:green\:usr0/brightness
    # Attendre 700 ms
    sleep 0.7
done
