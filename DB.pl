encoding(utf16le).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% DETERMINANTES: determinante(Español, Inglés, Género, Número)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Artículos definidos
determinante(el, the, masculino, singular).
determinante(la, the, femenino, singular).
determinante(los, the, masculino, plural).
determinante(las, the, femenino, plural).
determinante(lo, the, neutro, singular).

% Artículos indefinidos
determinante(un, a, masculino, singular).
determinante(una, a, femenino, singular).
determinante(unos, some, masculino, plural).
determinante(unas, some, femenino, plural).

% Demostrativos
determinante(este, this, masculino, singular).
determinante(esta, this, femenino, singular).
determinante(estos, these, masculino, plural).
determinante(estas, these, femenino, plural).
determinante(ese, that, masculino, singular).
determinante(esa, that, femenino, singular).
determinante(esos, those, masculino, plural).
determinante(esas, those, femenino, plural).
determinante(aquel, that, masculino, singular).
determinante(aquella, that, femenino, singular).

% Posesivos
determinante(mi, my, _, singular).
determinante(mis, my, _, plural).
determinante(tu, your, _, singular).
determinante(tus, your, _, plural).
determinante(su, his, _, singular).  % también her, its, your formal
determinante(sus, his, _, plural).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SUSTANTIVOS: sustantivo(Español, Inglés, Género, Número)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Personas
sustantivo(hombre, man, masculino, singular).
sustantivo(mujer, woman, femenino, singular).
sustantivo(niño, boy, masculino, singular).
sustantivo(niña, girl, femenino, singular).
sustantivo(amigo, friend, masculino, singular).
sustantivo(amiga, friend, femenino, singular).
sustantivo(profesor, teacher, masculino, singular).
sustantivo(profesora, teacher, femenino, singular).
sustantivo(doctor, doctor, masculino, singular).
sustantivo(doctora, doctor, femenino, singular).
sustantivo(estudiante, student, masculino, singular).
sustantivo(estudiante, student, femenino, singular).
sustantivo(padre, father, masculino, singular).
sustantivo(madre, mother, femenino, singular).
sustantivo(hermano, brother, masculino, singular).
sustantivo(hermana, sister, femenino, singular).

% Plurales de personas
sustantivo(hombres, men, masculino, plural).
sustantivo(mujeres, women, femenino, plural).
sustantivo(niños, boys, masculino, plural).
sustantivo(niñas, girls, femenino, plural).
sustantivo(amigos, friends, masculino, plural).
sustantivo(amigas, friends, femenino, plural).

% Animales
sustantivo(perro, dog, masculino, singular).
sustantivo(perra, dog, femenino, singular).
sustantivo(gato, cat, masculino, singular).
sustantivo(gata, cat, femenino, singular).
sustantivo(pájaro, bird, masculino, singular).
sustantivo(caballo, horse, masculino, singular).
sustantivo(pez, fish, masculino, singular).
sustantivo(vaca, cow, femenino, singular).
sustantivo(cerdo, pig, masculino, singular).
% Animales plurales
sustantivo(perros, dogs, masculino, plural).
sustantivo(gatos, cats, masculino, plural).
sustantivo(pájaros, birds, masculino, plural).
sustantivo(caballos, horses, masculino, plural).
sustantivo(peces, fishes, masculino, plural).
sustantivo(vacas, cows, femenino, plural).
sustantivo(cerdos, pigs, masculino, plural).


% Alimentos
sustantivo(manzana, apple, femenino, singular).
sustantivo(pan, bread, masculino, singular).
sustantivo(agua, water, femenino, singular).
sustantivo(leche, milk, femenino, singular).
sustantivo(carne, meat, femenino, singular).
sustantivo(pescado, fish, masculino, singular).
sustantivo(arroz, rice, masculino, singular).
sustantivo(pasta, pasta, femenino, singular).
sustantivo(queso, cheese, masculino, singular).
sustantivo(fruta, fruit, femenino, singular).
sustantivo(verdura, vegetable, femenino, singular).
sustantivo(jugo, juice, masculino, singular).
sustantivo(café, coffee, masculino, singular).
sustantivo(té, tea, masculino, singular).

