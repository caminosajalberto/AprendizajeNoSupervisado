function [X, y, epsilon, maxiter, raprendizaje] = cargarlloyd (archivo)

	load("Iris2Clases.txt");
	X = Iris2Clases(:, 1:end - 1);
	y = Iris2Clases(:, end);
	epsilon = 0.0000000001;
	maxiter = 10;
    raprendizaje = 0.1;
	printf('archivo cargado y variables inicializadas \n');


endfunction