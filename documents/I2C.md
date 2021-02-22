# I2C
I2C, I Square C,  Inter-Integrated Circuit, IIC, a serial communication protocol

## how to communicate with two wires, understanding I2C
1. high & low control on one wire, pure digital IO control, signal
1. a serial of signal on one wire, 
1. cooperate with two wire's signal; one for control (SCL) and one for data (SDA); SCL to indicate SDA valid; SCL on High, SDA valid; SCL on Low, no data; data is one wire's signal, high & low;
1. CPU side to control SCL, CHIP side to monitor SCL; CPU & CHIP control SDA as per protocol; CHIP may be a I2C chip, or a CPU to act as a CHIP;

## I2C protocol
1. control signal START & STOP controlled by CPU; to control CHIP; to indicate to CHIP; different from SDA validate; 
1. one bit to eight bits (a byte), eight bits as a signal (extend from bit to byte), 
1. extra signal ACKNOWLEDGE (ACK & NO ACK), an extra bit (from byte, the ninth bit) to indicate 
1. extend byte to address & data (more then bit, byte, define by CHIP)
detail I2C protocol is defined by I2C CHIP manual.

## example
```
// START
// P0 as SCL, P1 as SDA
P1 = 1;	// SDA = high, ready for START
P0 = 0; // SCL = Low , clear state, 
P0 = 1; // SCL = high, ready to P1 to low
P1 = 0;	// SDA = Low, to indicate START
P0 = 0; // SCL = Low, close-up
```  

```
// STOP, DIY please
```

```
// PCF-8574 read operation
// see PCF8574 manual
```