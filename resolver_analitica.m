% PROYECTO FIN DE CARRERA - Jorge L. Vega Valle
% Fichero  resolver_analitica.m

% En este fichero es donde esta el control sobre el
% tipo de problema que el usuario desea resolver:
% puede ser un modelo de colas del tipo M/M/...
% o una red de Jackson abierta o cerrada.

close(1);

% Se crea una nueva ventana

figure('Units', 'normalized',...
		'Position', [0.05 0.05 0.9 0.9],...
        'MenuBar', 'none', ...
        'name', 'Resolucion analitica: Eleccion del modelo de colas', ...
        'NumberTitle', 'off', ...
        'resize','off');

frame_resolver_analitica_1 = uicontrol(gcf, 'Style', 'Frame', ...
   'Units', 'normalized', ...
   'BackgroundColor', [.702 .702 .702],...
   'Position', [0.2 0.28 0.6 0.65]);

frame_resolver_analitica_2 = uicontrol(gcf, 'Style', 'Frame', ...
   'Units', 'normalized', ...
   'BackgroundColor', [.60 .60 .60],...
   'Position', [0.34 0.76 0.28 0.11]);

text_resolver_analitica = uicontrol(gcf, 'Style', 'Text', ...
   'String', 'Elegir Modelo de Colas', ...
   'Units', 'normalized', ...
   'Position', [0.38 0.8 0.2 0.03], ...
   'FontUnits', 'normalized',...
   'FontSize', 0.7, ...
   'BackgroundColor', [.6 .6 .6],...
   'HorizontalAlignment', 'Center');

% El usuario selecciona en un popup el tipo
% de problema que desea resolver

popup_resolver_analitica = uicontrol(gcf, 'Style', 'PopupMenu', ...
   'String', 'Modelo M/M/1|Modelo M/M/s|Modelo M/M/1/K|Modelo M/M/s/K|Modelo M/M/1/inf/H|Modelo M/M/s/inf/H|Modelo M/M/s/inf/H con Y repuestos|Modelo M/M/inf|Redes de Jackson abiertas|Redes de Jackson cerradas',...
   'Units', 'normalized',...
   'Value', 1 , ...
   'Position', [0.3 0.55 0.38 0.1], ...
   'FontUnits', 'normalized',...
   'FontWeight', 'bold', ...
   'FontSize', 0.2, ...
   'BackgroundColor', [.702 .702 .702], ...
   'HorizontalAlignment', 'Center', ...
   'Callback', 'popup');



% Al hacer click en el boton siguiente, se ejecuta
% el codigo existente en el fichero entrada.m


boton_resolver_analitica = uicontrol(gcf, 'Style', 'Pushbutton',...
   'String', '<< Anterior', 'Value', 0, ...
   'Units', 'normalized', ...
   'Position', [0.18 0.1 0.2 0.1], ...
   'FontUnits', 'normalized',...
   'FontWeight', 'bold', ...
   'FontSize', 0.2, ...
   'Callback', 'aquas');

boton_resolver_analitica_2 = uicontrol(gcf, 'Style', 'Pushbutton',...
   'String', 'Siguiente >>', 'Value', 0, ...
   'Units', 'normalized', ...
   'Position', [0.58 0.1 0.2 0.1], ...
   'FontUnits', 'normalized',...
   'FontWeight', 'bold', ...
   'FontSize', 0.2, ...
   'Callback', 'entrada');


