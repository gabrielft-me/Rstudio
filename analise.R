rm(list=ls())
setwd("C:/Users/admin/Desktop/PROJETO PESQUISA/coletas")
library(EBImage)
im = readImage("Sem1_Faucet1 21.03.jpg")

plot(im)
display(im@.Data[,,1])
im2 = im@.Data[,,1] < 0.3
display(im2)

im3 = bwlabel(im2)
m = computeFeatures.shape(im3)
id = m[,1] > 3

m2 = m[id,]