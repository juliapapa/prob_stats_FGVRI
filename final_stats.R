# Final Project Grupo 7 
# FGV - Escola de Rela��es Internacionais
# Probabilidade e Estat�stica
# Prof. Ariana Costa
# Alunas: J�lia Papa (C353125), Lara Prado (C357855), Ol�via Tajra Nery (C359099)

## EXERC�CIO 1

#Inserimos os dados coletados
library(readxl)
ocde2 <- read_excel("ocde2")
View(ocde2)


#Modificaremos os nomes das variaveis para que fiquem evidentes no gr�fico
names(ocde2)[names(ocde2) == "FDI"] <- "fdi_inflow"
names(ocde2)[names(ocde2) == "COR"] <- "corruption"
View(ocde2)

#Agora, criaremos o gr�fico de dispers�o para analisar o comportamento dos dados, 
#assim, entender a correla��o entre as vari�veis selecionadas 
plot(ocde2$fdi_inflow, ocde2$corruption, 
     xlab = 'FDI Inflow', ylab = 'COntrole de Corrup��o',
     main = 'Grafico de Dispers�o')

#Agora, calculares a fun��o de regress�o linear simples, j� que estamos trabahando com duas vari�veis (X e Y) 
#e queremos tratar todos os fatores que afetam Y, al�m de X, como n�o observados 
rls_ocde2<- lm(ocde2$fdi_inflow ~ ocde2$corruption, na.action = NULL)

# Buscamos achar a reta de regress�o nos dados, para entender o comportamento geral da rela��o entre X e Y
abline(rls_ocde2)

#Rodamos o sum�rio para entender todos os aspectos que definem o resultado da regress�o encontrado 
summary (rls_ocde2)

#Ademais, calculamos a tabela ANOVA para entender os componentes que definem a signific�ncia da regress�o rodada
anova_RLS_ocde2 <- aov(ocde2$fdi_inflow ~ ocde2$corruption)
summary (anova_RLS_ocde2)

## TABELA DE REGRESS�O EM LATEX

install.packages('stargazer')
library(stargazer)

stargazer(rls_ocde2, title = 'Modelo 1', align = TRUE)

## TABELA DA ANOVA EM LATEX

install.packages('xtable')
library(xtable)

xtable(anova(rls_ocde2))
### Finalizado

## EXERC�CIO 2

install.packages('wooldridge')

library(wooldridge)

data('meap93')

#An�lise descritivas de dados
sum_sch <- summary(meap93)

summary(meap93$sci11)
summary(meap93$lnchprg)
summary(meap93$expend)
summary(meap93$gradrate)

#Gr�fico de dispers�o
boxplot(meap93$sci11)

#utilizar o log 
meap93$ln_meap93 <-log(meap93$sci11)
boxplot(meap93$ln_meap93)

#tabela de correla�ao
cor_meap93 <- cor(meap93)

#tabela de correla��o com atributos gr�ficos, por�m � necess�rio verificar
#os valores
install.packages("corrplot")
library(corrplot)
corrplot(cor_meap93,method="circle", type="upper",
         tl.col = "black", tl.srt = 45)

# Histograma da vari�vel explicada 
# freq = FALSE - densidade da probabilidade 
hist(meap93$sci11, freq = FALSE, 
     main = "Histograma")

hist(meap93$ln_meap93, freq = FALSE, 
     main = "Histograma Log")

#Fun�ao para Regress�o Linear M�ltipla
# "~" significa "em fun��o de"

#Analisando os resultados da RLM
#Verificar o ajustamento do modelo e a estatistica F
#Verificar os coeficientes estimados - sinais, valores e signific�ncia

woodrlm <- lm(sci11 ~ lnchprg + expend + gradrate, data = meap93)

summary(woodrlm)

#Tabela de an�lise de vari�ncia
#2 formas de c�lculo
#fun��o aov
anova_wood<- aov(woodrlm)
summary (woodrlm)

#fun��o anova
anova(woodrlm)

#An�lise gr�ficas de res�duos 
par(mfrow = c(1,1))

plot (woodrlm$fitted.values,woodrlm$residuals)
abline(0,0,col="red") 

boxplot(woodrlm$residuals)
hist(woodrlm$residuals)