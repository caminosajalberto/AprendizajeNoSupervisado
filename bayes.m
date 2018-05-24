function [m1, m2, C1, C2] = bayes (X, y)

    m1 = zeros(1, columns(X));
    m2 = zeros(1, columns(X));
    totalclass1 = sum(y == 0);
    totalclass2 = sum(y == 1);

    for i = 1:rows(X)
        if(y(i) == 0)
            m1 = m1 + ((1 /totalclass1) * X(i, :));
        else 
            m2 = m2 + ((1 /totalclass2) * X(i, :));
        endif
    endfor

    C1 = zeros(columns(X), columns(X));
    C2 = zeros(columns(X), columns(X));
    
    for i = 1:rows(X)
        if(y(i) == 0)
            C1 = C1 + ((1 /totalclass1) * ((X(i, :) - m1)' * (X(i, :) - m1)));
        else
            C2 = C2 + ((1 /totalclass2) * ((X(i, :) - m2)' * (X(i, :) - m2)));
        endif
    endfor

endfunction