% Plurales de alimentos
sustantivo(manzanas, apples, femenino, plural).
sustantivo(panes, breads, masculino, plural).
sustantivo(carnes, meats, femenino, plural).

% Objetos y lugares
sustantivo(casa, house, femenino, singular).
sustantivo(coche, car, masculino, singular).
sustantivo(carro, car, masculino, singular).
sustantivo(libro, book, masculino, singular).
sustantivo(mesa, table, femenino, singular).
sustantivo(silla, chair, femenino, singular).
sustantivo(ventana, window, femenino, singular).
sustantivo(puerta, door, femenino, singular).
sustantivo(ciudad, city, femenino, singular).
sustantivo(pueblo, town, masculino, singular).
sustantivo(país, country, masculino, singular).
sustantivo(escuela, school, femenino, singular).
sustantivo(colegio, school, masculino, singular).
sustantivo(universidad, university, femenino, singular).
sustantivo(trabajo, work, masculino, singular).
sustantivo(oficina, office, femenino, singular).
sustantivo(parque, park, masculino, singular).
sustantivo(jardín, garden, masculino, singular).
sustantivo(baño, bathroom, masculino, singular).
sustantivo(cocina, kitchen, femenino, singular).
sustantivo(habitación, room, femenino, singular).
sustantivo(dormitorio, bedroom, masculino, singular).

% Plurales de objetos
sustantivo(casas, houses, femenino, plural).
sustantivo(coches, cars, masculino, plural).
sustantivo(libros, books, masculino, plural).
sustantivo(mesas, tables, femenino, plural).
sustantivo(sillas, chairs, femenino, plural).

% Conceptos abstractos y otros
sustantivo(tiempo, time, masculino, singular).
sustantivo(día, day, masculino, singular).
sustantivo(noche, night, femenino, singular).
sustantivo(semana, week, femenino, singular).
sustantivo(mes, month, masculino, singular).
sustantivo(año, year, masculino, singular).
sustantivo(vida, life, femenino, singular).
sustantivo(amor, love, masculino, singular).
sustantivo(odio, hate, masculino, singular).
sustantivo(felicidad, happiness, femenino, singular).
sustantivo(tristeza, sadness, femenino, singular).
sustantivo(problema, problem, masculino, singular).
sustantivo(solución, solution, femenino, singular).
sustantivo(pregunta, question, femenino, singular).
sustantivo(respuesta, answer, femenino, singular).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% VERBOS: verbo(Español, Inglés, Persona, Número)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Verbo COMER (to eat)
verbo(como, eat, 1, singular).
verbo(comes, eat, 2, singular).
verbo(come, eats, 3, singular).
verbo(comemos, eat, 1, plural).
verbo(coméis, eat, 2, plural).
verbo(comen, eat, 3, plural).

% Verbo BEBER (to drink)
verbo(bebo, drink, 1, singular).
verbo(bebes, drink, 2, singular).
verbo(bebe, drinks, 3, singular).
verbo(bebemos, drink, 1, plural).
verbo(bebéis, drink, 2, plural).
verbo(beben, drink, 3, plural).

% Verbo HABLAR (to speak/talk)
verbo(hablo, speak, 1, singular).
verbo(hablas, speak, 2, singular).
verbo(habla, speaks, 3, singular).
verbo(hablamos, speak, 1, plural).
verbo(habláis, speak, 2, plural).
verbo(hablan, speak, 3, plural).

% Verbo ESCRIBIR (to write)
verbo(escribo, write, 1, singular).
verbo(escribes, write, 2, singular).
verbo(escribe, writes, 3, singular).
verbo(escribimos, write, 1, plural).
verbo(escribís, write, 2, plural).
verbo(escriben, write, 3, plural).

