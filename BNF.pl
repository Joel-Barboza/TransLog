:- consult('Logic.pl').
encoding(utf16le).

% TRADUCCIÓN ESPAÑOL -> INGLÉS
% traducir_es_en/1: Traduce una oración del español al inglés
% Parámetro: OracionEs (string) - Oración en español a traducir
traducir_es_en(OracionEs) :-
    separar(OracionEs, PalabrasEs),          % Convierte string a lista de palabras
    (   oraciones(PalabrasEs, _, PalabrasEn, _)  % Llama al analizador sintáctico
    ->  lista_a_string(PalabrasEn, Traduccion), % Convierte lista a string
        write('Traducción: '), write(Traduccion), nl,! % Muestra resultado
    ;   write('No entendí la oración.'), nl          % Manejo de error
    ).

% TRADUCCIÓN INGLÉS -> ESPAÑOL
% traducir_en_es/1: Traduce una oración del inglés al español
% Parámetro: OracionEn (string) - Oración en inglés a traducir
traducir_en_es(OracionEn) :-
    separar(OracionEn, PalabrasEn),          % Convierte string a lista de palabras
    (   oraciones(PalabrasEs, _, PalabrasEn, _)  % Llama al analizador sintáctico
    ->  lista_a_string(PalabrasEs, Traduccion), % Convierte lista a string
        write('Traducción: '), write(Traduccion), nl,! % Muestra resultado
    ;   write('No entendí la oración.'), nl          % Manejo de error
    ).

% MODO INTERACTIVO ESPAÑOL-INGLÉS
% transLogEI/0: Bucle interactivo para traducción español → inglés
% Finaliza cuando el usuario escribe "salir"
transLogEI :-
    write('TransLogEI> '), nl,
    read_line_to_string(user_input, Oracion), % Lee entrada del usuario
    (Oracion == 'salir' -> true;             % Condición de salida
     traducir_es_en(Oracion),                % Procesa la traducción
     transLogEI).                            % Llama recursivamente

% MODO INTERACTIVO INGLÉS-ESPAÑOL
% transLogIE/0: Bucle interactivo para traducción inglés → español
% Finaliza cuando el usuario escribe "quit"
transLogIE :-
    write('TransLogIE> '), nl,
    read_line_to_string(user_input, Oracion), % Lee entrada del usuario
    (Oracion == 'quit' -> true;              % Condición de salida
     traducir_en_es(Oracion),                % Procesa la traducción
     transLogIE).                            % Llama recursivamente

% CONVERSIÓN DE LISTA A STRING
% lista_a_string/2: Convierte una lista de átomos a un string unido por espacios
% Parámetros: Lista (lista de átomos), String (string resultante)
lista_a_string(Lista, String) :-
    maplist(atom_string, Lista, Strings),    % Convierte átomos a strings
    atomic_list_concat(Strings, ' ', String). % Une strings con espacios

% SEPARACIÓN DE PALABRAS
% separar/2: Divide un string en una lista de palabras (átomos)
% Parámetros: Oracion (string), Palabras (lista de átomos)
separar(Oracion, Palabras) :-
    split_string(Oracion, " ", "", Strings),  % Divide el string por espacios
    maplist(atom_string, Palabras, Strings). % Convierte strings a átomos
% PREDICADO PARA MOSTRAR N�MEROS DISPONIBLES
% mostrar_numeros/0: Muestra todos los n�meros del 0 al 15 en ambos idiomas
mostrar_numeros :-
    writeln('=== N�MEROS DEL 0 AL 15 ==='),
    writeln('Espa�ol    -> Ingl�s'),
    forall(numero(Es, En, _, _),
           format('~w       -> ~w~n', [Es, En])).

% PREDICADO PARA TRADUCIR SOLO N�MEROS
% traducir_numero/2: Traduce un n�mero entre espa�ol e ingl�s
traducir_numero(Numero, Traduccion) :-
    (   numero(Numero, Traduccion, _, _)
    ;   numero(Traduccion, Numero, _, _)
    ).

% EJEMPLOS DE USO CON N�MEROS
% probar_numeros/0: Prueba traducciones con n�meros
probar_numeros :-
    writeln('=== PRUEBAS CON N�MEROS ==='),
    ejemplos_numeros(Ejemplos),
    forall(member(Espanol-Ingles, Ejemplos), (
        format('Espa�ol: ~w~n', [Espanol]),
        ( traducir_es_en(Espanol) ->
            format('Esperado: ~w~n', [Ingles])
        ;
            writeln('No se pudo traducir')
        ),
        nl
    )).

ejemplos_numeros([
    'tres manzanas',
    'cinco libros',
    'una casa',
    'dos mujeres',
    'diez estudiantes',
    'quince p�jaros'
]).
% PREDICADO PARA MOSTRAR N�MEROS DISPONIBLES
% mostrar_numeros/0: Muestra todos los n�meros del 0 al 99 en ambos idiomas
mostrar_numeros :-
    writeln('=== N�MEROS DEL 0 AL 99 ==='),
    writeln('Espa�ol    -> Ingl�s'),
    forall(numero(Es, En, _, _),
           format('~w       -> ~w~n', [Es, En])).
% EJEMPLOS DE USO CON N�MEROS EXTENDIDOS
probar_numeros_extendidos :-
    writeln('=== PRUEBAS CON N�MEROS EXTENDIDOS ==='),
    ejemplos_numeros_extendidos(Ejemplos),
    forall(member(Espanol-Ingles, Ejemplos), (
        format('Espa�ol: ~w~n', [Espanol]),
        ( traducir_es_en(Espanol) ->
            format('Esperado: ~w~n', [Ingles])
        ;
            writeln('No se pudo traducir')
        ),
        nl
    )).

ejemplos_numeros_extendidos([
    'diecis�is manzanas',
    'veinti�n libros',
    'veintiuna casas',
    'treinta y cinco estudiantes',
    'cincuenta y ocho p�jaros',
    'setenta y dos mujeres'
]).
