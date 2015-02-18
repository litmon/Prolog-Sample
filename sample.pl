sentence(Sen) :- append(Sub, Pre, Sen), subject(Sub), predicate(Pre).

subject(Sub) :- append(Det, Noun, Sub), determiner(Det), noun(Noun).
subject(Sub) :- noun(Sub).

predicate(Pre) :- verb(Pre).
predicate(Pre) :- append(Verb, Obj, Pre), verb(Verb), object(Obj).
predicate(Pre) :- append(Verb, Obj, Comp, Pre), verb(Verb), object(Obj), complement(Comp).
predicate(Pre) :- append(Verb, Obj, Obj2, Pre), verb(Verb), object(Obj), object(Obj2).

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

sentence([time, flies, like, an, arrow]).
