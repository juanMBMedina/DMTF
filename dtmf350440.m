function x = dtmf350440 (dur, fs)
    % tono DTMF
    %  x = dtmf( tecEsc, fs)
    %  fs, frecuencia de muestreo.
    %  dur, duracion de la secuencia en segundos.
    %  x, secuencia de audio DTMF
    T = 1/fs;
    N = 0 : round( dur*fs ) - 1;
    x = zeros(1, length(N));
    for i = 1 : length(N)
        x(i) = sin(2*pi*350*N(i)*T) + sin(2*pi*440*N(i)*T);    
    end    
end