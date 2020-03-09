###### 2020.1 - Calculo Numerico - Profa. Anna Karina
##########     Metodo de Secante     ##########

close all;
clear all;

# Definir a funcao que desejamos encontrar a raiz e sua derivada
f = inline("x^3 - 9*x + 3");

# Definir valor inicial x0
x0 = 1.5;
x1 = 2.0;

# Definir criterio de parada
eps = 10^(-6);

# Definir contador de iteracoes (opcional)
k = 1;

# Definir erro inicial
err = 1;

# Inicio do metodo iterativo
  while (err > eps)
    # Método de Newton
    xk = (x0*f(x1) - x1*f(x0))/(f(x1) - f(x0))
    # Calculo do erro
    err = abs(xk-x1);
    # Atualizacao de x0 e x1
    x0 = x1;
    x1 = xk;
    # incremento do contador de iteracoes
    k = k+1;
  endwhile
  
  printf('A raiz aproximada é x=%f \n',xk)
  printf('Foram calculadas %d iteracoes \n',k);