syms x;

n=input('Ingrese el número máximo de iteraciones: ');
if n <=0;
    n=input('Ingrese el número máximo de iteraciones: ');
end;
e=input('Ingrese el porcentaje de error aceptado (mayor a 0): ');
if e <=0;
    e=input('Ingrese el porcentaje de error aceptado (mayor a 0): ');
end;
polinomio=input('Ingrese la función (ejemplo: x^2-9): ');
i=1;
fx(i)=1;

f1=subs(polinomio,x,fx(i)); %dando formato a la función obtenida
derivada=diff(polinomio); %primera derivada de f
d=subs(derivada,x,fx(i)); %dando formato a la derivada de f

errAbs(1)=100; %error absoluto inicial 100%

while n>=i; 
fx(i+1)=fx(i)-f1/d; f1=subs(polinomio,x,fx(i+1)); d=subs(derivada,x,fx(i+1));
errAbs(i+1)=abs((fx(i+1)-fx(i))/fx(i+1)*100);

i=i+1;
end;

fprintf('\tRaíz \t\t Error aprox (i) \n');
fprintf('%11.7f \t %7.3f \n',fx(i),errAbs(i));
