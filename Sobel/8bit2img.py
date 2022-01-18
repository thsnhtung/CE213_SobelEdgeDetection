import random
import numpy as np
import matplotlib.pyplot as pt
import cv2

bit = list()
file_data = open(r"post_syn_modelsim\gradient.txt", "r")
for x in file_data:
    bit.append(int(x.strip(), 2))

np_bit = np.array(bit, np.uint8)
np_bit = np_bit.reshape(254, 254)
print(np_bit[0, 0:20])
cv2.imshow("Image", np_bit)
cv2.waitKey(0)



