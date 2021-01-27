function teclaPres = decodificaSenal(x, fs)
    %Retorna las teclas presionadas segun el audio.
    %Tamaño de la señal.
	N = fs/2;
	% frecuencias de los tonos DTMF.
    freq = [697 770 852 941 1209 1336 1477 1633];
    cantTecla = length(x)/N;
    teclaPres = '';
    for i = 1 : cantTecla
        frontIni = 1 + N*(i - 1);
        frontFin = N*i;
        tam = frontIni:frontFin;
        
        % Calcula los indices de frecuencia muestreada.
        freq_indices_Proy = round(freq/fs*N);   
        % Retorna la dft de la senal y las posiciones de las frecuencias
        % Para ver dft cambiar ~ por X quital  los comentarios de las
        % lineas 23 - 26.
%         [X, locs] = goertzelProy( x(tam) , freq_indices_Proy );
        [~, locs] = goertzelProy( x(tam) , freq_indices_Proy );
        % Frecuencias encontradas de la senal de entrada.
        freqs = [freq(locs(1)) freq(locs(2))];
        % retorna la tecla de la senal.
        teclaPres = horzcat(teclaPres, encuentraTecla(freqs));    
%         stem(freq,X)
%         title("Groetzel Proyecto")
%         xlabel("Frecuencia [Hz]")
%         drawnow;
%         pause;     
    end
end
