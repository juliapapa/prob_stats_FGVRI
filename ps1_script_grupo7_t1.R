########## PROBLEM SET 1 - PROBABILIDADE E ESTATÕSTICA
# FGV - RI 
# J˙lia Papa, Olivia Nery, Lara Prado
# Grupo 7, Turma 2, 3∫ Semestre
#
## 1. Apresente as medidas resumo e as dispersıes gr·ficas de 
## cada vari·vel coletada. Discuta os resultados encontrados 
## em relaÁ„o ‡ noÁ„o de simetria.

# Importamos os dados para o RStudio utilizando a aba Import Dataset.
# Com a base de dados importada, calculamos as medidas resumo de cada 
# vari·vel par analis·-las no relatÛrio.

# Calculamos as medidas resumo referentes ao PIB de Fiji de 1996 a 2019:
# Calculamos as medidas resumo de posiÁ„o:
# mÈdia aritmÈtica:
mean(probstatstable$gdp_fiji)

# mediana:
median(probstatstable$gdp_fiji)

# moda: Nesse conjunto de dados n„o h· moda pois nenhuma quantidade
# (PIB) se repete

# Calculamos as medidas resumo de dispers„o:
# desvio mÈdio: 
sum(abs(probstatstable$gdp_fiji-median(probstatstable$gdp_fiji)))/length(probstatstable$gdp_fiji)

# desvio padr„o:
sd(probstatstable$gdp_fiji)

# vari‚ncia:
var(probstatstable$gdp_fiji)

# Calculamos a medida resumo de quantil empÌrico a partir dos 
# quartis e da dist‚ncia interquartil:
# quartis:
quantile(probstatstable$gdp_fiji, probs = seq(from = 0, to = 1, by = 0.25))

# dist‚ncia interquartil:
IQR(probstatstable$gdp_fiji)

# Representamos a dispers„o da vari·vel PIB de Fiji com um histograma:
hist(probstatstable$gdp_fiji, freq = TRUE,
     xlab = "PIB de Fiji",
     main = "Histograma do PIB de Fiji")

# Representamos as medidas resumo da mediana, quartis e dispers„o a partir 
# do gr·fico boxplot:
boxplot(probstatstable$Year, probstatstable$gdp_fiji,
        main = "Gr√°fico boxplot do PIB de Fiji", 
        xlab="Ano", ylab="PIB de Fiji")


# Calculamos as medidas resumo referentes ao PIB da ¡ustria de 1996 a 2019:
# Calculamos as medidas resumo de posiÁ„o:
# mÈdia aritmÈtica:
mean(probstatstable$gdp_aut)

# mediana:
median(probstatstable$gdp_aut)

# moda: Nesse conjunto de dados n„o h· moda pois nenhuma
# quantidade (PIB) se repete

# Calculamos as medidas resumo de dispers„o:
# desvio mÈdio: 
sum(abs(probstatstable$gdp_aut-median(probstatstable$gdp_aut)))/length(probstatstable$gdp_aut)

# desvio padr„o:
sd(probstatstable$gdp_aut)

# vari‚ncia:
var(probstatstable$gdp_aut)

# Calculamos a medida resumo de quantil empÌrico a partir dos 
# quartis e da dist√¢ncia interquartil:
# quartis:
quantile(probstatstable$gdp_aut, probs = seq(from = 0, to = 1, by = 0.25))

# dist‚ncia interquartil:
IQR(probstatstable$gdp_aut)

# Representamos a dispers„o da vari·vel PIB da ¡ustria com um histograma:
hist(probstatstable$gdp_aut, freq = TRUE,
     xlab = "PIB da ¡ustria",
     main = "Histograma do PIB da ¡ustria")

# Representamos as medidas resumo da mediana, quartis e dispers„o 
# a partir do gr·fico boxplot:
boxplot(probstatstable$Year, probstatstable$gdp_aut, 
        main = "Gr·fico boxplot do PIB da ¡ustria", xlab="Ano", 
        ylab="PIB da ¡ustria")


# Calculamos as medidas resumo referentes ‡ inflaÁ„o de Fiji de 1996 a 2019:
# Calculamos as medidas resumo de posiÁ„o:
# mÈdia aritmÈtica:
mean(probstatstable$infla_fiji)

# mediana:
median(probstatstable$infla_fiji)

# moda: Nesse conjunto de dados n„o h· moda pois nenhuma
# quantidade (inflaÁ„o) se repete

# Calculamos as medidas resumo de dispers„o:
# desvio mÈdio: 
sum(abs(probstatstable$infla_fiji-median(probstatstable$infla_fiji)))/length(probstatstable$infla_fiji)

