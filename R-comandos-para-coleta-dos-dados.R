##


#### começo

#setando pasta padrao e carregando arquivo
setwd("c:/r")
amostra <- read.csv("1.csv", sep = ",", dec = ".", header = T)
##media harmonica
1 / mean(1 / amostra$X5000)
#Coeficiente de Variaçao
sd(amostra$X5000)/mean(amostra$X5000) * 100
#Desvio Padrão 
sd(amostra$X5000)
#Variancia
var(amostra$X5000)
##media
mean(amostra$X5000)
##mediana
median(amostra$X5000)
##min
min(amostra$X5000)
##max
max(amostra$X5000)
## amplitude
max(amostra$X5000) - min(amostra$X5000)
##media harmonica
1 / mean(1 / amostra$X10000)
#Coeficiente de Variaçao
sd(amostra$X10000)/mean(amostra$X10000) * 100
#Desvio Padrão 
sd(amostra$X10000)
#Variancia
var(amostra$X10000)
##media
mean(amostra$X10000)
##mediana
median(amostra$X10000)
##min
min(amostra$X10000)
##max
max(amostra$X10000)
## amplitude
max(amostra$X10000) - min(amostra$X10000)
##media harmonica
1 / mean(1 / amostra$X20000)
#Coeficiente de Variaçao
sd(amostra$X20000)/mean(amostra$X20000) * 100
#Desvio Padrão 
sd(amostra$X20000)
#Variancia
var(amostra$X20000)
##media
mean(amostra$X20000)
##mediana
median(amostra$X20000)
##min
min(amostra$X20000)
##max
max(amostra$X20000)
## amplitude
max(amostra$X20000) - min(amostra$X20000)

####### fim

