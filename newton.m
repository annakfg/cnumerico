###### 2020.1 - Calculo Numerico - Profa. Anna Karina
##########     Metodo de Newton     ##########

close all;
clear all;

# Definir a funcao que desejamos encontrar a raiz e sua derivada
f = inline("x^3 - 9*x + 3");
df = inline("3*x^2 - 9");

# Definir valor inicial x0
x0=1.5;

# Definir criterio de parada
eps = 10^(-6);

# Definir contador de iteracoes (opcional)
k = 1;

# Definir erro inicial
err = 1;

# Inicio do metodo iterativo
  while (err > eps)
    # Método de Newton
    xk = x0 - f(x0)/df(x0)
    # Calculo do erro
    err = abs(xk-x0);
    # Atualizacao de x0
    x0=xk;
    # incremento do contador de iteracoes
    k = k+1;
  endwhile
  
  printf('A raiz aproximada é x=%f \n',xk)
  printf('Foram calculadas %d iteracoes \n',k);