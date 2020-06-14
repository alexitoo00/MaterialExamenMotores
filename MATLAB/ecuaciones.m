function [f] = ecuaciones(x)
%   Añadir todas as ecuacions que se requieran aquí debaixo
%   e anotar cal é o índice de cada variable para escribir
%   por orden na folla titulada 'resolverSistemaEcuacions.m'

%   NOTA:   Escribe a función no formato f(x)=0, si non, non funcionará
%   
%   Ejemplo:    A función: / x^2 + y = 8 / escríbiríase da forma:
%               / f(x) = x^2 + y - 8 /, pasando todas as variables para un
%               lado do igual

%   NOTA 2: O espaciado que utilices non influirá na resolución das
%           ecuacións, así que síntete libre de escribir as fórmulas todas
%           xuntas ou separadas ben e bonitas

f(1) = x(1) - x(2);
f(2) = 2*x(1) - x(2) - 2;
f(3)= x(3) - x(4);

end
