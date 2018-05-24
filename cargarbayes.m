function [X, y, b, epsilon] = cargarbayes (archivo)

	load("Iris2Clases.txt");
	X = Iris2Clases(:, 1:end - 1);
	y = Iris2Clases(:, end);
	printf('archivo cargado y variables inicializadas \n');


endfunction