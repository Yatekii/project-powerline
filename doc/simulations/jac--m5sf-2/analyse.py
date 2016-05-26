#!/usr/bin/env python3

import pylab as plt
import numpy as np

# Read image from disk and filter all grayscale
im = plt.imread("jac--m6sf-3--iv-curve--2.png")[:,:,:3]
im -= im.mean(axis=2).reshape(im.shape[0], im.shape[1], 1).repeat(3,axis=2)
im_maxnorm = im.max(axis=2)

# Find y-position of remaining line
ypos = np.ones((im.shape[1])) * np.nan
for i in range(im_maxnorm.shape[1]):
    if im_maxnorm[:,i].max()<0.01:
        continue
    ypos[i] = np.argmax(im_maxnorm[:,i])

# Pick only values that are set
ys = 1-ypos[np.isfinite(ypos)]
# Normalize to 0,1
ys -= ys.min()
#ys /= ys.max()

# Create x values
xs = np.linspace(0,0.64,ys.shape[0])
#print(xs)
#print(ys)

# Create plot of both
# read and filtered image and
# data extracted
plt.figure(figsize=(4,8))
plt.subplot(211)
plt.imshow(im_maxnorm)
#plt.subplot(212, aspect="equal")
plt.subplot(212)
plt.plot(xs,ys)
plt.show()
