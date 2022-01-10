import random
import numpy as np
import matplotlib.pyplot as pt
import cv2

bit = list()
file_data = open(r"post_syn_modelsim\gradient.txt", "r")
for x in file_data:
    bit.append(x.strip())

np_bit = np.array(bit, np.uint8)
np_bit = np_bit.reshape(254, 254)
print(np_bit)
pt.imshow(np_bit, cmap='gray', vmin=0, vmax=255)
pt.show()