% Verbo LEER (to read)
verbo(leo, read, 1, singular).
verbo(lees, read, 2, singular).
verbo(lee, reads, 3, singular).
verbo(leemos, read, 1, plural).
verbo(leéis, read, 2, plural).
verbo(leen, read, 3, plural).

% Verbo ESTUDIAR (to study)
verbo(estudio, study, 1, singular).
verbo(estudias, study, 2, singular).
verbo(estudia, studies, 3, singular).
verbo(estudiamos, study, 1, plural).
verbo(estudiáis, study, 2, plural).
verbo(estudian, study, 3, plural).

% Verbo TRABAJAR (to work)
verbo(trabajo, work, 1, singular).
verbo(trabajas, work, 2, singular).
verbo(trabaja, works, 3, singular).
verbo(trabajamos, work, 1, plural).
verbo(trabajáis, work, 2, plural).
verbo(trabajan, work, 3, plural).

% Verbo VIVIR (to live)
verbo(vivo, live, 1, singular).
verbo(vives, live, 2, singular).
verbo(vive, lives, 3, singular).
verbo(vivimos, live, 1, plural).
verbo(vivís, live, 2, plural).
verbo(viven, live, 3, plural).

% Verbo AMAR (to love)
verbo(amo, love, 1, singular).
verbo(amas, love, 2, singular).
verbo(ama, loves, 3, singular).
verbo(amamos, love, 1, plural).
verbo(amáis, love, 2, plural).
verbo(aman, love, 3, plural).

% Verbo CANTAR (to sing)
verbo(canto, sing, 1, singular).
verbo(cantas, sing, 2, singular).
verbo(canta, sings, 3, singular).
verbo(cantamos, sing, 1, plural).
verbo(cantáis, sing, 2, plural).
verbo(cantan, sing, 3, plural).

% Verbo BAILAR (to dance)
verbo(bailo, dance, 1, singular).
verbo(bailas, dance, 2, singular).
verbo(baila, dances, 3, singular).
verbo(bailamos, dance, 1, plural).
verbo(bailáis, dance, 2, plural).
verbo(bailan, dance, 3, plural).

% Verbo CORRER (to run)
verbo(corro, run, 1, singular).
verbo(corres, run, 2, singular).
verbo(corre, runs, 3, singular).
verbo(corremos, run, 1, plural).
verbo(corréis, run, 2, plural).
verbo(corren, run, 3, plural).

% Verbo NADAR (to swim)
verbo(nado, swim, 1, singular).
verbo(nadas, swim, 2, singular).
verbo(nada, swims, 3, singular).
verbo(nadamos, swim, 1, plural).
verbo(nadáis, swim, 2, plural).
verbo(nadan, swim, 3, plural).

% Verbo DORMIR (to sleep)
verbo(duermo, sleep, 1, singular).
verbo(duermes, sleep, 2, singular).
verbo(duerme, sleeps, 3, singular).
verbo(dormimos, sleep, 1, plural).
verbo(dormís, sleep, 2, plural).
verbo(duermen, sleep, 3, plural).

% Verbo ENTENDER (to understand)
verbo(entiendo, understand, 1, singular).
verbo(entiendes, understand, 2, singular).
verbo(entiende, understands, 3, singular).
verbo(entendemos, understand, 1, plural).
verbo(entendéis, understand, 2, plural).
verbo(entienden, understand, 3, plural).

% Verbo SABER (to know)
verbo(sé, know, 1, singular).
verbo(sabes, know, 2, singular).
verbo(sabe, knows, 3, singular).
verbo(sabemos, know, 1, plural).
verbo(sabéis, know, 2, plural).
verbo(saben, know, 3, plural).

