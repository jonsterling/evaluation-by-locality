sig ebl.

kind tm, ty, nat type.

type ze    nat.
type su    nat -> nat.

type unit  ty.
type and   ty -> ty -> ty.
type or    ty -> ty -> ty.
type imp   ty -> ty -> ty.

type tt    tm.
type pair  tm -> tm -> tm.
type lam   (tm -> tm) -> tm.
type inl   tm -> tm.
type inr   tm -> tm.
type app   tm -> tm -> tm.
type fst   tm -> tm.
type snd   tm -> tm.

type step  tm -> tm -> o.
type final tm -> o.

type step' tm -> tm -> o.

type nstep nat -> tm -> tm -> o.

type leq   nat -> nat -> o.
type world nat -> o.
