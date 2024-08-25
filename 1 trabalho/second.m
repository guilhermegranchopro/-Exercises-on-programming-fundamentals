disp('Calcula o sistema de equações Ax = b, onde A é uma matriz e b um vetor à sua escolha.')
A = input('Introduza A: ');
b = input('Introduza b: ');

x = A\b;

fprintf('x = %f', x)