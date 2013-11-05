%%a)  Graficar por separado y en conjunto, las siguientes funciones:
%%a(x) =7?log5(2x-3)
%%b(x) =sin(13*log7(x+2))
%% La primera en azul con ‘.’, la segunda con 'x' y en rojo, tomando como puntos de 0
%% a 4 * pi con un espacio entre ellos de 0.01.
%  log b(x) coincides with ln(x)/ln(b)

x=[0:0.01:4*pi];
a = 7*(log(2*x-3)/log(5));

b= sin(13*(log(x+2)/log(7)));

plot(x,a,'b.');

plot(x,b,'rx');

plot(x,a,'b.',x,b,'rx');