# desvio padr„o:
sd(probstatstable$infla_fiji)

# vari‚ncia:
var(probstatstable$infla_fiji)

# Calculamos a medida resumo de quantil empÌrico a partir dos
# quartis e da dist‚ncia interquartil:
# quartis:
quantile(probstatstable$infla_fiji, probs = seq(from = 0, to = 1, by = 0.25))

# dist‚ncia interquartil:
IQR(probstatstable$infla_fiji)

# Representamos a dispers„o da vari·vel inflaÁ„o de Fiji com um histograma:
hist(probstatstable$infla_fiji, freq = TRUE,
     xlab = "Infla√ß√£o de Fiji",
     main = "Histograma da infla√ß√£o de Fiji")

# Representamos as medidas resumo da mediana, quartis e dispers„o a 
# partir do gr·fico boxplot:
boxplot(probstatstable$Year, probstatstable$infla_fiji, 
        main = "Gr·fico boxplot da inflaÁ„o de Fiji", xlab="Ano", 
        ylab="InflaÁ„o de Fiji")


# Calculamos as medidas resumo referentes √† infla√ß√£o da √Åustria de 1996 a 2019:
# Calculamos as medidas resumo de posi√ß√£o:
# mÈdia aritm√©tica:
mean(probstatstable$infla_aut)

# mediana:
median(probstatstable$infla_aut)

# moda: Nesse conjunto de dados n„o h· moda pois nenhuma quantidade 
# (inflaÁ„o) se repete

# Calculamos as medidas resumo de dispers√£o:
# desvio m√©dio: 
sum(abs(probstatstable$infla_aut-median(probstatstable$infla_aut)))/length(probstatstable$infla_aut)

# desvio padr√£o:
sd(probstatstable$infla_aut)

# vari‚ncia:
var(probstatstable$infla_aut)

# Calculamos a medida resumo de quantil empÌrico a partir dos quartis e da dist√¢ncia interquartil:
# quartis:
quantile(probstatstable$infla_aut, probs = seq(from = 0, to = 1, by = 0.25))

# dist√¢ncia interquartil:
IQR(probstatstable$infla_aut)

# Representamos a dispers√£o da vari√°vel inflaÁ„o da ¡ustria com um histograma:
hist(probstatstable$infla_aut, freq = TRUE,
     xlab = "Infla√ß√£o da ¡ustria",
     main = "Histograma da infla√ß√£o da ¡ustria")

# Representamos as medidas resumo da mediana, quartis e dispers√£o a partir do gr√°fico boxplot:
boxplot(probstatstable$Year, probstatstable$infla_aut, main = "Gr√°fico boxplot da infla√ß√£o da √Åustria", xlab="Ano", ylab="infla√ß√£o da √Åustria")


# Calculamos as medidas resumo referentes ‡ populaÁ„o de Fiji de 1996 a 2019:
# Calculamos as medidas resumo de posi√ß√£o:
# mÈdia aritmÈtica:
mean(probstatstable$pop_fiji)

# mediana:
median(probstatstable$pop_fiji)

# moda: Nesse conjunto de dados n√£o h√° moda pois nenhuma quantidade (popula√ß√£o) se repete

# Calculamos as medidas resumo de dispers√£o:
# desvio m√©dio: 
sum(abs(probstatstable$pop_fiji-median(probstatstable$pop_fiji)))/length(probstatstable$pop_fiji)

# desvio padr√£o:
sd(probstatstable$pop_fiji)

# vari√¢ncia:
var(probstatstable$pop_fiji)

# Calculamos a medida resumo de quantil empÌrico a partir dos quartis e da dist√¢ncia interquartil:
# quartis:
quantile(probstatstable$pop_fiji, probs = seq(from = 0, to = 1, by = 0.25))

# dist√¢ncia interquartil:
IQR(probstatstable$pop_fiji)

# Representamos a dispers√£o da vari√°vel popula√ß√£o de Fiji com um histograma:
hist(probstatstable$pop_fiji, freq = TRUE,
     xlab = "Popula√ß√£o de Fiji",
     main = "Histograma da popula√ß√£o de Fiji")

# Representamos as medidas resumo da mediana, quartis e dispers√£o a partir do gr√°fico boxplot:
boxplot(probstatstable$Year, probstatstable$pop_fiji, main = "Gr√°fico boxplot da popula√ß√£o de Fiji", xlab="Ano", ylab="Popula√ß√£o de Fiji")


# Calculamos as medidas resumo referentes ‡ populaÁ„o da ¡ustria de 1996 a 2019:
# Calculamos as medidas resumo de posi√ß√£o:
# mÈdia aritmÈtica:
mean(probstatstable$pop_aut)

