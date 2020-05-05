% sentence
% we need to enforce subject-verb agreement
% (person and number need to match for NP and VP),
% and we need the right case
s --> np(nom, np(Person, Number)), vp(Person, Number).

% noun phrase
% ADD THE NP RULES
np(_, np(third,Number)) --> det, n(_,third,Number).
np(nom, np(Person, Number)) --> pro(nom, Person, Number).
np(acc, np(third, Number)) --> pro(acc, third, Number).

% verb phrase
% VP with intransitive verb
% the VP gets Person and Number from the V
vp(Person,Number) --> v(intransitive,Person,Number).

% VP with transitive verb
% ADD THE TRANSITIVE VP RULE
vp(Person,Number) --> v(transitive,Person,Number), np(acc, np(third, plural)).
vp(Person,Number) --> v(transitive,Person,Number), np(acc, np(third, singular)).

% lexicon
det --> [the].

% pronoun, subjective case, third person singular
pro(nom,third,singular) --> [she].

% WRITE THE LEXICAL ENTRIES FOR:
% her, they, them, i, we
pro(acc,third,singular) --> [her].
pro(nom,third,plural) --> [they].
pro(acc,third,plural) --> [them].
pro(nom,first,singular) --> [i].
pro(nom,first,plural) --> [we].

% here the underscore means that case can be
% anything. (dog is the same, whether it is
% nom or acc.)
n(_,third,singular) --> [dog].

% WRITE THE LEXICAL ENTRY FOR dogs
n(_,third,plural) --> [dogs].

% verb features:
% - transitive/instransitive
% - person: first, second, third
% - number: plural, singular

% the underscores here mean that Person can
% be anything, and Number can be anything
v(intransitive,_,_) --> [arrived].

% here we need to ensure person/number is
% third singular
% WRITE THE LEXICAL ENTRY FOR likes (transitive)
v(transitive,third,singular) --> [likes].

% person/number can be anything, except for
% third singular
v(transitive,first,_) --> [like].
v(transitive,second,_) --> [like].
v(transitive,third,plural) --> [like].
