close all
clear
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%   Paso 1) Añadir todas as ecuacións que se necesiten na folla
%   de 'ecuaciones.m' e anotar os índices das variables que se usen

%   Paso 2) Añadir aquí por orden todas as variables iniciales que se
%   conozan tal e como se mostra no ejemplo separadas mediante comas ','
%   e entrecomilladas '"'
%   (O espaciado que se deixe non influye na ejecución do programa

Variables = ["q1", "q2", "H1", "H2"];

%   Paso 3) Ejecutar o programa



%   DISCLAIMER:
%   Unha vez se ejecute o programa esperar a que mostre si hai
%   algun error nos cálculos e si non hai nada, mostrará os valores
%   de todas as variables utilizadas, datos e incógnitas.
%   Asumimos que si algún dos datos se modifica durante o proceso
%   de resolución significará que houbo un fallo durante a resolución
%   ben por datos mal postos, por mal formato dos mismos, por un
%   error interno da función ou por ecuacións ou incógnitas insuficientes
%   ou mal postas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



















%   DISCLAIMER 2:   A partir de aquí sólo encontrarás código que non
%                   lle interesa a nadie, quedas advertido de que é
%                   unha parte non en exceso divertida e pode ser un
%                   tanto confusa e abrumadora si decides continuar





















%   DISCLAIMER 3:   Có que tes arriba bástache para facer todo o que
%                   necesitas, non é necesario que revises o meu código
%                   de baixa calidad para ver que son un programador
%                   máis ben mediocre










%   DISCLAIMER 4:   Eu aviseiche...













%   Recolle o vector dos valores das variables (en realidad, a nadie lle
%   interesa o nombre que lles poñas, púxeno solamente para que quedara
%   bonito e "user-friendly". Polo menos todo o "user-friendly" que pode
%   chegar a ser un programa de MATLAB)
x0 = zeros(max(size(Variables)));

%   Función para resolver o sistema de ecuacións (de verdá pensabas que me
%   iba a poñer a escribir código esotérico cando teño unha función que fai
%   todo o traballo por min?)
[x,feval,flag] = fsolve('ecuaciones',x0);





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%   De aquí para abaixo é para poñer as cousas bonitas e comprobar que non
%   hai ningún error, que si fixeches as cousas ben non debería haber nada
%   que axeitar, porque oye, NO MEU PROGRAMA NON ESTÁN OS TEUS FALLOS !

%   (Anyway, o meu correo por si rompe algo: alexandrocb2013@gmail.com)
%   (Arrepentireime de dar o meu correo? Posiblemente)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%   Concatena o nombre das variables có resultado obtido
msg = '';
msgError='';
for i=1:1:max(size(x))
    msg = [msg sprintf('%s:  %f\n',Variables(i),x(i))];
    %   Si a variable era unha incógnita igualada a 0 non continua evaluando
    if x0(i)==0
        continue
    end
    %   Checkea si existe unha variación entre as variables proporcionadas
    %   como dato e a resolución obtida
    if abs(x0(i)-x(i)) > 0.00001
        msgError = [msgError sprintf('Variable  %s = %f  modificada durante a resolucion\n',Variables(i,1),x0(i))];
    end
end
if isempty(msgError)
    %   Si non hai mensajes de error...
    msgError = sprintf('Resultado completado satisfactoriamente\n\n');
else
    %   Si hai mensajes de error...
    msgError = [msgError newline];
end

%   Concatena o posible mensaje de error cós resultados obtidos
msg = [msgError msg];

%   Mostra en pantalla e por consola o resultado final
msgbox(msg)
sprintf(msg)

%   Borra variables innecesarias
clear ans
clear i
clear msgError






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%   And "Thats all folks !!"


%   if like
%       considerFollowing();
%       considerGithubStarThisProject();
%       avisameSiAprobasConEstaLeria();
%       seeYou();
%   end