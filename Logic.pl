:- consult('DB.pl').
encoding(utf16le).


% PREDICADO PRINCIPAL MEJORADO
% oraciones/4: Maneja tanto oraciones simples como compuestas
oraciones(S0, S, T0, T) :-
    oracion_compuesta(S0, S, T0, T),
    !.
oraciones(S0, S, T0, T) :-
    oracion_simple(S0, S, T0, T).



% ORACIÓN COMPUESTA: Una o más oraciones unidas por conjunciones
oracion_compuesta(S0, S, T0, T) :-
    oracion_simple(S0, S1, T0, T1),
    conjuncion_y_otra_oracion(S1, S, T1, T).

% DETECCIÓN DE CONJUNCIÓN Y SIGUIENTE ORACIÓN
conjuncion_y_otra_oracion(S0, S, T0, T) :-
    conj(S0, S1, T0, T1),
    oraciones(S1, S, T1, T).


conj([Conj_es | Res_es],Res_es,
     [Conj_in | Res_in],Res_in):-
    conjuncion(Conj_es, Conj_in).



% oracion/4: Analiza y traduce una oración completa para verbos con
% adjetivo
% Parámetros: S0, S - Listas diferencia para español
% (entrada/resto) T0, T - Listas diferencia para inglés (salida/resto)
oracion_simple(S0,S, T0,T):-
    sintagma_nominal(S0, T0,Per, Num, S1, T1),  % Analiza sintagma nominal (sujeto)
    sintagma_verbal(S1, T1, Per, Num, S,T).     % Analiza sintagma verbal (predicado)


% PREDICADO PRINCIPAL DE ORACIÓN
% oracion/4: Analiza y traduce una oración completa
% Parámetros:
%   S0, S - Listas diferencia para español (entrada/resto)
%   T0, T - Listas diferencia para inglés (salida/resto)
oracion_simple(S0,S, T0,T):-
    sintagma_nominal(S0, T0,Per, Num, S1, T1),  % Analiza sintagma nominal (sujeto)
    sintagma_verbal(S1, T1, Per, Num, S,T).     % Analiza sintagma verbal (predicado)

% oracion/4: Analiza y traduce una oración con solo sintagma nominal
% Parámetros:
%   S0, S - Listas diferencia para español (entrada/resto)
%   T0, T - Listas diferencia para inglés (salida/resto)
oracion_simple(S0,S, T0,T):-
    sintagma_nominal(S0, T0,_, _, S, T).     % Analiza sintagma verbal (predicado)




% oracion/4: Analiza y traduce una oración con solo sintagma verbal
% Parámetros:
%   S0, S - Listas diferencia para español (entrada/resto)
%   T0, T - Listas diferencia para inglés (salida/resto)
oracion_simple(S0,S, T0,T):-
    sintagma_verbal(S0, T0, _, _, S,T).     % Analiza sintagma verbal (predicado)




% PREDICADO DE TRADUCCIÓN SIMPLIFICADO
% traducir_es_ing/2: Versión simplificada para traducir español → inglés
% Parámetros: Oracion_es (lista español), Oracion_in (lista inglés)
traducir_es_ing(Oracion_es, Oracion_in) :-
    oraciones(Oracion_es, _, Oracion_in, _).



% SINTAGMA NOMINAL CON ADJETIVO (prioridad alta)
% sintagma_nominal/6: Analiza Det + Sust + Adj (español) → Det + Adj + Sust (inglés)
% Maneja el reordenamiento de adjetivos entre idiomas
sintagma_nominal([Det_es, Sus_es, Adj_es | Res_es],
                 [Det_in, Adj_in, Sus_in | Res_in],
                 3, Num, Res_es,Res_in):-
    determinante(Det_es, Det_in, Gen, Num),  % Traduce determinante
    sustantivo(Sus_es, Sus_in, Gen, Num),    % Traduce sustantivo
    adjetivo(Adj_es, Adj_in, Gen, Num),      % Traduce adjetivo
    !.  % Corte para evitar backtracking innecesario

% SINTAGMA NOMINAL SIMPLE
% sintagma_nominal/6: Analiza Det + Sust (sin adjetivo)
sintagma_nominal([Det_es, Sus_es | Res_es],
                 [Det_in, Sus_in | Res_in],
                 3, Num, Res_es,Res_in):-
    determinante(Det_es, Det_in, Gen, Num),  % Traduce determinante
    sustantivo(Sus_es, Sus_in, Gen, Num),    % Traduce sustantivo
    !.  % Corte para evitar backtracking

% SINTAGMA NOMINAL CON PRONOMBRE
% sintagma_nominal/6: Analiza pronombres como sujeto
sintagma_nominal([Pron_es|Res_es],[Pron_in|Res_in],Per,Num,Res_es, Res_in):-
    pronombre(Pron_es,Pron_in,Per,Num).      % Traduce pronombre

% SINTAGMA NOMINAL CON N�MERO COMO DETERMINANTE
% sintagma_nominal/6: Analiza Numero + Sustantivo
sintagma_nominal([Num_es, Sus_es | Res_es],
                 [Num_in, Sus_in | Res_in],
                 3, Num, Res_es, Res_in):-
    numero(Num_es, Num_in, Gen, _),          % Traduce n�mero
    sustantivo(Sus_es, Sus_in, Gen, Num),    % Traduce sustantivo
    !.



% SINTAGMA VERBAL CON OBJETO Y ADVERVIO
% sintagma_verbal/6: Analiza Verbo + Sintagma Nominal (objeto)
sintagma_verbal([Verb_es, Ad_es | Res_es],
                [Verb_in, Ad_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo(Verb_es, Verb_in, Per, Num),       % Traduce verbo
    sintagma_nominal(Res_es, Res_in,_, Num, _, _),  % Analiza objeto
    adverbio(Ad_es, Ad_in),
    !.  % Corte para priorizar esta regla

% SINTAGMA VERBAL SIN OBJETO PERO CON ADVERBIO
% sintagma_verbal/6: Analiza solo el verbo (sin objeto)
sintagma_verbal([Verb_es, Adj_es| Res_es],
                [Verb_in, Adj_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo(Verb_es, Verb_in, Per, Num),       % Traduce verbo solamente
    adverbio(Adj_es, Adj_in).




% SINTAGMA VERBAL CON OBJETO
% sintagma_verbal/6: Analiza Verbo + Sintagma Nominal (objeto)
sintagma_verbal([Verb_es| Res_es],
                [Verb_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo(Verb_es, Verb_in, Per, Num),       % Traduce verbo
    sintagma_nominal(Res_es, Res_in,_, Num, _, _),  % Analiza objeto
    !.  % Corte para priorizar esta regla

% SINTAGMA VERBAL SIN OBJETO
% sintagma_verbal/6: Analiza solo el verbo (sin objeto)
sintagma_verbal([Verb_es| Res_es],
                [Verb_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo(Verb_es, Verb_in, Per, Num).       % Traduce verbo solamente




