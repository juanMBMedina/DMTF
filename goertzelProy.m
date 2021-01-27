function [X, locs] = goertzelProy(senal,k0)
    N = length(senal);
    X = zeros(1,length(k0));
    c = 1;
    %Algoritmo de goertzel...
    for k = k0
        theta = 2*pi*k/N;
        realW = cos(theta);
        WkN = exp(-theta*1i);
        vk1 = 0;
        vk2 = 0;
        n = 1;
        while(n < N)
            vk = senal(n) + 2*realW*vk1 - vk2;
            yk = vk-WkN*vk1;
            vk2 = vk1;
            vk1 = vk;
            n = n + 1;
        end
        X(c) = abs(yk);
        X(c) = sqrt(vk.^2+vk1.^2-2*realW*vk*vk1);
        c = c + 1;
    end
    %Normalizacion y porcentaje de potencia
    X = X/max(X)*100;
    %Recorre el vector de frecuencias para discriminar la potencia.
    k = 1;
    locs = [];
    for i = 1 : length(X)
        if (X(i) > 20)
            locs(k) = i;
            k = k + 1;
        end
    end
end