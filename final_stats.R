# Final Project Grupo 7 
# FGV - Escola de Relações Internacionais
# Probabilidade e Estatística
# Prof. Ariana Costa
# Alunas: Júlia Papa (C353125), Lara Prado (C357855), Olívia Tajra Nery (C359099)

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

### Finalizado