% Verbo CONOCER (to know/meet)
verbo(conozco, know, 1, singular).
verbo(conoces, know, 2, singular).
verbo(conoce, knows, 3, singular).
verbo(conocemos, know, 1, plural).
verbo(conocéis, know, 2, plural).
verbo(conocen, know, 3, plural).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ADJETIVOS: adjetivo(Español, Inglés, Género, Número)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Colores
adjetivo(rojo, red, masculino, singular).
adjetivo(roja, red, femenino, singular).
adjetivo(azul, blue, masculino, singular).
adjetivo(azul, blue, femenino, singular).
adjetivo(verde, green, masculino, singular).
adjetivo(verde, green, femenino, singular).
adjetivo(amarillo, yellow, masculino, singular).
adjetivo(amarilla, yellow, femenino, singular).
adjetivo(blanco, white, masculino, singular).
adjetivo(blanca, white, femenino, singular).
adjetivo(negro, black, masculino, singular).
adjetivo(negra, black, femenino, singular).
adjetivo(gris, gray, masculino, singular).
adjetivo(gris, gray, femenino, singular).
adjetivo(marrón, brown, masculino, singular).
adjetivo(marrón, brown, femenino, singular).
adjetivo(naranja, orange, masculino, singular).
adjetivo(naranja, orange, femenino, singular).
adjetivo(rosa, pink, masculino, singular).
adjetivo(rosa, pink, femenino, singular).
adjetivo(morado, purple, masculino, singular).
adjetivo(morada, purple, femenino, singular).

% Tamaños
adjetivo(grande, big, masculino, singular).
adjetivo(grande, big, femenino, singular).
adjetivo(pequeño, small, masculino, singular).
adjetivo(pequeña, small, femenino, singular).
adjetivo(alto, tall, masculino, singular).
adjetivo(alta, tall, femenino, singular).
adjetivo(bajo, short, masculino, singular).
adjetivo(baja, short, femenino, singular).
adjetivo(largo, long, masculino, singular).
adjetivo(larga, long, femenino, singular).
adjetivo(corto, short, masculino, singular).
adjetivo(corta, short, femenino, singular).
adjetivo(ancho, wide, masculino, singular).
adjetivo(ancha, wide, femenino, singular).
adjetivo(estrecho, narrow, masculino, singular).
adjetivo(estrecha, narrow, femenino, singular).

% Características físicas
adjetivo(bonito, pretty, masculino, singular).
adjetivo(bonita, pretty, femenino, singular).
adjetivo(feo, ugly, masculino, singular).
adjetivo(fea, ugly, femenino, singular).
adjetivo(fuerte, strong, masculino, singular).
adjetivo(fuerte, strong, femenino, singular).
adjetivo(débil, weak, masculino, singular).
adjetivo(débil, weak, femenino, singular).
adjetivo(joven, young, masculino, singular).
adjetivo(joven, young, femenino, singular).
adjetivo(viejo, old, masculino, singular).
adjetivo(vieja, old, femenino, singular).
adjetivo(nuevo, new, masculino, singular).
adjetivo(nueva, new, femenino, singular).
adjetivo(viejo, old, masculino, singular).
adjetivo(vieja, old, femenino, singular).

% Personalidad y estados
adjetivo(inteligente, intelligent, masculino, singular).
adjetivo(inteligente, intelligent, femenino, singular).
adjetivo(tonto, silly, masculino, singular).
adjetivo(tonta, silly, femenino, singular).
adjetivo(feliz, happy, masculino, singular).
adjetivo(feliz, happy, femenino, singular).
adjetivo(triste, sad, masculino, singular).
adjetivo(triste, sad, femenino, singular).
adjetivo(enojado, angry, masculino, singular).
adjetivo(enojada, angry, femenino, singular).
adjetivo(calmado, calm, masculino, singular).
adjetivo(calmada, calm, femenino, singular).
adjetivo(amable, kind, masculino, singular).
adjetivo(amable, kind, femenino, singular).
adjetivo(grosero, rude, masculino, singular).
adjetivo(grosera, rude, femenino, singular).

