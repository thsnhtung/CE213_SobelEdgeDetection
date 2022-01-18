import numpy as np 
import cv2


row = np.array([255], np.uint8)
column = np.array([255], np.uint8)
T = 10 # Threshold

df = []
file_data = open(r"lena.txt", "r")
for x in file_data:
    df.append(int(x.strip(), 2))

flatten_image = np.array(df, np.uint8)
flatten_image = flatten_image.reshape(254, 254)


image = np.pad(flatten_image, [(1,1), (1, 1)], mode='constant', constant_values=(0))




def convolution2d(image):
    m = 3
    y, x = image.shape

    y = y - m + 1
    x = x - m + 1
    new_image = np.zeros((254, 254))


    for i in range(1, 255):
        for j in range(1, 255):
            p0 = np.uint8(image[i-1][j-1])
            p1 = np.uint8(image[i-1][j])
            p2 = np.uint8(image[i-1][j+1])
            p3 = np.uint8(image[i][j-1])
            p4 = np.uint8(image[i][j])
            p5 = np.uint8(image[i][j+1]) 
            p6 = np.uint8(image[i+1][j-1])
            p7 = np.uint8(image[i+1][j])
            p8 = np.uint8(image[i+1][j+1])   

          
            p5_4 = np.uint8(p5>>2)
            p7_4 = np.uint8(p7>>2)
            p8_4 = np.uint8(p8>>2)
            p0_4 = np.uint8(p0>>2)
            p1_4 = np.uint8(p1>>2)
            p3_4 = np.uint8(p3>>2)
            p2_4 = np.uint8(p2>>2)
            p6_4 = np.uint8(p6>>2)
            f5 = (p5_4 + p7_4 + p8_4)
            f6 = (p0_4 + p1_4 + p3_4)
            f7 = (p3_4 + p6_4 + p7_4 )
            f8 = (p1_4 + p2_4 + p5_4 )

            
    
            st_term = f5 - f6 if f5 > f6 else f6 - f5
            nd_term = f7 - f8 if f7 > f8 else f8 - f7
            G = max(st_term, nd_term)
            new_image[i-1][j-1] = np.uint8(G >= T) * 255


    return np.array(new_image, np.uint8) 

image = convolution2d(image)


bit = list()
file_data = open(r"post_syn_modelsim\edge.txt", "r")
for x in file_data:
    bit.append(int(x.strip(), 2))   

np_bit = np.array(bit, np.uint8)
np_bit = np_bit.reshape(254, 254)
np_bit = np.array(np_bit, np.uint8) * 255

if (np_bit == image).all():
    print("Correct")
else:
    print("Sai roi huhu")

cv2.imshow("python", image)
cv2.imshow("modelsim", np_bit)
cv2.waitKey(0)