# mediana:
median(probstatstable$pop_aut)

# moda: Nesse conjunto de dados n√£o h√° moda pois nenhuma quantidade (popula√ß√£o) se repete

# Calculamos as medidas resumo de dispers√£o:
# desvio m√©dio: 
sum(abs(probstatstable$pop_aut-median(probstatstable$pop_aut)))/length(probstatstable$pop_aut)

# desvio padr√£o:
sd(probstatstable$pop_aut)

# vari√¢ncia:
var(probstatstable$pop_aut)

# Calculamos a medida resumo de quantil empÌrico a partir dos 
# quartis e da dist√¢ncia interquartil:
# quartis:
quantile(probstatstable$pop_aut, probs = seq(from = 0, to = 1, by = 0.25))

# dist‚ncia interquartil:
IQR(probstatstable$pop_aut)

# Representamos a dispers√£o da vari·vel populaÁ„o da ¡ustria 
# com um histograma:
hist(probstatstable$pop_aut, freq = TRUE,
     xlab = "PopulaÁ„o da ¡ustria",
     main = "Histograma da populaÁ„o da ¡ustria")

# Representamos as medidas resumo da mediana, quartis e 
# dispers„o a partir do gr·fico boxplot:
boxplot(probstatstable$Year, probstatstable$pop_aut,
        main = "Gr·fico boxplot da populaÁ„o da ¡ustria",
        xlab="Ano", ylab="PopulaÁ„o da ¡ustria")


# Calculamos as medidas resumo referentes ao c‚mbio de Fiji de 1996 a 2019:
# Calculamos as medidas resumo de posiÁ„o:
# mÈdia aritmÈtica:
mean(probstatstable$exchange_fiji)

# mediana:
median(probstatstable$exchange_fiji)

# moda: Nesse conjunto de dados n„o h· moda, pois nenhuma quantidade 
# (c‚mbio) se repete

# Calculamos as medidas resumo de dispers√„o:
# desvio mÈdio: 
sum(abs(probstatstable$exchange_fiji-median(probstatstable$exchange_fiji)))/length(probstatstable$exchange_fiji)

# desvio padr„o:
sd(probstatstable$exchange_fiji)

# vari‚ncia:
var(probstatstable$exchange_fiji)

# Calculamos a medida resumo de quantil empÌrico a partir dos quartis
# e da dist‚ncia interquartil:
# quartis:
quantile(probstatstable$exchange_fiji, probs = seq(from = 0, to = 1, by = 0.25))

# dist‚ncia interquartil:
IQR(probstatstable$exchange_fiji)

# Representamos a dispers„o da vari·vel c‚mbio de Fiji com um histograma:
hist(probstatstable$exchange_fiji, freq = TRUE,
     xlab = "C‚mbio de Fiji",
     main = "Histograma do c‚mbio de Fiji")

# Representamos as medidas resumo da mediana, quartis e dispers„o 
# a partir do gr√°fico boxplot:
boxplot(probstatstable$Year, probstatstable$exchange_fiji, 
        main = "Gr·fico boxplot do c‚mbio de Fiji", xlab="Ano", 
        ylab = "C‚mbio de Fiji")


#Calculamos as medidas resumo referentes ao c√¢mbio da ¡ustria de 1996 a 2019:
#Calculamos as medidas resumo de posi√ß√£o:
#m√©dia aritm√©tica:
mean(probstatstable$exchange_aut)

# mediana:
median(probstatstable$exchange_aut)

# moda: Nesse conjunto de dados n„o h· moda, pois nenhuma quantidade 
# (c‚mbio) se repete

# Calculamos as medidas resumo de dispers„o:
# desvio mÈdio: 
sum(abs(probstatstable$exchange_aut-median(probstatstable$exchange_aut)))/length(probstatstable$exchange_aut)

# desvio padr„o:
sd(probstatstable$exchange_aut)

# vari‚ncia:
var(probstatstable$exchange_aut)

# Calculamos a medida resumo de quantil empÌrico a partir
# dos quartis e da dist√¢ncia interquartil quartis:
quantile(probstatstable$exchange_aut, probs = seq(from = 0, to = 1, by = 0.25))

# dist‚ncia interquartil:
IQR(probstatstable$exchange_aut)

# Representamos a dispers√£o da vari·vel c‚mbio da ¡ustria com um histograma:
hist(probstatstable$exchange_aut, freq = TRUE,
     xlab = "C‚mbio da √ustria",
     main = "Histograma do c‚mbio da ¡ustria")

