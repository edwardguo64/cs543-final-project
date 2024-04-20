import struct
import numpy as np

f = open("parameters.bin", mode="rb")
 
# Reading file data with read() method
data = f.read()
 
# Knowing the Type of our data
print(type(data))
 
# Printing our byte sequenced data 
print(data[:100])

data_fp = []

for i in range(0, len(data), 4):
    fp_num = struct.unpack('f', data[i:i + 4])
    data_fp.append(fp_num[0])

data_fp = np.array(data_fp)

print(len(data_fp))

print(data_fp[:25])
 
# Closing the opened file
f.close()