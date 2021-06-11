# Final Project Grupo 7 
# FGV - Escola de Relações Internacionais
# Probabilidade e Estatística
# Prof. Ariana Costa
# Alunas: Júlia Papa (C353125), Lara Prado (C357855), Olívia Tajra Nery (C359099)

## EXERCÍCIO 1

#Inserimos os dados coletados
library(readxl)
ocde2 <- read_excel("ocde2")
View(ocde2)


#Modificaremos os nomes das variaveis para que fiquem evidentes no gráfico
names(ocde2)[names(ocde2) == "FDI"] <- "fdi_inflow"
names(ocde2)[names(ocde2) == "COR"] <- "corruption"
View(ocde2)

#Agora, criaremos o gráfico de dispersão para analisar o comportamento dos dados, 
#assim, entender a correlação entre as variáveis selecionadas 
plot(ocde2$fdi_inflow, ocde2$corruption, 
     xlab = 'FDI Inflow', ylab = 'COntrole de Corrupção',
     main = 'Grafico de Dispersão')

#Agora, calculares a função de regressão linear simples, já que estamos trabahando com duas variáveis (X e Y) 
#e queremos tratar todos os fatores que afetam Y, além de X, como não observados 
rls_ocde2<- lm(ocde2$fdi_inflow ~ ocde2$corruption, na.action = NULL)

# Buscamos achar a reta de regressão nos dados, para entender o comportamento geral da relação entre X e Y
abline(rls_ocde2)

#Rodamos o sumário para entender todos os aspectos que definem o resultado da regressão encontrado 
summary (rls_ocde2)

#Ademais, calculamos a tabela ANOVA para entender os componentes que definem a significância da regressão rodada
anova_RLS_ocde2 <- aov(ocde2$fdi_inflow ~ ocde2$corruption)
summary (anova_RLS_ocde2)

## TABELA DE REGRESSÂO EM LATEX

install.packages('stargazer')
library(stargazer)

stargazer(rls_ocde2, title = 'Modelo 1', align = TRUE)

## TABELA DA ANOVA EM LATEX

install.packages('xtable')
library(xtable)

xtable(anova(rls_ocde2))
### Finalizado

## EXERCÍCIO 2

install.packages('wooldridge')

library(wooldridge)

data('meap93')

#Análise descritivas de dados
sum_sch <- summary(meap93)

summary(meap93$sci11)
summary(meap93$lnchprg)
summary(meap93$expend)
summary(meap93$gradrate)

#Gráfico de dispersão
boxplot(meap93$sci11)

#utilizar o log 
meap93$ln_meap93 <-log(meap93$sci11)
boxplot(meap93$ln_meap93)

#tabela de correlaçao
cor_meap93 <- cor(meap93)

#tabela de correlação com atributos gráficos, porém é necessário verificar
#os valores
install.packages("corrplot")
library(corrplot)
corrplot(cor_meap93,method="circle", type="upper",
         tl.col = "black", tl.srt = 45)

# Histograma da variável explicada 
# freq = FALSE - densidade da probabilidade 
hist(meap93$sci11, freq = FALSE, 
     main = "Histograma")

hist(meap93$ln_meap93, freq = FALSE, 
     main = "Histograma Log")

#Funçao para Regressão Linear Múltipla
# "~" significa "em função de"

#Analisando os resultados da RLM
#Verificar o ajustamento do modelo e a estatistica F
#Verificar os coeficientes estimados - sinais, valores e significância

woodrlm <- lm(sci11 ~ lnchprg + expend + gradrate, data = meap93)

summary(woodrlm)

#Tabela de análise de variância
#2 formas de cálculo
#função aov
anova_wood<- aov(woodrlm)
summary (woodrlm)

#função anova
anova(woodrlm)

#Análise gráficas de resíduos 
par(mfrow = c(1,1))

plot (woodrlm$fitted.values,woodrlm$residuals)
abline(0,0,col="red") 

boxplot(woodrlm$residuals)
hist(woodrlm$residuals)