:- consult('DB.pl').
encoding(utf16le).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ORACIONES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% oraciones/4: Maneja tanto oraciones simples como compuestas y
% preguntas
oraciones(S0, S, T0, T) :-
    oracion_compuesta(S0, S, T0, T),
    !.
oraciones(S0, S, T0, T) :-
    oracion_simple(S0, S, T0, T).


% ORACIÓN COMPUESTA: Una o más oraciones unidas por conjunciones
oracion_compuesta(S0, S, T0, T) :-
    oracion_simple(S0, S1, T0, T1),
    conjuncion_y_otra_oracion(S1, S, T1, T).

% oracion/4: Analiza y traduce una oración completa para verbos con
% adjetivo
oracion_simple(S0,S, T0,T):-
    sintagma_nominal(S0, T0,Per, Num, S1, T1),
    sintagma_verbal(S1, T1, Per, Num, S,T).


% oracion/4: Analiza y traduce una oración completa
oracion_simple(S0,S, T0,T):-
    sintagma_nominal(S0, T0,Per, Num, S1, T1),
    sintagma_verbal(S1, T1, Per, Num, S,T).

% oracion/4: Analiza y traduce una oración con solo sintagma nominal
oracion_simple(S0,S, T0,T):-
    sintagma_nominal(S0, T0,_, _, S, T).

% oracion/4: Analiza y traduce una oración con solo sintagma verbal
oracion_simple(S0,S, T0,T):-
    sintagma_verbal(S0, T0, _, _, S,T).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CONJUNCIONES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% separa dos oraciones al encontrar una conjuncion
conjuncion_y_otra_oracion(S0, S, T0, T) :-
    conj(S0, S1, T0, T1),
    oraciones(S1, S, T1, T).

conj([Conj_es | Res_es],Res_es,
     [Conj_in | Res_in],Res_in):-
    conjuncion(Conj_es, Conj_in).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Sustantivos y sinonimos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% encuentra_sinonimo/4: Encuentra un sustantivo o sus sinónimos
encuentra_sinonimo(Palabra, Traduccion, Genero, Numero) :-
    sustantivo(Palabra, Traduccion, _, Genero, Numero).

encuentra_sinonimo(Palabra, Traduccion, Genero, Numero) :-
    sustantivo(_, _, Sinonimos, Genero, Numero),
    Sinonimos \= [],  % Asegura que hay sinónimos
    member(ParSinonimo, Sinonimos),
    ParSinonimo = [Palabra, Traduccion].


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SINTAGMA NOMINAL
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% sintagma_nominal/6: Analiza Det + Sust + Adj (español) → Det + Adj + Sust (inglés)
sintagma_nominal([Det_es, Sus_es, Adj_es | Res_es],
                 [Det_in, Adj_in, Sus_in | Res_in],
                 3, Num, Res_es,Res_in):-
    determinante(Det_es, Det_in, Gen, Num),
    encuentra_sinonimo(Sus_es, Sus_in, Gen, Num),    % sustantivo o un sinonimo
    adjetivo(Adj_es, Adj_in, Gen, Num),
    !.

% sintagma_nominal/6: Analiza Sust + Adj (español) → Adj + Sust (ingles)
sintagma_nominal([Sus_es, Adj_es | Res_es],
                 [Adj_in, Sus_in | Res_in],
                 3, Num, Res_es,Res_in):-
    encuentra_sinonimo(Sus_es, Sus_in, Gen, Num),    % sustantivo o un sinonimo
    adjetivo(Adj_es, Adj_in, Gen, Num),
    !.
% sintagma_nominal/6: sintagma_nominal con solo sustantivo
sintagma_nominal([Sus_es| Res_es],
                 [Sus_in | Res_in],
                 3, Num, Res_es,Res_in):-
    encuentra_sinonimo(Sus_es, Sus_in, _, Num),!.


% sintagma_nominal/6: Analiza Det + Sust (sin adjetivo)
sintagma_nominal([Det_es, Sus_es | Res_es],
                 [Det_in, Sus_in | Res_in],
                 3, Num, Res_es,Res_in):-
    determinante(Det_es, Det_in, Gen, Num),
    encuentra_sinonimo(Sus_es, Sus_in, Gen, Num),    % sustantivo o un sinonimo
    !.

% sintagma_nominal/6: Analiza pronombres como sujeto
sintagma_nominal([Pron_es|Res_es],[Pron_in|Res_in],Per,Num,Res_es, Res_in):-
    pronombre(Pron_es,Pron_in,Per,Num).

% sintagma_nominal/6: Analiza Numero + Sustantivo
sintagma_nominal([Num_es, Sus_es | Res_es],
                 [Num_in, Sus_in | Res_in],
                 3, _, Res_es, Res_in):-
    numero(Num_es, Num_in, Gen, _),
    encuentra_sinonimo(Sus_es, Sus_in, Gen, _),   % sustantivo o un sinonimo
    !.



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SINTAGMA VERBAL
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Auxiliar negativo según persona y número
auxiliar_negativo(3, singular, does).
auxiliar_negativo(_, _, do).

% REGLAS DE NEGACIÓN - ALTA PRIORIDAD (colocar antes de otras reglas de sintagma_verbal)

% Afirmacion para el verbo "be" (estar)
sintagma_verbal([Verb_es, Ger_es | Res_es],
                [Verb_in, Ger_in | Res_in],
                Per, Num, Res_es, Res_in) :-
    verbo_be(Verb_es, Verb_in, Per, Num),
    gerundio(Ger_es, Ger_in),
    !.