% Plurales de adjetivos comunes
adjetivo(rojos, red, masculino, plural).
adjetivo(rojas, red, femenino, plural).
adjetivo(azules, blue, masculino, plural).
adjetivo(azules, blue, femenino, plural).
adjetivo(grandes, big, masculino, plural).
adjetivo(grandes, big, femenino, plural).
adjetivo(pequeños, small, masculino, plural).
adjetivo(pequeñas, small, femenino, plural).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PRONOMBRES: pronombre(Español, Inglés, Persona, Número)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Pronombres personales sujeto
pronombre(yo, i, 1, singular).
pronombre(tú, you, 2, singular).
pronombre(usted, you, 2, singular).  % formal
pronombre(él, he, 3, singular).
pronombre(ella, she, 3, singular).
pronombre(ello, it, 3, singular).

pronombre(nosotros, we, 1, plural).
pronombre(nosotras, we, 1, plural).
pronombre(vosotros, you, 2, plural).
pronombre(vosotras, you, 2, plural).
pronombre(ustedes, you, 2, plural).  % formal
pronombre(ellos, they, 3, plural).
pronombre(ellas, they, 3, plural).

% Pronombres reflexivos
pronombre(me, myself, 1, singular).
pronombre(te, yourself, 2, singular).
pronombre(se, himself, 3, singular).  % también herself, itself
pronombre(nos, ourselves, 1, plural).
pronombre(os, yourselves, 2, plural).
pronombre(se, themselves, 3, plural).

% Pronombres demostrativos
pronombre(esto, this, 3, singular).
pronombre(eso, that, 3, singular).
pronombre(aquello, that, 3, singular).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PREPOSICIONES: preposicion(Español, Inglés)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preposicion(a, to).
preposicion(ante, before).
preposicion(bajo, under).
preposicion(con, with).
preposicion(contra, against).
preposicion(de, of).
preposicion(desde, from).
preposicion(en, in).
preposicion(entre, between).
preposicion(hacia, towards).
preposicion(hasta, until).
preposicion(para, for).
preposicion(por, by).
preposicion(según, according).
preposicion(sin, without).
preposicion(sobre, about).
preposicion(tras, after).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ADVERBIOS: adverbio(Español, Inglés)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

adverbio(aquí, here).
adverbio(allí, there).
adverbio(ahora, now).
adverbio(después, after).
adverbio(antes, before).
adverbio(siempre, always).
adverbio(nunca, never).
/*adverbio(a veces, sometimes).
adverbio(a menudo, often).*/
adverbio(rápidamente, quickly).
adverbio(lentamente, slowly).
adverbio(rápido, fast).
adverbio(lento, slow).
adverbio(bien, well).
adverbio(mal, badly).
adverbio(muy, very).
adverbio(mucho, much).
adverbio(poco, little).
adverbio(demasiado, too).
adverbio(también, also).
adverbio(tampoco, neither).
adverbio(solamente, only).
adverbio(quizás, maybe).
adverbio(probablemente, probably).
adverbio(realmente, really).
adverbio(definitivamente, definitely).

/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ADVERBIOS CLASIFICADOS POR TIPO
%% Formato: adverbio(Español, Inglés, Tipo)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ADVERBIOS DE TIEMPO
adverbio(ahora, now, tiempo).
adverbio(después, after, tiempo).
adverbio(antes, before, tiempo).
adverbio(siempre, always, tiempo).
adverbio(nunca, never, tiempo).
adverbio(a_veces, sometimes, tiempo).
adverbio(a_menudo, often, tiempo).
adverbio(frecuentemente, frequently, tiempo).
adverbio(raramente, rarely, tiempo).
adverbio(pronto, soon, tiempo).
adverbio(tarde, late, tiempo).
adverbio(temprano, early, tiempo).
adverbio(ayer, yesterday, tiempo).
adverbio(hoy, today, tiempo).
adverbio(mañana, tomorrow, tiempo).
adverbio(anoche, last_night, tiempo).
adverbio(inmediatamente, immediately, tiempo).

% ADVERBIOS DE LUGAR
adverbio(aquí, here, lugar).
adverbio(allí, there, lugar).
adverbio(allá, over_there, lugar).
adverbio(cerca, near, lugar).
adverbio(lejos, far, lugar).
adverbio(arriba, up, lugar).
adverbio(abajo, down, lugar).
adverbio(dentro, inside, lugar).
adverbio(fuera, outside, lugar).
adverbio(adelante, forward, lugar).
adverbio(atrás, behind, lugar).
adverbio(enfrente, in_front, lugar).
adverbio(alrededor, around, lugar).

