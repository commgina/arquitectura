import struct

# Your integer
integer_value = 32

def convert(i):
    return int(bin(i+2**32)[-32:])


display = convert(100)

print(display)