% Negación para el verbo "be" (estar)
sintagma_verbal([no, Verb_es, Ger_es | Res_es],
                [Verb_in, not, Ger_in | Res_in],
                Per, Num, Res_es, Res_in) :-
    verbo_be(Verb_es, Verb_in, Per, Num),
    gerundio(Ger_es, Ger_in),
    !.

% Negación para verbos regulares
sintagma_verbal([Adv_es, Verb_es | Res_es],
                [AuxNeg, Adv_in, Verb_in | Res_in],
                Per, Num, Res_es, Res_in) :-
    verbo(Verb_es, Verb_in, 2, singular),
    auxiliar_negativo(Per, Num, AuxNeg),
    adverbio(Adv_es, Adv_in),
    !.


% sintagma_verbal/6: Analiza Verbo + Sintagma Nominal (objeto)
sintagma_verbal([Verb_es, Ad_es | Res_es],
                [Verb_in, Ad_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo(Verb_es, Verb_in, Per, Num),
    sintagma_nominal(Res_es, Res_in,_, _, _, _),
    adverbio(Ad_es, Ad_in),
    !.

% sintagma_verbal/6: Analiza solo el verbo (sin objeto)
sintagma_verbal([Verb_es, Adj_es| Res_es],
                [Verb_in, Adj_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo(Verb_es, Verb_in, Per, Num),
    adverbio(Adj_es, Adj_in), !.

% sintagma_verbal/6: ser/estar + adjetivo
sintagma_verbal([Verb_es, Adj_es| Res_es],
                [Verb_in, Adj_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo_be(Verb_es, Verb_in, Per, Num),
    adjetivo(Adj_es, Adj_in, _, Num), !.


% sintagma_verbal/6: Analiza Verbo + Sintagma Nominal (objeto)
sintagma_verbal([Verb_es| Res_es],
                [Verb_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo(Verb_es, Verb_in, Per, Num),
    sintagma_nominal(Res_es, Res_in,_, _, _, _),
    !.

% sintagma_verbal/6: Analiza solo el verbo (sin objeto)
sintagma_verbal([Verb_es| Res_es],
                [Verb_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo(Verb_es, Verb_in, Per, Num).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% NUMEROS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% REGLA PARA N�MEROS DEL 21-29 (veinti + unidad)
numero(NumEs, NumEn, Gen, _) :-
    between(1, 9, Unidad),
    unidad_numero(Unidad, UnidadEs, UnidadEn, _),
    atom_concat('veinti', UnidadEs, NumEs),
    (Unidad = 1 ->
        (Gen = masculino, atom_concat('twenty_one', '', NumEn);
         Gen = femenino, atom_concat('twenty_one', '', NumEn))
    ;
        atom_concat('twenty_', UnidadEn, NumEn)
    ).

% REGLA PARA N�MEROS DEL 31-99 (decena + "y" + unidad)
numero(NumEs, NumEn, Gen, _) :-
    between(3, 9, DecenaIdx),
    decena_numero(DecenaIdx, DecenaEs, DecenaEn),
    between(1, 9, Unidad),
    unidad_numero(Unidad, UnidadEs, UnidadEn, _),
    atom_concat(DecenaEs, '_y_', TempEs),
    atom_concat(TempEs, UnidadEs, NumEs),
    (Unidad = 1 ->
        (Gen = masculino, atom_concat(DecenaEn, '_one', NumEn);
         Gen = femenino, atom_concat(DecenaEn, '_one', NumEn))
    ;
        atom_concat(DecenaEn, '_', TempEn),
        atom_concat(TempEn, UnidadEn, NumEn)
    ).

% REGLA PARA DECENAS EXACTAS (20, 30, 40, etc.)
numero(DecenaEs, DecenaEn, _, _) :-
    between(2, 9, DecenaIdx),
    decena_numero(DecenaIdx, DecenaEs, DecenaEn).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% REGLAS PARA PREGUNTAS SIMPLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Pregunta: ¿Quién(es) + verbo?
oracion_pregunta([Preg|Resto], [], [TraduccionPreg|TraduccionResto], []) :-
    pregunta(Preg, TraduccionPreg),
    sintagma_verbal(Resto, TraduccionResto, _, _, [], []).

% Pregunta: ¿Qué/Dónde/Cómo + verbo be + sujeto?
oracion_pregunta([Preg, Verbo|Resto], [], [TraduccionPreg, TraduccionVerbo|TraduccionResto], []) :-
    pregunta(Preg, TraduccionPreg),
    verbo_be(Verbo, TraduccionVerbo, Per, Num),
    sintagma_nominal(Resto, TraduccionResto, Per, Num, [], []).

% Pregunta: ¿Qué/Dónde/Cómo + do/does + sujeto + verbo?
oracion_pregunta([Preg|Resto], [], [TraduccionPreg, Aux|TraduccionCompleta], []) :-
    pregunta(Preg, TraduccionPreg),
    sintagma_nominal(Resto, SN_trad, Per, Num, SV_es, []),
    (Per = 3, Num = singular -> Aux = does; Aux = do),
    sintagma_verbal(SV_es, SV_trad, Per, Num, [], []),
    append(SN_trad, SV_trad, TraduccionCompleta).

% Agrega esto al final de la sección de PREGUNTAS en Logic.pl:

% Pregunta: ¿Qué + verbo? (sin sujeto explícito)
oracion_pregunta([Preg, Verbo|Resto], [], [TraduccionPreg|TraduccionResto], []) :-
    pregunta(Preg, TraduccionPreg),
    verbo(Verbo, TraduccionVerbo, Per, Num),
    sintagma_nominal(Resto, ObjTrad, _, _, [], []),
    (Per = 3, Num = singular -> Aux = does; Aux = do),
    append([Aux, TraduccionVerbo], ObjTrad, TraduccionResto).
