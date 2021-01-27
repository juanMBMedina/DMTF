function x = dtmf (tecEsc, fs)
    % tono DTMF
    %  x = dtmf( tecEsc, fs)
    %  tecEsc, teclas digiadas para generar el tono.
    %  fs,     frecuencia de muestreo.
    %  x, secuencia de audio DTMF
    teclas = '123A456B789C*0#D';
    Value = [697 1209; 
             697 1336; 
             697 1477;
             697 1633;
             770 1209;
             770 1336;
             770 1477;
             770 1633;
             852 1209;
             852 1336;
             852 1477;
             852 1633;
             941 1209;
             941 1336;
             941 1477;
             941 1633];
    x = [];
    for i = 1 : length(tecEsc)
        pos = teclas == tecEsc(i);
        frecs = Value(pos,:);
        T = 1/fs;
        N = 0:round( fs/2 - 1 );
        x1 = zeros(1,length(N));
        for n = 1 : length(N)
            x1(n) = sin(2*pi*frecs(1)*N(n)*T) + sin(2*pi*frecs(2)*N(n)*T);    
        end
        x = horzcat(x, x1);
    end
end
