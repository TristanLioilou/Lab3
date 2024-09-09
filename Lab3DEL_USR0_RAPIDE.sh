#!/bin/bash

while true; do
    # Allume la LED
    echo 1 | sudo tee /sys/class/leds/beaglebone\:green\:usr0/brightness
    # Attendre 0.1 seconde (ou moins pour un clignotement encore plus rapide)
    sleep 0.1
    # Éteint la LED
    echo 0 | sudo tee /sys/class/leds/beaglebone\:green\:usr0/brightness
    # Attendre 0.1 seconde (ou moins)
    sleep 0.1
done