% ADVERBIOS DE MODO
adverbio(rápidamente, quickly, modo).
adverbio(lentamente, slowly, modo).
adverbio(rápido, fast, modo).
adverbio(lento, slow, modo).
adverbio(bien, well, modo).
adverbio(mal, badly, modo).
adverbio(cuidadosamente, carefully, modo).
adverbio(fácilmente, easily, modo).
adverbio(difícilmente, hardly, modo).
adverbio(claramente, clearly, modo).
adverbio(fuertemente, strongly, modo).
adverbio(suavemente, gently, modo).
adverbio(seriamente, seriously, modo).
adverbio(perfectamente, perfectly, modo).

% ADVERBIOS DE CANTIDAD
adverbio(muy, very, cantidad).
adverbio(mucho, much, cantidad).
adverbio(poco, little, cantidad).
adverbio(demasiado, too, cantidad).
adverbio(bastante, quite, cantidad).
adverbio(suficiente, enough, cantidad).
adverbio(apenas, barely, cantidad).
adverbio(casi, almost, cantidad).
adverbio(solo, only, cantidad).
adverbio(exactamente, exactly, cantidad).
adverbio(aproximadamente, approximately, cantidad).
adverbio(completamente, completely, cantidad).

% ADVERBIOS DE AFIRMACIÓN
adverbio(sí, yes, afirmacion).
adverbio(también, also, afirmacion).
adverbio(ciertamente, certainly, afirmacion).
adverbio(efectivamente, effectively, afirmacion).
adverbio(obviamente, obviously, afirmacion).
adverbio(realmente, really, afirmacion).
adverbio(definitivamente, definitely, afirmacion).
adverbio(seguramente, surely, afirmacion).
adverbio(claro, of_course, afirmacion).
adverbio(justamente, exactly, afirmacion).

% ADVERBIOS DE NEGACIÓN
adverbio(no, no, negacion).
adverbio(tampoco, neither, negacion).
adverbio(jamás, never, negacion).
adverbio(nunca, never, negacion).
adverbio(en_absoluto, absolutely_not, negacion).

% ADVERBIOS DE DUDA
adverbio(quizás, maybe, duda).
adverbio(quizá, maybe, duda).
adverbio(probablemente, probably, duda).
adverbio(posiblemente, possibly, duda).
adverbio(tal_vez, perhaps, duda).
adverbio(acaso, perhaps, duda).
adverbio(aparentemente, apparently, duda).
adverbio(supuestamente, supposedly, duda).

 */


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CONJUNCIONES: conjuncion(Español, Inglés)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conjuncion(y, and).
conjuncion(o, or).
conjuncion(pero, but).
conjuncion(porque, because).
conjuncion(si, if).
conjuncion(aunque, although).
conjuncion(mientras, while).
/*conjuncion(como, as).*/
conjuncion(que, that).
conjuncion(cuando, when).
conjuncion(donde, where).
conjuncion(por, for).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% INTERJECCIONES: interjeccion(Español, Inglés)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*interjeccion(hola, hello).
interjeccion(adiós, goodbye).
interjeccion(gracias, thank).
interjeccion(por favor, please).
interjeccion(lo siento, sorry).
interjeccion(sí, yes).
interjeccion(no, no).
interjeccion(okay, okay).
interjeccion(¡eh!, hey).
interjeccion(¡vaya!, wow).
interjeccion(¡cuidado!, careful).*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Numeros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/*unidades(uno, one).
unidades(dos, two).*/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% N�MEROS: numero(Espa�ol, Ingl�s, G�nero, N�mero)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% N�meros cardinales del 0 al 15 (ya existentes)
numero(cero, zero, _, singular).
numero(uno, one, masculino, singular).
numero(una, one, femenino, singular).
numero(dos, two, _, _).
numero(tres, three, _, _).
numero(cuatro, four, _, _).
numero(cinco, five, _, _).
numero(seis, six, _, _).
numero(siete, seven, _, _).
numero(ocho, eight, _, _).
numero(nueve, nine, _, _).
numero(diez, ten, _, _).
numero(once, eleven, _, _).
numero(doce, twelve, _, _).
numero(trece, thirteen, _, _).
numero(catorce, fourteen, _, _).
numero(quince, fifteen, _, _).

