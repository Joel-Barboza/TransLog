:- consult('Logic.pl').
encoding(utf16le).

% traducir_es_ing/2: Version simplificada para traducir español → ingle
traducir_es_ing(Oracion_es, Oracion_in) :-
    oraciones(Oracion_es, _, Oracion_in, _).


% TRADUCCION ESPAÑOL -> INGLES
% traducir_es_en/1: Traduce una oracion del español al ingles
traducir_es_en(OracionEs) :-
    separar(OracionEs, PalabrasEs),          % Convierte string a lista de palabras
    (   oraciones(PalabrasEs, _, PalabrasEn, _)  % Llama al analizador sintactico
    ->  lista_a_string(PalabrasEn, Traduccion),  % Convierte lista a string
        write('Traduccion: '), write(Traduccion), nl,! % Muestra resultado
    ;   write('No entendí la oracion.'), nl          % Manejo de error
    ).

% TRADUCCION INGLES -> ESPAÑOL
% traducir_en_es/1: Traduce una oracion del ingles al español
traducir_en_es(OracionEn) :-
    separar(OracionEn, PalabrasEn),          % Convierte string a lista de palabras
    (   oraciones(PalabrasEs, _, PalabrasEn, _)  % Llama al analizador sintactico
    ->  lista_a_string(PalabrasEs, Traduccion),  % Convierte lista a string
        write('Traduccion: '), write(Traduccion), nl,! % Muestra resultado
    ;   write('No entendí la oracion.'), nl          % Manejo de error
    ).

% MODO INTERACTIVO ESPAÑOL-INGLES
% transLogEI/0: Bucle interactivo para traduccion español → ingles
transLogEI :-
    write('TransLogEI> '), nl,
    read_line_to_string(user_input, Oracion),
    (Oracion == "salir" -> true;
     traducir_es_en(Oracion),
     transLogEI).                            % Llama recursivamente

% MODO INTERACTIVO INGLES-ESPAÑOL
% transLogIE/0: Bucle interactivo para traduccion ingles → español
% Finaliza cuando el usuario escribe "quit"
transLogIE :-
    write('TransLogIE> '), nl,
    read_line_to_string(user_input, Oracion),
    (Oracion == "quit" -> true;
     traducir_en_es(Oracion),
     transLogIE).                            % Llama recursivamente

% CONVERSION DE LISTA A STRING
% lista_a_string/2: Convierte una lista de atomos a un string unido por espacios
lista_a_string(Lista, String) :-
    maplist(atom_string, Lista, Strings),    % Convierte atomos a strings
    atomic_list_concat(Strings, ' ', String). % Une strings con espacios

% SEPARACION DE PALABRAS
% separar/2: Divide un string en una lista de palabras (atomos)
separar(Oracion, Palabras) :-
    split_string(Oracion, " ", "", Strings),  % Divide el string por espacios
    maplist(atom_string, Palabras, Strings). % Convierte strings a atomos


% PREDICADO PARA MOSTRAR N�MEROS DISPONIBLES
% mostrar_numeros/0: Muestra todos los n�meros del 0 al 15 en ambos idiomas
mostrar_numeros :-
    writeln('=== N�MEROS DEL 0 AL 15 ==='),
    writeln('Espa�ol    -> Ingl�s'),
    forall(numero(Es, En, _, _),
           format('~w       -> ~w~n', [Es, En])).

% PREDICADO PARA MOSTRAR N�MEROS DISPONIBLES
% mostrar_numeros/0: Muestra todos los n�meros del 0 al 99 en ambos idiomas
mostrar_numeros :-
    writeln('=== N�MEROS DEL 0 AL 99 ==='),
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
% Probar preguntas
probar_preguntas :-
    writeln('=== PROBANDO PREGUNTAS ==='),
    traducir_es_en("quienes beben agua"),
    traducir_es_en("que come el niño"),
    traducir_es_en("donde esta la biblioteca"),
    traducir_es_en("como estas tu").
