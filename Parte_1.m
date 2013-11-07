%% a)  Graficar por separado y en conjunto, las siguientes funciones:
%% a(x) =7?log5(2x-3)
%% b(x) =sin(13*log7(x+2))
%% La primera en azul con '.', la segunda con 'x' y en rojo, tomando como puntos de 0
%% a 4 * pi con un espacio entre ellos de 0.01.
%% log b(x) coincides with ln(x)/ln(b)

%%%%%%%%%% Parte 1 %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% a) %%%%%%%%%%%%%%%%%%%%%%


x=[0:0.01:4*pi]; %definiendo el intervalo de la funcion (0, 4*pi) con el espacio entre ellos de 0.01
a = 7*(log(2*x-3)/log(5)); %definiendo la funcion a
b= sin(13*(log(x+2)/log(7))); %definiendo la funcion b


plot(x,a,'b.'); %graficando funcion a 
grid on; %activando grillas
title('Gráfico 1') %nombre grafico
xlabel('x ') %nombre abscisas
ylabel('a(x)= 7*(log base 5(2*x-3))') %nombre ordenadas

plot(x,b,'rx'); %graficando funcion b
grid on; %activando grillas
title('Gráfico 2') %nombre grafico
xlabel('x') %nombre abscisas
ylabel('b(x)= sin(13*(log base 7(x+2)))') %nombre ordenadas

plot(x,a,'b.',x,b,'rx'); %graficando funcion a y b
grid on; %activando grillas
title('Gráfico 3: Funciones a(x) y b(x)') %nombre grafico
label('x') %nombre abscisas
legend('a(x)= 7*(log base 5(2*x-3))','b(x)= sin(13*(log base 7(x+2)))') %

%%%%%%%%%%%%% b) %%%%%%%%%%%%%%%%%%%%%%
% % Graficar en escala Normal y Logaritmica la siguiente funcion:
% % c(x)= 2x * e^(5x-7)
% % Colores y estilo a eleccion, cuadriculando la figura (grilla) y con puntos entre -30 y
% % 30 (con espaciado de 0.05).

y=[-30:0.05:30]; %definiendo el intervalo de la funcion (-30,30) con el espacio entre ellos de 0.05
c= (2*y).*exp((5*y)-7); %definiendo la funcion

plot(y,c,'c.');%graficar en escala normal
grid on; %activando grillas
title('Gráfico 4: Escala Normal');%nombre del grafico
xlabel('x')%nombre de la abscisa
ylabel('c(x)= 2x * e^(5x-7)') %nombre de la ordenada


semilogy(y,c,'r*');%graficar en escala logaritmica
grid on %activando grillas
title('Gráfico 5: Escala Logarítmica')%nombre del grafico
xlabel('x')%nombre de la abscisa
ylabel('c(x)= 2x * e^(5x-7)')%nombre de la ordenada
axis([-30 30 -10^40 10^40])%intervalo del grafico

