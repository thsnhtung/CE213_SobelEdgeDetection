import cv2
openfile = open(r'Sobel\lena.txt', '+w')
img = cv2.imread(r"Sobel\lena.png", cv2.IMREAD_GRAYSCALE)
out = cv2.resize(img, (254, 254))

print(out)
cv2.imshow("out", out)
cv2.waitKey(0)

for i in range(0, out.shape[0]):
    for j in range(0, out.shape[1]):
        openfile.write('{0:08b}'.format(out[i, j]) + "\n")

openfile.close()
