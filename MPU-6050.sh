#!/bin/bash

# Variables
I2C_CHANNEL=2
DEVICE_ADDRESS=0x68
REGISTER_ID=0x75
EXPECTED_ID=0x71

# Vérification de la présence du capteur
i2cget -f -y $I2C_CHANNEL $DEVICE_ADDRESS $REGISTER_ID > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "Capteur non trouvé sur l'adresse I2C $DEVICE_ADDRESS."
    exit 1
fi

# Lecture de la valeur du registre d'identification
ID_VALUE=$(i2cget -f -y $I2C_CHANNEL $DEVICE_ADDRESS $REGISTER_ID)

# Vérification de la valeur du registre d'identification
if [ "$ID_VALUE" == "$EXPECTED_ID" ]; then
    echo "Capteur trouvé, registre d'identification correct : $ID_VALUE."
else
    echo "Capteur trouvé, mais registre d'identification incorrect : $ID_VALUE."
fi

