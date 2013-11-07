%%a)  Graficar por separado y en conjunto, las siguientes funciones:
%%a(x) =7?log5(2x-3)
%%b(x) =sin(13*log7(x+2))
%% La primera en azul con ï¿½.ï¿½, la segunda con 'x' y en rojo, tomando como puntos de 0
%% a 4 * pi con un espacio entre ellos de 0.01.
%  log b(x) coincides with ln(x)/ln(b)

%%%%%%%%%% Parte 1 %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% a) %%%%%%%%%%%%%%%%%%%%%%


x=[0:0.01:4*pi];
a = 7*(log(2*x-3)/log(5));

b= sin(13*(log(x+2)/log(7)));


%plot(x,a,'b.');
%grid on;
%title('Gráfico 1')
%xlabel('x ')
%ylabel('a(x)= 7*(log base 5(2*x-3))')

%plot(x,b,'rx');
%grid on;
%title('Gráfico 2')
%xlabel('x')
%ylabel('b(x)= sin(13*(log base 7(x+2)))')

%plot(x,a,'b.',x,b,'rx');
%grid on;
%title('Gráfico 3: Funciones a(x) y b(x)')
%label('x')
%legend('a(x)= 7*(log base 5(2*x-3))','b(x)= sin(13*(log base 7(x+2)))')

%%%%%%%%%%%%% b) %%%%%%%%%%%%%%%%%%%%%%
% % Graficar en escala Normal y Logarï¿½tmica la siguiente funciï¿½n:
% % c(x)= 2x ? e^(5x-7)
% % Colores y estilo a elecciï¿½n, cuadriculando la figura (grilla) y con puntos entre ï¿½30 y
% % 30 (con espaciado de 0.05).

y=[-30:0.05:30];
c= (2*y).*exp((5*y)-7);

%plot(y,c,'c.');
%grid on;
%title('Gráfico 4: Escala Normal');
%xlabel('x')
%ylabel('c(x)= 2x * e^(5x-7)')

semilogy(y,c,'r*');
grid on
title('Gráfico 5: Escala Logarítmica')
xlabel('x')
ylabel('c(x)= 2x * e^(5x-7)')
axis([-30 30 -10^40 10^40])