# Representamos as medidas resumo da mediana, quartis e 
# dispers„o a partir do gr·fico boxplot:
boxplot(probstatstable$Year, probstatstable$exchange_aut,
        main = "Gr·fico boxplot do c‚mbio da ¡ustria", 
        xlab="Ano", ylab="C‚mbio da ¡ustria")

## 2. Utilizando ·lgebra no RStudio, gere os dados de PIB per capita 
## (GDP per capita). FaÁa esta an·lise para ambos os paÌses no perÌodo
## analisado. Em seguida, apresente o resultado no relatÛrio e discuta-os 
## com base na teoria macroeconÙmica e na definiÁ„o de PIB per capita. Nesta 
## quest„o o grupo pode escolher como prefere apresentar os dados (seja 
## gr·fico, tabela, etc.).

#Inicialmente, iremos limpar o enviroment
rm(list=ls());

probstatstable <- read_excel("probstatstable.excel")

View(probstatstable)

# Agora, com a base de dados importada, iremos separar as duas vari·veis 
# (GDP e Population) para que possamos calcular o GDP per capita, isto È,
# GDP sobre a populaÁ„o 
aut_gdp_table <- data.frame(probstatstable$gdp_aut)

View(aut_gdp_table)

aut_pop_table <- data.frame(probstatstable$pop_aut)

View(aut_pop_table)

# Com as duas tabelas de vari·veis no intervalo de tempo requerido (1996 -2019),
# iremos calcular o GDP per capita ao dividir as duas vari·veis, de acordo com suas tabelas, 
# para isso precisamos usar a funÁ„o "cbind" para que o calculo possa ser possÌvel 
# entre as duas tabelas e na formaÁ„o de uma nova com os resultados obtidos

aut_pc <- cbind(aut_gdp_table/aut_pop_table) 

View(aut_pc)

# TambÈm, achamos necess·rio criar uma tabela sÛ com o intervalo de tempo, 
# j· que representar· o Xlab

year_pc <- data.frame(probstatstable$Year)

View(year_pc)

# Para uma futura formaÁ„o de gr·fico precisamos juntar as duas tabelas com as
# informaÁıes que ser„o colocadas em cada eixo 

table_pc_aut <- cbind(year_pc, aut_pc)

View(table_pc_aut)

#Para deixar o gr·fico mais organizado, colocaremos nomes mais pr·ticos
# nos eixos

colnames(table_pc_aut) = c("Year", "GDP per capita")

# Com todas as informaÁıes necess·rias poderemos criar o gr·fico para representar 
# a variaÁ„o do GDP per capita entre 1996 e 2019, para isso usaremos a funÁ„o 
# plot, na qual especificaremos o sÌmbolo (pch), a cor, o tÌtulo principal e dos 
# eixos

plot(table_pc_aut, pch= 16, col = "pink", 
     xlab= "Year", ylab= "GDP per capita", main= "GDP per capita Austria")



# Agora, iremos repetir o mesmo processo com o paÌs Fiji 

fiji_gdp_table <- data.frame(probstatstable$gdp_fiji)

View(fiji_gdp_table)

fiji_pop_table <- data.frame(probstatstable$pop_fiji)

View(fiji_pop_table)


fiji_pc <- cbind(fiji_gdp_table/fiji_pop_table) 

View(fiji_pc)

year_pc <- data.frame(probstatstable$Year)

View(year_pc)


table_pc_fiji <- cbind(year_pc, fiji_pc)

View(table_pc_fiji)


plot(table_pc_fiji, pch= 16, col = "pink", xlab= "Year", ylab= "GDP per capita", 
     main= "GDP per capita Fiji")

## Apresente o valor da correlaÁ„o entre todas as vari·veis originais da base
## de dados coletada. ApÛs verificar os resultados das correlaÁıes, apresente
## um caso que pode ser visto como uma correlaÁ„o esp˙ria, e um caso no qual 
## pode haver um entendimento teÛrico para a correlaÁ„o.
## Dica: utilize a teoria macroeconÙmica para mostrar a sua argumentaÁ„o,
## È possÌvel tambÈm utilizar notÌcias/textos acadÍmicos para
## evidenciar o resultado apresentado

##As vari·veis a serem selecionadas para a atividade proposta s„o:
# . GDP current (US$);
# . Inflation, GDP deflator (annual %);
# . Population, total;
# . Real effective exchange rate index (2010 = 100).
# O horizonte temporal de an·lise ser· do ano de 1996 atÈ 2019.

# O C·lculo ser· feito por paÌs, pois n„o existe correlaÁ„o
# entre os paÌses utilizados - Fiji e ¡ustria

