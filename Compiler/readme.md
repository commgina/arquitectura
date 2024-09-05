Tokenización: Divide el código ensamblador en tokens, que son las diferentes partes de las instrucciones (como el nombre de la operación, registros, y valores inmediatos).

Conversión a binario: Convierte registros y números enteros a una cadena binaria de un número específico de bits.

Construcción de instrucciones: Para cada instrucción específica (como ADDU, LW, BEQ, etc.), asigna el opcode correspondiente y coloca los registros y valores inmediatos en la posición correcta dentro de la cadena binaria de 32 bits.

Generación de instrucciones: Combina todos estos pasos para crear la instrucción completa en formato binario.