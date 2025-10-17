:- consult('Logic.pl').

% TRADUCCIÓN ESPAÑOL -> INGLÉS
traducir_es_en(OracionEs) :-
    separar(OracionEs, PalabrasEs),
    (   oracion(PalabrasEs, _, PalabrasEn, _)
    ->  lista_a_string(PalabrasEn, Traduccion),
        write('Traducción: '), write(Traduccion), nl,!
    ;   write('No entendí la oración.'), nl
    ).


% TRADUCCIÓN INGLÉS -> ESPAÑOL
traducir_en_es(OracionEn) :-
    separar(OracionEn, PalabrasEn),
    (   oracion(PalabrasEs, _, PalabrasEn, _)
    ->  lista_a_string(PalabrasEs, Traduccion),
        write('Traducción: '), write(Traduccion), nl,!
    ;   write('No entendí la oración.'), nl
    ).


% Español-ingles
transLogEI :-
    write('TransLogEI> '), nl,
    read_line_to_string(user_input, Oracion),
    (Oracion == 'salir' -> true;
     traducir_es_en(Oracion),
     transLogEI).

%ingles-español
transLogIE :-
    write('TransLogIE> '), nl,
    read_line_to_string(user_input, Oracion),
    (Oracion == 'quit' -> true;
     traducir_en_es(Oracion),
     transLogIE).

% la traduccion se devuelve como una lista de palabras
lista_a_string(Lista, String) :-
    maplist(atom_string, Lista, Strings),
    atomic_list_concat(Strings, ' ', String).


% separacion de palabras
separar(Oracion, Palabras) :-
    split_string(Oracion, " ", "", Strings),
    maplist(atom_string, Palabras, Strings).
