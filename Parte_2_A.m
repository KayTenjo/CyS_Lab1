syms x; %definir x como funcion

%ingreso de parametros
n=input('Ingrese el número máximo de iteraciones: ');
while n <=0;
    n=input('Ingrese el número máximo de iteraciones: ');
end;
e=input('Ingrese el porcentaje de error aceptado (mayor a 0): ');
while e <=0;
    e=input('Ingrese el porcentaje de error aceptado (mayor a 0): ');
end;
polinomio=input('Ingrese la función (ejemplo: x^2-9): ');
i=1;
fx(i)=1;%solucion inicial 1 (para comenzar el algoritmo necesitamos dar una solucion inicial
funEv=subs(polinomio,x,fx(i)); %evaluando la funcion obtenida
derivada=diff(polinomio); %primera derivada de f(x)
derEv=subs(derivada,x,fx(i)); %evaluando la primera derivada de f(x)
errAbs(1)=100; %error absoluto inicial 100%
%ejecucion del algoritmo de newton-raphson
while n>=i; 
fx(i+1)=fx(i)-funEv/derEv; funEv=subs(polinomio,x,fx(i+1)); derEv=subs(derivada,x,fx(i+1));
errAbs(i+1)=abs((fx(i+1)-fx(i))/fx(i+1)*100);

i=i+1;
end;

%mostrar en pantalla la raiz obtenida y el error aproximado de esta
fprintf('\tRaíz \t\t Error aprox \n');
fprintf('%11.7f \t %7.3f \n',fx(i),errAbs(i));
