% Exercício 1
lista_de_Compras(lista1, bacalhau).
lista_de_Compras(lista1, batata).
lista_de_Compras(lista1, bolachaOreo).
lista_de_Compras(lista1, natas).
lista_de_Compras(lista1, leiteCondensado).

receita(mousseOreo, bolachaOreo, 2).
receita(mousseOreo, natas, 2).
receita(mousseOreo, leiteCondensado, 1).

receita(bacalhauCTodos, batata, 3).
receita(bacalhauCTodos, bacalhau, 2).

stock_minimo(bolachaOreo, 2).
stock_minimo(natas, 2).
stock_minimo(leiteCondensado, 1).

stock_minimo(bacalhau, 2).
stock_minimo(batata, 2).

% 1.
% Meu/Bard
nao_confeccionada(R) :-
  receita(R, Item, Quant),
  stock_minimo(Item, QuantMin),
  Quant > QuantMin.

% Solução Prof
receita_nao_confeccionada(R):-
    receita(R,Item, Quant),
    \+ (stock_minimo(Item, QuantS), QuantS>= Quant).

% 2.
ementa(ListaReceitas):-
    setof(R, (receita(R,_,_), \+ (receita_nao_confeccionada(R))), ListaReceitas).

%3.
ingredienteEmFalta(R, Item):-
    receita(R, Item, Quant),
    stock_minimo(Item, Stock),
    Quant>Stock.

ingredienteEmFaltaLista(L):-
    setof(Ing, ingredienteEmFalta(_, Ing), L).