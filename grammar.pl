sentence(Sen) :- append(Sub, Pre, Sen), subject(Sub), predicate(Pre).

subject(Sub) :- noun(Sub).
subject(Sub) :- append(Det, Noun, Sub), determiner(Det), noun(Noun).

predicate(Pre) :- verb(Pre).
predicate(Pre) :- append(Verb, Comp, Pre), verb(Verb), complement_phrase(Comp).
predicate(Pre) :- append(Verb, Obj, Pre), verb(Verb), object_phrase(Obj).
predicate(Pre) :- append(Verb, Obj, Pre), verb(Verb), object_phrase(Obj).

complement_phrase(Comp) :- append(C, S, Comp), complement(C), subject(S).

object_phrase(Obj) :- subject(Obj).
object_phrase(Obj) :- append(O, C, Obj), object(O), complement(C).
object_phrase(Obj) :- append(O1, O2, Obj), object(O1), object(O2).

determiner([the]).
determiner([an]).

noun([i]).
noun([time]).
noun([arrow]).
noun([man]).
noun([apple]).

verb([flies]).
verb([eats]).
verb([like]).

complement([likes]).

