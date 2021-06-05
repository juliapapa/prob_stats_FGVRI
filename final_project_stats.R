#Final Project Grupo 7 

#Inserimos os dados coletados
library(readxl)
ocde2 <- read_excel("C:/Users/julia/Downloads/ocde2.xlsx")
View(ocde2)

#Modificaremos os nomes das variaveis
names(ocde2)[names(ocde2) == "FDI"] <- "fdi_inflow"
names(ocde2)[names(ocde2) == "COR"] <- "corruption"
View(ocde2)

#Agora, criaremos o gr�fico de dispers�o
plot(ocde2$fdi_inflow, ocde2$corruption, 
xlab = 'FDI Inflow', ylab = 'COntrole de Corrup��o',
main = 'Grafico de Dispers�o')

#Função para Regressão Linear Simples - é??? o mesmo para Regressão linear múltipla
# "~" significa "em função de"
rls_ocde2<- lm(ocde2$fdi_inflow ~ ocde2$corruption, na.action = NULL)
# Gráfico da reta de regressão nos dados
abline(rls_ocde2)

#Analisando os resultados da RLS
summary (rls_ocde2)

#Tabela de análise de variância
anova_RLS_ocde2 <- aov(ocde2$fdi_inflow ~ ocde2$corruption)
summary (anova_RLS_ocde2)

#Análise gráficas de resíduos 
par(mfrow = c(1,1))
plot (rls_ocde2$residuals)
boxplot(rls_ocde2$residuals)
hist(rls_ocde2$residuals)

### Finalizado



