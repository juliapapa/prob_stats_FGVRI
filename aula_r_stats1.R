## OI GENTEEEE!!
## Espero que isso d� para ajudar voc�s

## PARTE 1 - INTRODU��O AO R

## O R � uma linguagem de programa��o multi-paradigma orientada a objetos,
## programa��o funcional, din�mica, fracamente tipada, 
## voltada � manipula��o, an�lise e visualiza��o de dados.

## O objetivo dessa aula � tentar passar tudo de R 
## que foi passado desde a primeira aula de Stats

## Aritm�tica b�sica

5 + 5

25 - 5

25/5

25 * 3

5^3

sqrt(25)

######

## Objetos

## Criar um objeto � uma forma de criar e guardar
## dados no environment do seu RStudio

objeto <- 3
objeto1 <- 5 - 2

## O valor de um objeto pode ser uma palavra = STRING

eu <- 'julia'
ma�� <- 'fruta'

## Um objeto pode ter classes diferentes

## CARACTER
class(eu)

## NUMERIC
class(objeto1)

#############
 
## vetores

## Dados podem ser atribu�dos a um vetor

## Um vetor representa uma cole��o de informa��es 
## armazenadas em uma ordem espec�fica

## Para criar um vetor usa-se a fun��o "c()"

vetor1 <- c(1,2,3)

vetor2 <- c(4,5,6)

## � poss�vel fazer opera��es aritm�ticas com vetores

vetor1 + vetor2
vetor2 - vetor1

## EXEMPLO CONCRETO

world.pop <- c(2525779, 3026003, 3691173,
               4449049, 5320817, 6127700, 6916183)
world.pop

pop.first <- c(2525779, 3026003, 3691173)

pop.second <- c(4449049, 5320817, 6127700, 6916183)

## N�O � POSS�VEL FAZER CONTA COM VETORES DE TAMANHO DIFERENTE

pop.first + pop.second

## JUN��O DE VETORES

pop.all <- c(pop.first, pop.second)

pop.all

## Mostrar elementos espec�ficos de um vetor
## (bom para fazer com bases de dados grandes)

world.pop[2]

world.pop[c(2, 4)]

world.pop[c(4, 2)]

## Remover elementos do vetor

world.pop[c(-3)]

## OPERA��ES ARITM�TICAS SCOM O WORLD.POP

pop.million <- world.pop / 1000

pop.million

pop.rate <- world.pop / world.pop[1]

pop.rate

#######################

## FUN��ES

## Fun��es geram resultados espec�ficos (OUTPUTS) a partir
## de entradas/c�digos espec�ficos (INPUTS)

## fun��o(INPUT)

# Extens�o do vetor
length(world.pop)

# Valor m�nimo
min(world.pop)

# Valor m�ximo
max(world.pop)

# Faixa 
range(world.pop)

# M�dia
mean(world.pop)

# M�dia : soma dos elementos do vetor/extens�o do vetor
sum(world.pop) / length(world.pop)

# Na sixtaxe da fun��o � importante definir a ordem
# funcname(input1,input2)
# funcname(input2,input1)

# Tamb�m � possivel especificar um nome para os argumentos
# funcname(arg1 = input1, arg2 = input2).


# SEQU�NCIA
# Fun��o seq()

yearex <- seq(from = 1900, to = 2000, by = 1)
yearex

year <- seq(from = 1950, to = 2010, by = 10)
year

year2 <- seq(from = 1960, to = 2010, by = 10)
year2

# Poss�vel alterar valores pelos �ndices
year2 [c(1, 2)] <- c(1959, 1969)
year2

yearex [c(1,2)] <- c(1898, 1899) 
yearex

# Sequ�ncia sem vetores, com intervalos espec�ficos
seq(to = 2010, by = 10, from = 1950)
seq(from = 2010, to = 1950, by = -10)

# Sequ�ncia simples de 1 em 1
2008:2012

2012:2008

1999:2007
 
# Vamos nomear os dados atribu�dos ao vetor world.pop

# o vetor ainda n�o foi nomeado - resposta NULL
names(world.pop)

names(world.pop) <- year

world.pop

## cria��o de data frames - TABELAS
##data.frame

UNpop <- data.frame(year, world.pop)
print (UNpop)

# An�lise do seu data frame
names(UNpop)
nrow(UNpop)
ncol(UNpop)

##dim() combina os resultados colunas e linhas
dim(UNpop)


### ANALISE DE DADOS ESPECIFICOS

# Visualiza��o de valores de vetores espec�ficos no Data Frame
UNpop$world.pop
UNpop$year

# Fun��o de sum�rio dispon�vel
summary(UNpop)

### exemplo de grafico 

boxplot(UNpop)

## BASE DE DADOS AFGHAN
## UTILIZA��O DA FERRAMENTA IMPORT!

## analise de variaveis em uma base de dados 

## AN�LISE DE VARI�VEIS

#Tamanho da base
length(afghan$age)

#M�dia
mean(afghan$age)

#Mediana
median(afghan$age)

