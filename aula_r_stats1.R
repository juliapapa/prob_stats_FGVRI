## OI GENTEEEE!!
## Espero que isso dê para ajudar vocês

## PARTE 1 - INTRODUÇÃO AO R

## O R é uma linguagem de programação multi-paradigma orientada a objetos,
## programação funcional, dinâmica, fracamente tipada, 
## voltada à manipulação, análise e visualização de dados.

## O objetivo dessa aula é tentar passar tudo de R 
## que foi passado desde a primeira aula de Stats

## Aritmética básica

5 + 5

25 - 5

25/5

25 * 3

5^3

sqrt(25)

######

## Objetos

## Criar um objeto é uma forma de criar e guardar
## dados no environment do seu RStudio

objeto1 <- 5 - 2

## O valor de um objeto pode ser uma palavra = STRING

eu <- 'julia'
maçã <- 'fruta'

## Um objeto pode ter classes diferentes

## CARACTER
class(eu)

## NUMERIC
class(objeto1)

#############

## vetores

## Dados podem ser atribuídos a um vetor

## Um vetor representa uma coleção de informações 
## armazenadas em uma ordem específica

## Para criar um vetor usa-se a função "c()"

vetor1 <- c(1,2,3)

vetor2 <- c(4,5,6)

## é possível fazer operações aritméticas com vetores

vetor1 + vetor2

## EXEMPLO CONCRETO

world.pop <- c(2525779, 3026003, 3691173,
               4449049, 5320817, 6127700, 6916183)
world.pop

pop.first <- c(2525779, 3026003, 3691173)

pop.second <- c(4449049, 5320817, 6127700, 6916183)

## NÃO É POSSÍVEL FAZER CONTA COM VETORES DE TAMANHO DIFERENTE

pop.first + pop.second

## JUNÇÃO DE VETORES

pop.all <- c(pop.first, pop.second)

pop.all

## Mostrar elementos específicos de um vetor
## (bom para fazer com bases de dados grandes)

world.pop[2]

world.pop[c(2, 4)]

world.pop[c(4, 2)]

## Remover elementos do vetor

world.pop[c(-3)]

## OPERAÇÕES ARITMÉTICAS SCOM O WORLD.POP

pop.million <- world.pop / 1000

pop.million

pop.rate <- world.pop / world.pop[1]

pop.rate

#######################

## FUNÇÕES

## Funções geram resultados específicos (OUTPUTS) a partir
## de entradas/códigos específicos (INPUTS)

## função(INPUT)

# Extensão do vetor
length(world.pop)

# Valor mínimo
min(world.pop)

# Valor máximo
max(world.pop)

# Faixa 
range(world.pop)

# Média
mean(world.pop)

# Média : soma dos elementos do vetor/extensão do vetor
sum(world.pop) / length(world.pop)

# Na sixtaxe da função é importante definir a ordem
# funcname(input1,input2)
# funcname(input2,input1)

# Também é possivel especificar um nome para os argumentos
# funcname(arg1 = input1, arg2 = input2).

# SEQUÊNCIA
# Função seq()

year <- seq(from = 1950, to = 2010, by = 10)
year

year2 <- seq(from = 1960, to = 2010, by = 10)
year2

# Possível alterar valores pelos índices
year2 [c(1, 2)] <- c(1959, 1969)
year2

# Sequência sem vetores, com intervalos específicos
seq(to = 2010, by = 10, from = 1950)
seq(from = 2010, to = 1950, by = -10)

# Sequência simples de 1 em 1
2008:2012

2012:2008

# Vamos nomear os dados atribuídos ao vetor world.pop

# o vetor ainda não foi nomeado - resposta NULL
names(world.pop)

names(world.pop) <- year

world.pop

## criação de data frames - TABELAS

UNpop <- data.frame(year, world.pop)
print (UNpop)

# Análise do seu data frame
names(UNpop)
nrow(UNpop)
ncol(UNpop)

##dim() combina os resultados colunas e linhas
dim(UNpop)

# Visualização de valores de vetores específicos no Data Frame
UNpop$world.pop
UNpop$year

# Função de sumário disponível
summary(UNpop)

