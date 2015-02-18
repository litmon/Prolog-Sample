sentence(X) :- append(Y,Z,X), subject(Y), predicate(Z).

subject(X) :- append(Y,Z,X), determiner(Y), noun(Z).
subject(X) :- noun(X).

predicate(X) :- verb(X).
predicate(X) :- append(Y,Z,X), verb(Y), object(Z).
predicate(X) :- append(Y,Z1,Z2,X), verb(Y), object(Z1), complement(Z2).
predicate(X) :- append(Y,Z1,Z2,X), verb(Y), object(Z1), object(Z2).

determiner([the]).
determiner([an]).

noun([time]).
noun([arrow]).
noun([man]).
noun([apple]).

verb([flies]).
verb([eats]).

object([gives]).
complement([thinks]).

sentence([time,flies,like,an,arrow]).
