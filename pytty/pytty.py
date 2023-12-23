import serial
import time

operando_a = int(input("Ingrese el primer operando (decimal): "))
operando_b = int(input("Ingrese el segundo operando (decimal): "))
simbolo_operacion = input("Ingrese el símbolo de la operación (+, -, &, |, ^, >>>, >>, ~): ")

codigo_operacion = {
        '+': '32\'b00000000000000000000000000100000',
        '-': '32\'b00000000000000000000000000100010',
        '&': '32\'b00000000000000000000000000100100',
        '|': '32\'b00000000000000000000000000100101',
        '^': '32\'b00000000000000000000000000100110',
        '>>>': '32\'b00000000000000000000000000000010',
        '>>': '32\'b00000000000000000000000000000011',
        '~': '32\'b00000000000000000000000000100111'
    }.get(simbolo_operacion, '32\'b00000000000000000000000000000000')

bits = codigo_operacion[5:]
bits_invertidos = bits[::-1]
codigo_operacion_invertido = "32'b" + bits_invertidos

ser = serial.Serial('/dev/ttyUSB1', 19200, timeout=None)
  # Asegura que los datos se envíen de inmediato
ser.write(b'1')
ser.write(operando_a.to_bytes(4, byteorder='little'))
ser.write(b'0')
ser.write(b'1')
ser.write(operando_b.to_bytes(4, byteorder='little'))
ser.write(b'0')
ser.write(b'1')
ser.write(codigo_operacion_invertido.encode('utf-8'))
ser.write(b'0')


value = ser.read(4)
        
    

print(value)

ser.close()