## FGV - Escola de Rela��es Internacionais
## Probabilidade e Estat�stica - Prof. Ariana Costa
## Problem Set Quatro - Infer�ncia Causal
## J�lia Papa Gon�alves M�o Cheian- Turma Um

## Quest�o 2
qnorm(0.025)
qnorm(0.975)

# Quest�o 3
# Item A
pnorm(1, lower.tail = FALSE)
pnorm(-1)

# Item B 
qnorm(0.05, mean = 0, sd = 1, lower.tail = FALSE)

# Quest�o 5
pnorm(-1.8)

# Quest�o 6
qnorm(0.01)
qnorm(0.05)

# Quest�o 7
qt(0.05, 15)

# Quest�o 8 
data = c(1.230, 582, 2.093, 2.621, 1.045,
         1.439, 717, 1.838, 1.359)
sd(data)
mean(data)
qt(0.95,9)

# Quest�o 9
data2 = c(125, 135, 115, 120, 150, 130,
          125, 145, 125, 140, 130)
sd(data2)
mean(data2)
qt(0.025, 30)
qt(0.95, 9)
qchisq(0.025, 10)
qchisq(0.975, 10)

# Quest�o 10
qt(0.025, 98)

# Quest�o 11
qt(0.025, 25)

# Quest�o 12
qt(0.025, 8.8)