library(imager)
install.packages("data.table")
install.packages('png')
im<-load.image("myimage")
plot(im)
library(data.table)
library(jpeg)
library(imager)




t0 = Sys.time()
dat1 = read.csv('C:/Users/slime/OneDrive/桌面/data3_4.csv', header = TRUE, fileEncoding = 'CP950')
Sys.time() - t0
t0 = Sys.time()
dat2 = fread('C:/Users/slime/OneDrive/桌面/data3_4.csv',header = TRUE, data.table = FALSE, fileEncoding = 'CP950')
Sys.time() - t0
class(dat1)
class(dat2)
all.equal(dat1, dat2)
t0 = Sys.time()
fwrite(dat2, 'C:/Users/slime/OneDrive/桌面/data3_4.csv', row.names = FALSE, quote = TRUE)
Sys.time() - t0

library("jpeg")
jj <- readJPEG("C:/Users/slime/OneDrive/桌面/948e40b16ed74e2a8032f43efde994c3.jpg",native=TRUE)
plot(0:1,0:1,type="n",ann=FALSE,axes=FALSE)
rasterImage(jj,0,0,1,1)

library("png")
pp <- readPNG("C:/Users/slime/OneDrive/桌面/948e40b16ed74e2a8032f43efde994c3.jpg")
plot.new() 
rasterImage(pp,0,0,1,1)
library("png")
pp <- readPNG("C:/Users/slime/OneDrive/桌面/948e40b16ed74e2a8032f43efde994c3.jpg")
plot.new() 
rasterImage(pp,0,0,1,1)
install.packages("hunspell")
library(hunspell)

words = c("beer", "wiskey", "wine")
correct = hunspell_check(words)

hunspell_suggest(words)
dictionary("en_US")
original_sentence = "I could’nt tell there friends"

splited_sentence = strsplit(original_sentence, " ")[[1]]
correct = hunspell_check(splited_sentence)

if (sum(!correct) > 0) {
  wrong_pos = which(!correct)
  for (i in wrong_pos) {
    splited_sentence[i] = hunspell_suggest(splited_sentence[i])[[1]][1]
  }
}

paste(splited_sentence, collapse = " ")
