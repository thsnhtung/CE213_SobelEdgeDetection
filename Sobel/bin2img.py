import random
import numpy as np
import matplotlib.pyplot as pt
import cv2


bit = list()
file_data = open(r"Sobel\post_syn_modelsim\edge.txt", "r")
for x in file_data:
    bit.append(int(x.strip(), 2))   

np_bit = np.array(bit, np.uint8)
np_bit = np_bit.reshape(254, 254)
np_bit = np.array(np_bit, np.uint8) * 255


row = np.array([255], np.uint8)
column = np.array([255], np.uint8)
T = 10 # Threshold

df = []
file_data = open(r"Sobel\lena.txt", "r")
for x in file_data:
    df.append(int(x.strip(), 2))

flatten_image = np.array(df, np.uint8)
flatten_image = flatten_image.reshape(254, 254)
print(flatten_image[0, 0:10])

image = np.pad(flatten_image, [(1,1), (1, 1)], mode='constant', constant_values=(0))
print(image)
print(image.shape)



def convolution2d(image):
    m = 3
    y, x = image.shape

    y = y - m + 1
    x = x - m + 1
    new_image = np.zeros((254, 254))
    p = [0]*9

    for i in range(1, 255):
        for j in range(1, 255):
            p[0] = image[i-1][j-1]
            p[1] = image[i-1][j]
            p[2] = image[i-1][j+1]
            p[3] = image[i][j-1]
            p[4] = image[i][j]
            p[5] = image[i][j+1]
            p[6] = image[i+1][j-1]
            p[7] = image[i+1][j]
            p[8] = image[i+1][j+1]   
            f5 = (p[5]/4 + p[7]/4 + p[8]/4)
            f6 = (p[0]/4 + p[1]/4 + p[3]/4)
            f7 = (p[3]/4 + p[6]/4 + p[7]/4 )
            f8 = (p[1]/4 + p[2]/4 + p[5]/4 )
            G = max(abs(f5-f6), abs(f7-f8))
            new_image[i-1][j-1] = G 
    return np.array(new_image, np.uint8) 

image = convolution2d(image)

print(image[0, 0: 20])
cv2.imshow("modelsim", np_bit)
cv2.imshow("python_code", image)
cv2.waitKey(0)
print(np_bit == image)
