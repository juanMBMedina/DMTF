function tecla = encuentraTecla(frec)
    if (frec(1) == 697 && frec(2) == 1209)
        tecla = '1';
    elseif (frec(1) == 697 && frec(2) == 1336)
        tecla = '2';
    elseif (frec(1) == 697 && frec(2) == 1477)
        tecla = '3';
    elseif (frec(1) == 697 && frec(2) == 1633)
        tecla = 'A';
    elseif (frec(1) == 770 && frec(2) == 1209)
        tecla = '4';
    elseif (frec(1) == 770 && frec(2) == 1336)
        tecla = '5';
    elseif (frec(1) == 770 && frec(2) == 1477)
        tecla = '6';
    elseif (frec(1) == 770 && frec(2) == 1633)
        tecla = 'B';
    elseif (frec(1) == 852 && frec(2) == 1209)
        tecla = '7';
    elseif (frec(1) == 852 && frec(2) == 1336)
        tecla = '8';
    elseif (frec(1) == 852 && frec(2) == 1477)
        tecla = '9';
    elseif (frec(1) == 852 && frec(2) == 1633)
        tecla = 'C';
    elseif (frec(1) == 941 && frec(2) == 1209)
        tecla = '*';
    elseif (frec(1) == 941 && frec(2) == 1336)
        tecla = '0';
    elseif (frec(1) == 941 && frec(2) == 1477)
        tecla = '#';
    elseif (frec(1) == 941 && frec(2) == 1633)
        tecla = 'D';
    else
        tecla = 'X';
    end
end