module ebl.

final tt.
final (pair M N).
final (lam E).
final (inl M) :- final M.
final (inr M) :- final M.

step (inl M) (inl N) :- step M N.
step (inr M) (inr N) :- step M N.

step (fst (pair M N)) M.
step (fst M) (fst M') :- step M M'.

step (snd (pair M N)) N.
step (snd M) (snd M') :- step M M'.

step (app (lam E) M) (E M).
step (app M N) (app M' N) :- step M M'.

step' M M :- final M.
step' M N :- step M N.

nstep W M M :- final M.
nstep (su W) M N :- nstep W M' N, step M M'.

leq ze _.
leq (su M) (su N) :- leq M N.

world ze.
world (su W) :- world W.