#Desvio padr�o
sd(afghan$age)

#Vari�ncia
var(afghan$age)

#Quartil
quantile(afghan$age, probs = seq(from = 0, to = 1, by = 0.2))
quantile(afghan$age, probs = seq(from = 0, to = 1, by = 0.3))

## c�lculo da distancia interquartil
IQR(afghan$age)

## SUM�RIO COM TODAS AS MEDIDAS
summary(afghan$age)

###### 

## GR�FICOS

## BARPLOT

barplot(afghan$age)

## FREQUENCIA ABSOLUTA

age_renge <- table(cut(afghan$age,
                       breaks = seq(0,80,by = 20),
                       right = FALSE))

barplot(age_renge)

barplot(age_renge, main = "Gr�ficos em barras de idade",
        xlab = 'Classe de Idade',
        ylab = 'Frequencia Absoluta',
        ylim = c(0, 1700))

### FREQUENCIA RELATIVA

age_renge_pro <- prop.table(table(cut(afghan$age,
                                      breaks = seq(0,80, by = 20))))

barplot(age_renge_pro, 
        main = "Gr�ficos em barras de idade",
        xlab = 'Classe de Idade',
        ylab = 'Frequencia Relativa',
        ylim = c(0,0.7))


## HISTOGRAMA

hist(afghan$age)

hist(afghan$age, freq = TRUE, ylim = c(0,600),
     xlab = 'idade',
     main = 'histograma da variavel idade')

hist(afghan$age, freq = TRUE, ylim = c(0,600),
     xlab = 'idade', xlim = c(20,60),
     main = 'histograma da variavel idade')

boxplot(afghan$age, 
        main = 'distribui��o de idade',
        ylab = 'idade',
        ylim = c(10,80))

## VARIAVEL DE EMPREGO (employed)

afghan$employed

class(afghan$employed)

summary(afghan$employed)

length(afghan$employed)
tab.employed <- table(afghan$employed)

barplot(tab.employed,
        main = "Empregabilidade",
        xlab = "Empregado",
        ylab = "Frequ�ncia absoluta", ylim = c(0, 1700))

names(tab.employed)
nomeando.tab.employed <- c("N�o", "Sim")

names(tab.employed) <- nomeando.tab.employed

barplot(tab.employed,
        main = "Empregabilidade",
        xlab = "Empregado",
        ylab = "Frequ�ncia absoluta", ylim = c(0, 1700))

## VARI�VEL RENDA

summary(afghan$income)

class(afghan$income)

afghan$income <- as.factor(afghan$income)

levels(afghan$income)

table(afghan$income)

summary(afghan$income)

# Dados faltantes - NA

summary(afghan$income)

sum(is.na(afghan$income))

mean(is.na(afghan$income))

x <- c(1,2,3,NA)
mean(x)

mean(x, na.rm = TRUE)

mean(afghan$income, na.rm = TRUE)
mean(afghan$age)

summary(afghan$violent.exp.ISAF)
summary(afghan$violent.exp.taliban)

table(ISAF = afghan$violent.exp.ISAF,
      Taliban = afghan$violent.exp.taliban, exclude = NULL)

# entender a porcentagem dos valores apresentados
prop.table(table(ISAF = afghan$violent.exp.ISAF,
                 Taliban = afghan$violent.exp.taliban, exclude = NULL))

# vamos analisar os dados do ponto de vista gr�fico

# vamos gerar um vetor de porpor��o da vari�vel violent.exp.ISAF 
ISAF.ptable <- prop.table(table(ISAF = afghan$violent.exp.ISAF,
                                exclude = NULL))

table(ISAF.ptable)

barplot(ISAF.ptable,
        names.arg = c("Sem Preju�zo", "Preju�zo", "N�o respondeu"),
        main = "Civis v�timas da ISAF",
        xlab = "Respostas categ�ricas",
        ylab = "Propor��o dos respondentes", ylim = c(0, 0.7))

# vamos repetir o mesmo procedimento para as v�timas do Talib�
Taliban.ptable <- prop.table(table(Taliban = afghan$violent.exp.taliban,
                                   exclude = NULL))

table(Taliban.ptable)

barplot(Taliban.ptable,
        names.arg = c("Sem Preju�zo", "Preju�zo", "N�o respondeu"),
        main = "Civis v�timas do Taliban",
        xlab = "Respostas categ�ricas",
        ylab = "Propor��o dos respondentes", ylim = c(0, 0.7))

tapply(afghan$violent.exp.taliban, afghan$province, sum, na.rm = TRUE)
tapply(afghan$violent.exp.ISAF, afghan$province, sum, na.rm = TRUE)

tapply(afghan$violent.exp.taliban, afghan$province, sum, na.rm = TRUE)
tapply(afghan$violent.exp.ISAF, afghan$province, mean, na.rm = TRUE)

boxplot(educ.years ~ province, data = afghan,
        main = "Educa��o por regi�o", ylab = "Anos de educa��o")

####### FIM DA AULA