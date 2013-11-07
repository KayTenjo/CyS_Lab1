
vector = input ('Ingrese un vector de minimo 3 elementos de la forma [x y z ....]: '); %Funcion input sirve para pedir parametros de entrada por teclado
                                                                                       %La gracia es que puede recibir un vector directamente
cantidad = size(vector); % Con la funcion size, obtengo el largo del vector

 while (cantidad < 3) % Si tiene menos de 3 elementos, se vuelve a pedir que re ingrese los elementos
    
    vector = input ('Ingrese un vector de mínimo 3 elementos');
    cantidad = size(vector)
end

vector_ordenado = sort(vector,'descend'); % con sort ordeno el vector, especificando que sea de forma descendiente

resultado = sqrt (vector_ordenado(1)) + sqrt (vector_ordenado(2)) + sqrt(vector_ordenado(3)); % Luego realizo la suma de las raices de los eleemtnso mayores


fprintf ('La suma de la raiz cuadrada de los 3 elementso mayores es : %d', resultado); % Se imprime el resultado 