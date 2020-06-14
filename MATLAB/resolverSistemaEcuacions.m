close all
clear
clc



x0=[1,2,0,0];
[x,feval,flag]=fsolve('ecuaciones',x0);

msg='';
for i=1:1:max(size(x))
    msg=[msg sprintf('Numero %i:  %f\n',i,x(i))];
end
msgError='';
for i=1:1:max(size(feval))
    if x0(i)==0
        continue
    end
    if abs(x0(i)-x(i))>0.00001
        msgError=[msgError sprintf('Variable  %i = %f  modificada durante a resolucion\n',i,x0(i))];
    end
end
if isempty(msgError)
    msgError=sprintf('Resultado completado satisfactoriamente\n\n');    
else
    msgError=[msgError newline];
end
msg=[msgError msg];
msgbox(msg)
sprintf(msg)
