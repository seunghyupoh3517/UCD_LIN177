% the sentence rule
% the subject should have nominative case
s --> np_nom, vp.
s --> np_nom, vp_not_nom_3sg.
s --> np_nom_3sg, vp.
s --> np_nom_3sg, vp_nom_3sg.


% noun phrase rules
np_nom_3sg --> det, n_3sg.
np_nom_3sg --> pro_nom_3sg.
np_nom --> det, n_3pl.
np_nom --> pro_nom_1sg.
np_nom --> pro_nom_3pl.
np_nom --> pro_nom_1pl.

np_acc --> det, n_3sg.
np_acc --> det, n_3pl.
np_acc --> pro_acc_3sg.
np_acc --> pro_acc_3pl.

% verb phrase with intransitive verb
vp --> v_intrans.

% verb phrase with transitive verb
% the object should have accusative case
vp_not_nom_3sg --> v_trans_not_nom_3sg, np_acc.
vp_nom_3sg --> v_trans_nom_3sg, np_acc.

% lexical rules
% Case divides into nominative(_nom), accusative(_acc)
% dog, dogs can be both depends on the case
% Subject-verb agreement divides into 3 points of view and singular and plural
% for the first and third points of view (_1sg, _1pl, _2sg, _3sg, _3pl)
% Verb divides into intransitive(_intran), transitive(_tran)

det --> [the].
n_3sg --> [dog].
n_3pl --> [dogs].
pro_nom_1sg --> [i].
pro_nom_3sg --> [she].
pro_nom_3pl --> [they].
pro_nom_1pl --> [we].
pro_acc_3pl --> [them].
pro_acc_3sg --> [her].
v_intrans --> [arrived].
v_trans_not_nom_3sg --> [like].
v_trans_nom_3sg --> [likes].

