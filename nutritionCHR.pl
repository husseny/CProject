:- use_module(library(chr)).

:-chr_constraint q/1, dailyIntake/5, meal/4, food/7.

dailyIntake(Protein, Carb, Fat, 0, _) <=> true.
dailyIntake(Protein, Carb, Fat, NoMeals, Order) <=> P is div(Protein, NoMeals), NProtein is Protein - P, 
 	C is div(Carb, NoMeals), NCarb is Carb - C,
	F is div(Fat, NoMeals), NFat is Fat - F, NNoMeals2 is NoMeals - 1, Order2 is Order + 1 | 
	meal(P, C, F, Order2), dailyIntake(NProtein, NCarb, NFat, NNoMeals2, Order2).

meal(Protein, Carb, Fat, Order) <=> Protein =< 30; Carb =< 25; Fat =< 5 | true.
food(X, P, C, F, Pref, _, 0), meal(Protein, Carb, Fat, Order) <=>
NProtein is Protein - P, NCarb is Carb - C, NFat is Fat - F |
 food(X, P, C, F, Pref, Order, 1), meal(NProtein, NCarb, NFat, Order).
 meal(NProtein, NCarb, NFat, Order) <=> false.

q([H]).
q([H|T]) :- H, q(T).


