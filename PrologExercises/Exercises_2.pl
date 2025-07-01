% Exercício 1 - Família Pinheiro.
progenitor(jose,joao ).
progenitor(maria,joao).
progenitor(jose, ana).
progenitor(maria, ana).
progenitor(joao, mario).
progenitor(ana, helena).
progenitor(ana, joana).
progenitor(mario, carlos).
progenitor(helena, carlos).

% Exercício 2.
sexo(ana,feminino).
sexo(maria,feminino).
sexo(joana,feminino).
sexo(helena,feminino).
sexo(mario,masculino).
sexo(joao,masculino).
sexo(jose,masculino).
sexo(carlos,masculino).

irma(X,Y):- progenitor(A,X),
    progenitor(A,Y),
    X\==Y,
    sexo(X,feminino).

irmao(X,Y):- progenitor(A,X),
    progenitor(A,Y),
    X\==Y,
    sexo(X,masculino).

descendente(X,Y):- progenitor(X,Y).
descendente(X,Y):- progenitor(X,A),
    descendente(A,Y).

descendente(D,P):-
    progenitor(P,D).

descendente(D,P):-
    progenitor(P,C),
    descendente(D,C).

mae(M,C):-
    progenitor(M,C),
    mulher(M).

pai(P,C):-
    progenitor(P,C),
    homem(P).

avo(A,C):-
    progenitor(A,D),
    progenitor(D,C),
    homem(A).

tio(T,C):- irmao(T,P),
    progenitor(P,C),
    homem(T).

primo(P,C):- tio(T,P),
    progenitor(T,C).


jogadorSemGolos(J):-
    jogador(J),
    \+(golo(_,J)).

listaJogadorEquipa(Equipa, Lista):-
    findall(J, (jogador(J),equipa(J, Equipa)), Lista).

quantos_sobrinhos:-
   findall(Sobrinho, (tio(Tio, Sobrinho), homem(Tio)), Sobr),
   length(Sobr, Total).