## BASE DE DADOS AFGHAN
## UTILIZAÇÃO DA FERRAMENTA IMPORT!

## analise de variaveis em uma base de dados 

## ANÁLISE DE VARIÁVEIS

#Tamanho da base
length(afghan$age)

#Média
mean(afghan$age)

#Mediana
median(afghan$age)

#Desvio padrão
sd(afghan$age)

#Variãncia
var(afghan$age)

#Quartil
quantile(afghan$age, probs = seq(from = 0, to = 1, by = 0.2))

## cálculo da distancia interquartil
IQR(afghan$age)

## SUMÁRIO COM TODAS AS MEDIDAS
summary(afghan$age)

###### 

## GRÁFICOS

## BARPLOT

barplot(afghan$age)

age_renge <- table(cut(afghan$age,
                       breaks = seq(0,80,by =20),
                       right = FALSE))

barplot(age_renge)

barplot(age_renge, main = "Gráficos em barras de idade",
        xlab = 'Classe de Idade',
        ylab = 'Frequencia Absoluta',
        ylim = c(0, 1700))

age_renge_pro <- prop.table(table(cut(afghan$age,
                                      breaks = seq(0,80, by = 20))))

barplot(age_renge_pro, 
        main = "Gráficos em barras de idade",
        xlab = 'Classe de Idade',
        ylab = 'Frequencia Relativa',
        ylim = c(0,0.7))

## HISTOGRAMA

hist(afghan$age)

hist(afghan$age, freq = TRUE, ylim = c(0,600),
     xlab = 'idade',
     main = 'histograma da variavel idade')

boxplot(afghan$age, 
        main = 'distribuição de idade',
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
        ylab = "Frequência absoluta", ylim = c(0, 1700))

names(tab.employed)
nomeando.tab.employed <- c("Não", "Sim")

names(tab.employed) <- nomeando.tab.employed

barplot(tab.employed,
        main = "Empregabilidade",
        xlab = "Empregado",
        ylab = "Frequência absoluta", ylim = c(0, 1700))

## VARIÁVEL RENDA

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

summary(afghan$violent.exp.ISAF)
summary(afghan$violent.exp.taliban)
table(ISAF = afghan$violent.exp.ISAF,
      Taliban = afghan$violent.exp.taliban, exclude = NULL)

# entender a porcentagem dos valores apresentados
prop.table(table(ISAF = afghan$violent.exp.ISAF,
                 Taliban = afghan$violent.exp.taliban, exclude = NULL))

# vamos analisar os dados do ponto de vista gráfico

# vamos gerar um vetor de porporção da variável violent.exp.ISAF 
ISAF.ptable <- prop.table(table(ISAF = afghan$violent.exp.ISAF,
                                exclude = NULL))

table(ISAF.ptable)

barplot(ISAF.ptable,
        names.arg = c("Sem Prejuízo", "Prejuízo", "Não respondeu"),
        main = "Civis vítimas da ISAF",
        xlab = "Respostas categóricas",
        ylab = "Proporção dos respondentes", ylim = c(0, 0.7))

# vamos repetir o mesmo procedimento para as vítimas do Talibã
Taliban.ptable <- prop.table(table(Taliban = afghan$violent.exp.taliban,
                                   exclude = NULL))

table(Taliban.ptable)

barplot(Taliban.ptable,
        names.arg = c("Sem Prejuízo", "Prejuízo", "Não respondeu"),
        main = "Civis vítimas do Taliban",
        xlab = "Respostas categóricas",
        ylab = "Proporção dos respondentes", ylim = c(0, 0.7))

tapply(afghan$violent.exp.taliban, afghan$province, sum, na.rm = TRUE)
tapply(afghan$violent.exp.ISAF, afghan$province, sum, na.rm = TRUE)

tapply(afghan$violent.exp.taliban, afghan$province, sum, na.rm = TRUE)
tapply(afghan$violent.exp.ISAF, afghan$province, mean, na.rm = TRUE)

boxplot(educ.years ~ province, data = afghan,
        main = "Educação por região", ylab = "Anos de educação")

####### FIM DA AULA