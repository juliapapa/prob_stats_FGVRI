## PROBABILIDADE E ESTATÍSTICA -- PROBLEM SET 3
## Prof. Ariana Costa
## Júlia Papa Gonçalves Mão Cheia (C353125) - Turma 1

## EXERCÍCIO 10 - B
## Calcule, para cada valor de X, o número de ninhadas que você deve esperar 
## se X ~ b(5, p), em que p é a proporção média de machos calculada em (a).

## Considerando X ~ b(5, p) 
## Proporção de machos calculada em (a) = 24

## quando X = 0
dbinom(0,5, 0.48)
## resultado --> 0.0380
## nº de ninhadas = 76
0.0380 * 2000

## quando X = 1
dbinom(1,5, 0.48)
## resultado --> 0.175
## nº de ninhadas = 350
0.175 * 2000

## quando X = 2
dbinom(2,5, 0.48)
## resultado --> 0.323
## nº de ninhadas = 646
0.323 * 2000

## quando X = 3
dbinom(3,5, 0.48)
## resultado --> 0.299 
## nº de ninhadas = 598
0.299 * 2000

## quando X = 4
dbinom(4,5, 0.48)
## resultado --> 0.138 
## nº de ninhadas = 276
0.138 * 2000

## quando X = 5
dbinom(5,5, 0.48)
## resultado --> 0.025 
## nº de ninhadas = 50
0.025 * 2000

## EXERCÍCIO 11
## Se X tem distribuição binomial com parâmetros n = 5 e p = 1/2, faça
## os gráficos da distribuição de X e da função de distribuição acumulada F(x).

pbinom(0,5, 0.5)
x1 <- dbinom(0,5, 0.5)
x2 <- dbinom(1,5, 0.5)
x3 <- dbinom(2,5, 0.5)
x4 <- dbinom(3,5, 0.5)
x5 <- dbinom(4,5, 0.5)
x6 <- dbinom(5,5, 0.5)

## Distribuição de X
x <- seq(0,5,by = 0.5)
y <- pbinom(x,5,0.5)
plot(x,y)

## Distribuição da F.D.A 
x <- seq(0,5,by = 0.5)
y <- dbinom(x,5,0.5)
plot(x,y)