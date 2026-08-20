clf;
clc;

Ubicacion1 = [2 0 0 1]'; 
Ubicacion2 = [5 0 0 1]'; 
Ubicacion3 = [5 3 0 1]'; 
Ubicacion4 = [2 3 0 1]'; 

saltos_y = linspace(0, 4, 20);
for i = 1:length(saltos_y)

    clf;

    line([0 10], [0 0], 'LineWidth', 1, 'Color', 'red');    
    line([0 0], [0 10], 'LineWidth', 1, 'Color', 'blue'); 
    axis([-1 10 -1 10]);
    grid on;
    hold on;

    Punto1 = Ubicacion1;
    Punto2 = Ubicacion2;
    Punto3 = Ubicacion3;
    Punto4 = Ubicacion4;

    altura_actual = saltos_y(i);
    Punto1(2) = Punto1(2) + altura_actual;
    Punto2(2) = Punto2(2) + altura_actual;
    Punto3(2) = Punto3(2) + altura_actual;
    Punto4(2) = Punto4(2) + altura_actual;

    line([Punto1(1), Punto2(1)], [Punto1(2), Punto2(2)], 'LineWidth', 1, 'Color', 'blue'); 
    line([Punto2(1), Punto3(1)], [Punto2(2), Punto3(2)], 'LineWidth', 1, 'Color', 'blue'); 
    line([Punto3(1), Punto4(1)], [Punto3(2), Punto4(2)], 'LineWidth', 1, 'Color', 'blue'); 
    line([Punto4(1), Punto1(1)], [Punto4(2), Punto1(2)], 'LineWidth', 1, 'Color', 'blue'); 


    scatter(Punto1(1), Punto1(2), 20, 'black', 'filled');
    scatter(Punto2(1), Punto2(2), 20, 'black', 'filled');
    scatter(Punto3(1), Punto3(2), 20, 'black', 'filled');
    scatter(Punto4(1), Punto4(2), 20, 'black', 'filled');


    pause(0.05);

end