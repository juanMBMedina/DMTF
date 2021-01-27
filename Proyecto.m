clc,clear,close all
fs = 8e3;
%% Primer punto.
%Creacion de un modulo que acepte un vector de digitos y genere
%el respectivo tono, cada uno con una duracion de medio segundo.
tecla = '8412';
x1 = dtmf (tecla, fs);
sound(x1,fs);
pause(0.5*length(tecla));
%% Segundo punto 
%duracion variable en segundos.
x2 = dtmf350440(3,fs);
sound(x2,fs);
pause(1);
%% Tercer punto
% Implementacion del algoritmo de goertzel, para decodificar una senal
% DTMF.
teclaPres = '1#*ADC2345';
x3 = dtmf (teclaPres, fs);
sound(x3,fs);
pause(0.5*length(teclaPres));
teclaObt = decodificaSenal(x3, fs);