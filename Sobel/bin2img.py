import random
import numpy as np
import matplotlib.pyplot as pt
import cv2


bit = list()
file_data = open(r"post_syn_modelsim\edge.txt", "r")
for x in file_data:
    bit.append(x.strip())   

np_bit = np.array(bit, np.uint8)
np_bit = np_bit.reshape(254, 254)
np_bit = np_bit > 0
print(np_bit)
pt.imshow(np_bit, cmap=pt.cm.gray)
pt.show()