library(reshape2)
library(see)
library(dplyr)
library(corrplot)
library(magrittr)
library(correlation)
library(RColorBrewer)
library(tidyverse)
## PRIMEIRO --> ANALISE DAS CORRELA«’ES DAS VARI¡VEIS DA ¡USTRIA

correlation::correlation(autdata,
                         include_factors = TRUE, method = "auto"
)

resultaut <- correlation(autdata)
resultaut
summary(resultaut)
## Existe uma alta correlaÁ„o entre o valor do GDP da ¡ustria
## com o n˙mero da populaÁ„o austrÌaca
## PLOT DOS RESULTADOS

mydata <- autdata[, c(1,2,3,4)]
head(mydata)

cormat <- round(cor(mydata), 2)
head(cormat)

melted_cormat <- melt(cormat)
head(melted_cormat)

ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile()

# Get lower triangle of the correlation matrix
get_lower_tri<-function(cormat){
  cormat[upper.tri(cormat)] <- NA
  return(cormat)
}
# Get upper triangle of the correlation matrix
get_upper_tri <- function(cormat){
  cormat[lower.tri(cormat)]<- NA
  return(cormat)
}

upper_tri <- get_upper_tri(cormat)
upper_tri

# Melt the correlation matrix
library(reshape2)
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Heatmap
ggplot(data = melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()

reorder_cormat <- function(cormat){
  # Use correlation between variables as distance
  dd <- as.dist((1-cormat)/2)
  hc <- hclust(dd)
  cormat <-cormat[hc$order, hc$order]
}

# Reorder the correlation matrix
cormat <- reorder_cormat(cormat)
upper_tri <- get_upper_tri(cormat)
# Melt the correlation matrix
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Create a ggheatmap
ggheatmap <- ggplot(melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ # minimal theme
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()
# Print the heatmap
print(ggheatmap)

ggheatmap + 
  geom_text(aes(Var2, Var1, label = value), color = "black", size = 4) +
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.grid.major = element_blank(),
    panel.border = element_blank(),
    panel.background = element_blank(),
    axis.ticks = element_blank(),
    legend.justification = c(1, 0),
    legend.position = c(1.4, 0),
    legend.direction = "vertical")+
  guides(fill = guide_colorbar(barwidth = 1, barheight = 7,
                               title.position = "top", title.hjust = 0.5))


########## MAPA DE CORRELA«√O DE FIJI

mydata <- fijidata[, c(1,2,3,4)]
head(mydata)

cormat <- round(cor(mydata), 2)
head(cormat)

melted_cormat <- melt(cormat)
head(melted_cormat)

ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile()

# Get lower triangle of the correlation matrix
get_lower_tri<-function(cormat){
  cormat[upper.tri(cormat)] <- NA
  return(cormat)
}
# Get upper triangle of the correlation matrix
get_upper_tri <- function(cormat){
  cormat[lower.tri(cormat)]<- NA
  return(cormat)
}

upper_tri <- get_upper_tri(cormat)
upper_tri

# Melt the correlation matrix
library(reshape2)
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Heatmap
ggplot(data = melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()

reorder_cormat <- function(cormat){
  # Use correlation between variables as distance
  dd <- as.dist((1-cormat)/2)
  hc <- hclust(dd)
  cormat <-cormat[hc$order, hc$order]
}

# Reorder the correlation matrix
cormat <- reorder_cormat(cormat)
upper_tri <- get_upper_tri(cormat)
# Melt the correlation matrix
melted_cormat <- melt(upper_tri, na.rm = TRUE)
# Create a ggheatmap
ggheatmap <- ggplot(melted_cormat, aes(Var2, Var1, fill = value))+
  geom_tile(color = "white")+
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Pearson\nCorrelation") +
  theme_minimal()+ # minimal theme
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1))+
  coord_fixed()
# Print the heatmap
print(ggheatmap)

ggheatmap + 
  geom_text(aes(Var2, Var1, label = value), color = "black", size = 4) +
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.grid.major = element_blank(),
    panel.border = element_blank(),
    panel.background = element_blank(),
    axis.ticks = element_blank(),
    legend.justification = c(1, 0),
    legend.position = c(1.4, 0),
    legend.direction = "vertical")+
  guides(fill = guide_colorbar(barwidth = 1, barheight = 7,
                               title.position = "top", title.hjust = 0.5))

## CORRELA«¬O ENTRE OS PAISES

correlation::correlation(probstatstable,
                         include_factors = TRUE, method = "auto"
)

resultps <- correlation(probstatstable)
resultps
summary(resultps)