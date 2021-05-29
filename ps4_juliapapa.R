## FGV - Escola de Relações Internacionais
## Probabilidade e Estatística - Prof. Ariana Costa
## Problem Set Quatro - Inferência Causal
## Júlia Papa Gonçalves Mão Cheian- Turma Um

## Questão 2
qnorm(0.025)
qnorm(0.975)

# Questão 3
# Item A
pnorm(1, lower.tail = FALSE)
pnorm(-1)

# Item B 
qnorm(0.05, mean = 0, sd = 1, lower.tail = FALSE)

# Questão 5
pnorm(-1.8)

# Questão 6
qnorm(0.01)
qnorm(0.05)

# Questão 7
qt(0.05, 15)

# Questão 8 
data = c(1.230, 582, 2.093, 2.621, 1.045,
         1.439, 717, 1.838, 1.359)
sd(data)
mean(data)
qt(0.95,9)

# Questão 9
data2 = c(125, 135, 115, 120, 150, 130,
          125, 145, 125, 140, 130)
sd(data2)
mean(data2)
qt(0.025, 30)
qt(0.95, 9)
qchisq(0.025, 10)
qchisq(0.975, 10)

# Questão 10
qt(0.025, 98)

# Questão 11
qt(0.025, 25)

# Questão 12
qt(0.025, 8.8)