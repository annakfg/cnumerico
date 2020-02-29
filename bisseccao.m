###### 2020.1 - Calculo Numerico - Profa. Anna Karina
##########       Metodo da Bisseccao       ##########

close all;
clear all;

# Definir a funcao que desejamos encontrar a raiz
f = inline("x^3 - 9*x + 3");

# Definir intervalo [a,b] da raiz
a = 0;
b = 1;

# Definir criterio de parada
eps = 10^(-6);

# Definir contador de iteracoes (opcional)
k = 1;

# Inicio do metodo iterativo
if (f(a)*f(b) < 0)
  # caso o intervalo satisfaca o teo. Bolzano
  while (abs(a-b) > eps)
    m = (a+b)/2;
    if (f(m)*f(b) < 0)
      a = m;
    else 
      b = m;
    endif
    # incremento do contador de iteracoes
    k = k+1;
  endwhile
  printf('A raiz esta no intervalo [%f,%f] \n',a,b)
  printf('Foram calculadas %d iteracoes \n',k);
else
  # caso o intervalo nao satisfaca o teorema
  printf('Nao ha raizes neste intervalo. \n')
endif