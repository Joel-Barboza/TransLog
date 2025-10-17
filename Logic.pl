:- consult('DB.pl').

oracion(S0,S, T0,T):-
    sintagma_nominal(S0, T0,Per, Num, S1, T1),
    sintagma_verbal(S1, T1, Per, Num, S,T).

traducir_es_ing(Oracion_es, Oracion_in) :-
    oracion(Oracion_es, _, Oracion_in, _).


sintagma_nominal([Det_es, Sus_es, Adj_es | Res_es],
                 [Det_in, Adj_in, Sus_in | Res_in],
                 3, Num, Res_es,Res_in):-
    determinante(Det_es, Det_in, Gen, Num),
    sustantivo(Sus_es, Sus_in, Gen, Num),
    adjetivo(Adj_es, Adj_in, Gen, Num),
    !.


% Determinante + Sustantivo
sintagma_nominal([Det_es, Sus_es | Res_es],
                 [Det_in, Sus_in | Res_in],
                 3, Num, Res_es,Res_in):-
    determinante(Det_es, Det_in, Gen, Num),
    sustantivo(Sus_es, Sus_in, Gen, Num),
    !.


sintagma_nominal([Pron_es|Res_es],[Pron_in|Res_in],Per,Num,Res_es, Res_in):-
    pronombre(Pron_es,Pron_in,Per,Num).


sintagma_verbal([Verb_es| Res_es],
                [Verb_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo(Verb_es, Verb_in, Per, Num),
    sintagma_nominal(Res_es, Res_in,_, Num, _, _),
    !.

sintagma_verbal([Verb_es| Res_es],
                [Verb_in | Res_in],
                Per, Num, Res_es, Res_in):-
    verbo(Verb_es, Verb_in, Per, Num).

