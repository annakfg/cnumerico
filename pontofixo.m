###### 2020.1 - Calculo Numerico - Profa. Anna Karina
##########       Metodo do Ponto Fixo      ##########

close all;
clear all;

# Definir a funcao que desejamos encontrar a raiz e a função phi
f   = inline("x^2 - x - 2");
#phi = inline("2/(x-1)");
phi = inline("sqrt(x+2)");

# Definir intervalo [a,b] da raiz
a = 1.5;
b = 3;

# Definir valor de x inicial
x0 = 1.5;

# Definir criterio de parada
eps = 10^(-6);

# Definir contador de iteracoes (opcional)
k = 1;

# Inicio do metodo iterativo
if (f(a)*f(b) < 0)
  # caso o intervalo satisfaca o teo. Bolzano
  while (abs(f(x0)) > eps)
    x0 = phi(x0);
    # incremento do contador de iteracoes
    k = k+1;
  endwhile
  printf('A raiz aproximada é x = %f \n',x0)
  printf('Foram calculadas %d iteracoes \n',k);
else
  # caso o intervalo nao satisfaca o teorema
  printf('Nao ha raizes neste intervalo. \n')
endif