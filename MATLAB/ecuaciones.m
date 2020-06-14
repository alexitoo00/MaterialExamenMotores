function [f] = ecuaciones(x)
%   Añadir todas as ecuacions que se requieran aquí debaixo
%   e anotar cal é o índice de cada variable para escribir
%   por orden na folla titulada 'resolverSistemaEcuacions.m'
%   substituindo donde sea necesario os valores dos datos conocidos

%   NOTA:   Escribe a función no formato f(x)=0, si non, non funcionará
%   
%   Ejemplo:    A función: / x^2 + y = 8 / escríbiríase da forma:
%               / f(x) = x^2 + y - 8 /, pasando todas as variables para un
%               lado do igual

%   NOTA 2: O espaciado que utilices non influirá na resolución das
%           ecuacións, así que síntete libre de escribir as fórmulas todas
%           xuntas ou separadas ben e bonitas

%   RECOMENDACIÓN:  Anota á dereita da ecuación precedida por un símbolo
%                   de '%' a ecuación que representa para unha
%                   visualización e comprensión máis clara do sistema

f(1) = x(1) + x(2)-20;              %   q1 + q2 = Q
f(2) = x(3) - x(4);                 %   H1 = H2
f(3)= x(3) -2*(63-0.375*x(1)^2);    %   H1 = 2 * (63 - 0.375 * q1^2)
f(4)= x(4) - 63 +0.375*(x(2)^2);    %   H2 = 63 - 0.375 * q2^2

end
