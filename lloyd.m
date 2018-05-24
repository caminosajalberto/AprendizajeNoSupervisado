function [centros] = lloyd (X, y, epsilon, maxiter, raprendizaje)

    centros = centrosaux = [4.6, 3.0, 4.0, 0.0 ; 6.8, 3.4, 4.6, 0.7];

    for k = 1:maxiter
        parar = true;
        for i = 1:rows(X)
            minimo = norma(X(i, :), centrosaux(1, :));
            indice = 1;
            for j = 2:rows(centrosaux)

                aux = norma(X(i, :), centrosaux(j, :));
                if(aux < minimo) 
                    minimo = aux;
                    indice = j;
                endif

            endfor
            centrosaux(indice, :) = centrosaux(indice, :) + (raprendizaje * (X(i, :) - centrosaux(indice, :)));
            
        endfor
        
        for j = 1:rows(centrosaux)
            resta = (norma(centros(j, :),centrosaux(j, :)))^2;
            if (resta > epsilon)
                parar = false;
            endif
        endfor
        centros = centrosaux;
        
        if(parar)
            break;
        endif
    endfor

endfunction