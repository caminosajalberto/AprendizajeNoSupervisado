function [gradosPertenencia, centros] = kmedias (X, y, b, epsilon, clases)
	
	centros = [4.6, 3.0, 4.0, 0.0 ; 6.8, 3.4, 4.6, 0.7];
	
	do
		suma = 0;
		
		%Calculo del grado de pertenencia. gradosPertenencia (4, 2) = Grado de pertenencia del dato 4 a la clase 2
		for i = 1:clases
			for j = 1:rows(X)
				for k = 1:clases
					suma = suma + ((1 / (norma(X(j, :), centros(k, :)).^2)).^(1 / (b - 1)));
				endfor
				
				gradosPertenencia(j, i) = ((1 / (norma(X(j, :), centros(i, :)).^2)).^(1 / (b - 1))) / suma;
				suma = 0;
			
			endfor
		endfor
		
		%Calculo de los nuevos centros
		
		for i = 1:clases
			suma = sum(gradosPertenencia(:, i).^b);
			nuevosCentros(i, :) = ((gradosPertenencia(:, i)'.^b) * X) / suma;
		endfor
		
		delta = norma(nuevosCentros, centros);
		centros = nuevosCentros;
		
		
	until delta < epsilon
	
endfunction