% N�meros del 16 al 19: dieci + n�mero base
numero(dieciséis, sixteen, _, _).
numero(diecisiete, seventeen, _, _).
numero(dieciocho, eighteen, _, _).
numero(diecinueve, nineteen, _, _).

% DECENAS BASE
numero(veinte, twenty, _, _).
numero(veinti, twenty, _, _).  % Para composici�n
numero(treinta, thirty, _, _).
numero(cuarenta, forty, _, _).
numero(cincuenta, fifty, _, _).
numero(sesenta, sixty, _, _).
numero(setenta, seventy, _, _).
numero(ochenta, eighty, _, _).
numero(noventa, ninety, _, _).

% REGLA PARA N�MEROS DEL 21-29 (veinti + unidad)
numero(NumEs, NumEn, Gen, Num) :-
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
numero(NumEs, NumEn, Gen, Num) :-
    between(3, 9, DecenaIdx),
    decena_numero(DecenaIdx, DecenaEs, DecenaEn),
    between(1, 9, Unidad),
    unidad_numero(Unidad, UnidadEs, UnidadEn, UnidadGen),
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

% Tabla de decenas
decena_numero(2, veinte, twenty).
decena_numero(3, treinta, thirty).
decena_numero(4, cuarenta, forty).
decena_numero(5, cincuenta, fifty).
decena_numero(6, sesenta, sixty).
decena_numero(7, setenta, seventy).
decena_numero(8, ochenta, eighty).
decena_numero(9, noventa, ninety).

% Tabla de unidades (1-9)
unidad_numero(1, uno, one, masculino).
unidad_numero(1, una, one, femenino).
unidad_numero(2, dos, two, _).
unidad_numero(3, tres, three, _).
unidad_numero(4, cuatro, four, _).
unidad_numero(5, cinco, five, _).
unidad_numero(6, seis, six, _).
unidad_numero(7, siete, seven, _).
unidad_numero(8, ocho, eight, _).
unidad_numero(9, nueve, nine, _).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% N�MEROS COMO DETERMINANTES (usando las mismas reglas)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Determinantes num�ricos del 0-19 (definiciones expl�citas)
determinante(cero, zero, _, singular).
determinante(uno, one, masculino, singular).
determinante(una, one, femenino, singular).
determinante(dos, two, _, _).
determinante(tres, three, _, _).
determinante(cuatro, four, _, _).
determinante(cinco, five, _, _).
determinante(seis, six, _, _).
determinante(siete, seven, _, _).
determinante(ocho, eight, _, _).
determinante(nueve, nine, _, _).
determinante(diez, ten, _, _).
determinante(once, eleven, _, _).
determinante(doce, twelve, _, _).
determinante(trece, thirteen, _, _).
determinante(catorce, fourteen, _, _).
determinante(quince, fifteen, _, _).
determinante(dieciséis, sixteen, _, _).
determinante(diecisiete, seventeen, _, _).
determinante(dieciocho, eighteen, _, _).
determinante(diecinueve, nineteen, _, _).

% REGLA PARA DETERMINANTES NUM�RICOS DEL 20-99
determinante(NumEs, NumEn, Gen, Num) :-
    numero(NumEs, NumEn, Gen, Num),
    \+ member(NumEs, [cero, uno, una, dos, tres, cuatro, cinco, seis, siete, ocho, nueve,
                     diez, once, doce, trece, catorce, quince,
                     dieciséis, diecisiete, dieciocho, diecinueve]).







