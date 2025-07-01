is_palindrome(L) :-
    reverse(L, L).



/* Ficha 2 - Familia */

% Exercício 1 - Família Pinheiro.
progenitor(jose,joao).
progenitor(jose,ana).
progenitor(maria,joao).
progenitor(maria,ana).
progenitor(ana,helena).
progenitor(ana,joana).
progenitor(joao,mario).
progenitor(helena,carlos).
progenitor(mario,carlos).

% ----------------------------------------------------------
% Exercício 2.
mulher(maria).
mulher(ana).
mulher(helena).
mulher(joana).

homem(jose).
homem(joao).
homem(mario).
homem(carlos).

irma(ana,joao).
irma(helena,joana).
irma(joana,helena).

irmao(joao,ana).


descendente(X,Y):-
    progenitor(Y,X).

% --------------------------------------------------

/* Ficha 3 - Receitas */
receita(mousseOreo,bolachaOreo,2).
receita(mousseOreo,natas,2).
receita(mousseOreo,leiteCondensado,1).
receita(bacalhauCtodos,bacalhau,2).
receita(bacalhauCtodos,batata,3).
receita(bacalhauCtodos,grao,1).

stock_minimo(bolachaOreo,2).
stock_minimo(natas,2).
stock_minimo(leiteCondensado,2).
stock_minimo(bacalhau,2).
stock_minimo(batata,1).
stock_minimo(grao,0).

receita_nao_confecionada(R):-
    receita(R,Item,Quant),
    \+ (stock_minimo(Item, QuantMin), QuantMin>=Quant).

ementa_jantar(ListaReceitas):-
    findall(R, (receita(R,_,_), \+ (receita_nao_confecionada(R))), ListaReceitas).

stock_total([],0).
stock_total([(_,U)|Tail],N):-
   stock_total(Tail, NAux),
   N is U + NAux.


/* 1- Usar o SWI-Prolog para definir um predicado que identifica o carro mais rápido, partindo de uma relação de carros e respetivas velocidades de ponta.
   Usa os seguintes predicados: carro_mais_rapido(X),velocidade_carro(X, V1),

*/


velocidade_carro(c1, 50).
velocidade_carro(c2, 1000).
velocidade_carro(c3, 500).

carro_mais_rapido(X):-
    velocidade_carro(X, V1),
    \+ (velocidade_carro(_, V2), V2>V1).





/*  join/3
    ?-join([a,b,c,d],[e,f],L).
      L= [a,b,c,d,e,f].

    reverse_list/2:
    ?-reverse_list([a,b,c,d],L).
      L= [d,c,b,a].

    . countif/3:
      ?-countif(a, [a,b,a,d], N).
         N=2.
*/

join([], L, L).
join([X|Tail], L2, [X|LFinal]):-
    join(Tail, L2, LFinal).

reverse_list([], []).
reverse_list([X|Tail], LInv):-
    reverse_list(Tail, LAux),
    join(LAux, [X], LInv).


count_if(_,[],0).
count_if(C, [X|T], N):-
    count_if(C, T, Naux),
    X=C,
    N is Naux+1.

% Quando o x é diferente do que lá está
count_if(X, [Y|Tail], N):-
    X\=Y,
    count_if(X,Tail,N).




% ------------------------------- 2ª Fase 2023 -------------------------


/* Considera factos compra/2 que relacionam um item de uma lista de compras sendo identificado o produto e o seu preço */
compra(leite, 0.99).
compra(ovos, 2.35).
compra(queijo, 1.3).
compra(acucar, 1.6).

% a) (1 valor) Escreve o predicado lista_de_compras/1 que devolve uma lista com todos os pares (Produto, Preço).

% Exemplo ?- lista_de_compras (Compras).
%           Compras = [(leite, 0.99), (ovos, 2.35), (queijo,
%           1.3),(acucar, 1.6)]

lista_de_compras(LC):-
    findall((Produto,Preco),
            (compra(Produto, Preco)),
            LC).

% b) (2 valores) Recorrendo ao predicado lista_de_compras/1 da pergunta anterior, escreve o predicado
%                total/1 que, usando recursão, devolve o total de gasto na lista de compras.
% Exemplo ?- total(T).
%         T = 6.24.


total(T):-
    lista_de_compras(L),
    soma(L, T).

soma([],0).
soma([(_, Preco)|Tail],T):-
    soma(Tail, TAux),
    T is Preco + TAux.


/*pessoa(isabel).
pessoa(a).
pessoa(m).

jogador(isabel, 010220).
premiado(a, 240122).
milionaria(m, 240122).

milionaria(X,D):- jogador(X,D).
milionaria(X,D):- premiado(X,D).
*/
pessoaMilionaria(X,D):-
	pessoa(X),
	milionaria(X,D).

primeiraPessoaMilionaria(X):-
	pessoaMilionaria(X,D1),
	\+ (pessoaMilionaria(_, D2), D1>D2).

lista_milionarios(L):-
    findall(M, (milionaria(M,_)), L).


% --------------- 1ª Fase 2024 -------------

pessoa(isabel).
pessoa(ana).
pessoa(m).

gosta(isabel, hobby1).
gosta(ana, hobby2).
gosta(m, hobby1).

hobbyComum(X,Y,H):-
    gosta(X,H),
    gosta(Y,H),
    X \= Y.

biAmigo_Mal(X):-
    pessoa(X),
    setof(X2, (gosta(X,H), hobbyComum(X,X2,H)), ListaAmigos),
    length(ListaAmigos,T),
    T>0.

biAmigo(X, Hobby):-
    pessoa(X),
    amigo(X, Y),
    amigo(X, Z),
    Y \= Z,
    hobbyComum(Y, Z, Hobby).

exclusiveHobby(Pessoa):-
    pessoa(Pessoa),
    gosta(Pessoa, Hobby),
    \+ (pessoa(Y), Y \= Pessoa, gosta(Y, Hobby)).

% --------------- EXTRA -----------------


n_Pares([],[]).
n_Pares([X|Tail], Pares):-
   X mod 2=:=0,
   n_Pares(Tail, Resto),
   Pares = [X | Resto].

n_Pares([X|Tail], Pares):-
   \+ (X mod 2=:=0),
   n_Pares(Tail, Pares).


% Regra para verificar se um número é par
par(N) :-
    N mod 2 =:= 0.

% Regra para encontrar números pares em uma lista
numeros_pares([], []).
numeros_pares([H | T], Pares) :-
    par(H),
    numeros_pares(T, Resto),
    Pares = [H | Resto].
numeros_pares([H | T], Pares) :-
    \+ par(H),
    numeros_pares(T, Pares).


% reverse_list

/*
- max/2
- min/2
- average/2
- count_positive_numbers/2
- remove_negative_numbers/2
*/
