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

## EXERCÍCIO 13 
## 13. Na tabela abaixo, X significa número de filhos homens em famílias com 12 
## filhos. Calcule para cada valor da variável o número de famílias que você
## deveria esperar se X ??? b(12; 0,5).
## O modelo binomial é razoável para explicar o fenômeno?

## A Função dbinom será utilizada para a resolução desse exercício

## Com 0 filho
dbinom(0,12,0.5)
## Com 1 filho
dbinom(1,12,0.5)
## Com 2 filhos
dbinom(2,12,0.5)
## Com 3 filhos
dbinom(3,12,0.5)
## Com 4 filhos
dbinom(4,12,0.5)
## Com 5 filhos
dbinom(5,12,0.5)
## Com 6 filhos
dbinom(6,12,0.5)
## Com 7 filhos
dbinom(7,12,0.5)
## Com 8 filhos
dbinom(8,12,0.5)
## Com 9 filhos
dbinom(9,12,0.5)
## Com 10 filhos
dbinom(10,12,0.5)
## Com 11 filhos
dbinom(11,12,0.5)
## Com 12 filhos
dbinom(12,12,0.5)

## O modelo binomial é razoável para a explicação do fenômeno.

