:- use_module(library(clpfd)).
:- use_module(library(chr)).
Variables:

schedule(NOMeals, DailyFat, DailyProtein, DailyCarbs, Goal, Meals)
meal(Week, Day, Order, foods)
food(Protein, Carbs, Fat, Calories, PrefMeals, NonPrefMeals)

Domains:
NOMeals input
Fat Protein, Carbs, Goal calculated
 Week in 1..5
 Day in 1..7
 Order in NOMeals


meal(Order, Foods) :-
Order in 1..5,

dailyIntake(Protein, Carb, Fat, 0, _) <=> true.
dailyIntake(Protein, Carb, Fat, NoMeals, Order) <=> P is div(Protein, NoMeals), NProtein is Protein - P, 
 	C is div(Carb, NoMeals), NCarb is Carb - C,
	F is div(Fat, NoMeals), NFat is Fat - F, NNoMeals2 is NoMeals - 1, Order2 is Order + 1 | 
	meal(P, C, F, Order2), dailyIntake(NProtein, NCarb, NFat, NNoMeals2, Order2).

food(X, P, C, F, Pref, 0) \ meal(Protein, Carb, Fat, Order) <=> 
 food(X, P, C, F, Pref, 1), meal(Protein, Carb, Fat, Order).
meal(Protein, Carb, Fat, Order) <=> Protein =< 30, Carb =< 25, Fat =< 5 | true.



q([H]).
q([H|T]) :- H, q(T).

food(1).
food(2).
query bagof(food(X), )

pred_food(meal(),food()):-

a <=> (pred_food(a,b), b);


food(Week, Day, Order, X, Protein, Carb, Fat, Meal, NOPortions) :-
X in [chkBr, lnBeef, cheddarChs, goudaChs, swissChs, carrot, broccoli, spinach, whtRice, potato, tomato, whlEgg, eggWht, swtPotato,	fullFatMilk, multiGrainBread, honey, oliveOil, pasta, salmon, fish, shrimp, peanutButter, skimmedMilk, banana, pear, tuna, wheyProtein],
NOPortions in 1..3,

food(chkBr, 21.2, 0, 2.5, 3, 0).
food(chkBr, 21.2, 0, 2.5, 4, 0).
food(lnBeef, 20, 0, 6, 3, 0).
food(lnBeef, 20, 0, 6, 4, 0).
food(cheddarChs, 25, 1.3, 33, 1, 0).
food(cheddarChs, 25, 1.3, 33, 2, 0).
food(cheddarChs, 25, 1.3, 33, 5, 0).
food(goudaChs, 25, 2.2, 27, 1, 0).
food(goudaChs, 25, 2.2, 27, 2, 0).
food(goudaChs, 25, 2.2, 27, 5, 0).
food(swissChs, 27, 5, 28, 1, 0).
food(swissChs, 27, 5, 28, 2, 0).
food(swissChs, 27, 5, 28, 5, 0).
food(carrot, 0.9, 10, 0.2, 1, 0).
food(carrot, 0.9, 10, 0.2, 2, 0).
food(carrot, 0.9, 10, 0.2, 3, 0).
food(carrot, 0.9, 10, 0.2, 4, 0).
food(carrot, 0.9, 10, 0.2, 5, 0).
food(broccoli, 2.8, 7, 0.4, 1, 0).
food(broccoli, 2.8, 7, 0.4, 2, 0).
food(broccoli, 2.8, 7, 0.4, 3, 0).
food(broccoli, 2.8, 7, 0.4, 4, 0).
food(broccoli, 2.8, 7, 0.4, 5, 0).
food(spinach, 2.9, 3.6, 0.4, 2, 0).
food(spinach, 2.9, 3.6, 0.4, 3, 0).
food(spinach, 2.9, 3.6, 0.4, 4, 0).
food(spinach, 2.9, 3.6, 0.4, 5, 0).
food(whtRice, 7, 82, 0.6, 3, 0).
food(whtRice, 7, 82, 0.6, 4, 0).
food(potato, 2, 17, 0.1, 1, 0).
food(potato, 2, 17, 0.1, 2, 0).
food(potato, 2, 17, 0.1, 3, 0).
food(potato, 2, 17, 0.1, 4, 0).
food(potato, 2, 17, 0.1, 5, 0).
food(tomato, 0.9, 3.9, 0.2, 1, 0).
food(tomato, 0.9, 3.9, 0.2, 2, 0).
food(tomato, 0.9, 3.9, 0.2, 3, 0).
food(tomato, 0.9, 3.9, 0.2, 4, 0).
food(tomato, 0.9, 3.9, 0.2, 5, 0).
food(whlEgg, 13, 0.7, 10, 1, 0).
food(whlEgg, 13, 0.7, 10, 2, 0).
food(whlEgg, 13, 0.7, 10, 4, 0).
food(whlEgg, 13, 0.7, 10, 5, 0).
food(eggWht, 11, 0.7, 0.2, 1, 0).
food(eggWht, 11, 0.7, 0.2, 2, 0).
food(eggWht, 11, 0.7, 0.2, 3, 0).
food(eggWht, 11, 0.7, 0.2, 4, 0).
food(eggWht, 11, 0.7, 0.2, 5, 0).
food(swtPotato,	1.6, 20, 0, 1, 0).
food(swtPotato,	1.6, 20, 0, 2, 0).
food(swtPotato,	1.6, 20, 0, 3, 0).
food(swtPotato,	1.6, 20, 0, 4, 0).
food(swtPotato,	1.6, 20, 0, 5, 0).
food(fullFatMilk, 3.3, 4.6, 3.7, 1, 0).
food(fullFatMilk, 3.3, 4.6, 3.7, 2, 0).
food(fullFatMilk, 3.3, 4.6, 3.7, 3, 0).
food(fullFatMilk, 3.3, 4.6, 3.7, 4, 0).
food(fullFatMilk, 3.3, 4.6, 3.7, 5, 0).
food(multiGrainBread, 13, 43, 4.2, 1, 0).
food(multiGrainBread, 13, 43, 4.2, 2, 0).
food(multiGrainBread, 13, 43, 4.2, 3, 0).
food(multiGrainBread, 13, 43, 4.2, 4, 0).
food(multiGrainBread, 13, 43, 4.2, 5, 0).
food(honey,	0.3, 82, 0, 1, 0).
food(honey,	0.3, 82, 0, 2, 0).
food(honey,	0.3, 82, 0, 3, 0).
food(honey,	0.3, 82, 0, 4, 0).
food(honey,	0.3, 82, 0, 5, 0).
food(oliveOil, 0, 0, 100, 1, 0).
food(oliveOil, 0, 0, 100, 2, 0).
food(oliveOil, 0, 0, 100, 3, 0).
food(oliveOil, 0, 0, 100, 4, 0).
food(oliveOil, 0, 0, 100, 5, 0).
food(pasta, 13, 75, 1.5, 3, 0).
food(pasta, 13, 75, 1.5, 4, 0).
food(salmon, 20, 0, 13, 3, 0).
food(salmon, 20, 0, 13, 4, 0).
food(fish, 19, 0, 6, 3, 0).
food(fish, 19, 0, 6, 4, 0).
food(shrimp, 20, 0, 0.5, 3, 0).
food(shrimp, 20, 0, 0.5, 4, 0).
food(peanutButter, 25, 20, 50, 1, 0).
food(peanutButter, 25, 20, 50, 2, 0).
food(peanutButter, 25, 20, 50, 3, 0).
food(peanutButter, 25, 20, 50, 4, 0).
food(peanutButter, 25, 20, 50, 5, 0).
food(skimmedMilk, 3.4, 5, 0.1, 1, 0).
food(skimmedMilk, 3.4, 5, 0.1, 2, 0).
food(skimmedMilk, 3.4, 5, 0.1, 3, 0).
food(skimmedMilk, 3.4, 5, 0.1, 4, 0).
food(skimmedMilk, 3.4, 5, 0.1, 5, 0).
food(banana, 1.1, 23, 0.3, 1, 0).
food(banana, 1.1, 23, 0.3, 2, 0).
food(banana, 1.1, 23, 0.3, 3, 0).
food(banana, 1.1, 23, 0.3, 4, 0).
food(banana, 1.1, 23, 0.3, 5, 0).
food(pear, 0.4, 15, 0.1, 1, 0).
food(pear, 0.4, 15, 0.1, 2, 0).
food(pear, 0.4, 15, 0.1, 3, 0).
food(pear, 0.4, 15, 0.1, 4, 0).
food(pear, 0.4, 15, 0.1, 5, 0).
food(tuna, 26, 0, 1, 2, 0).
food(tuna, 26, 0, 1, 3, 0).
food(tuna, 26, 0, 1, 4, 0).
food(tuna, 26, 0, 1, 5, 0).
food(wheyProtein, 80, 10, 3.3, 1, 0).
food(wheyProtein, 80, 10, 3.3, 2, 0).
food(wheyProtein, 80, 10, 3.3, 3, 0).
food(wheyProtein, 80, 10, 3.3, 4, 0).
food(wheyProtein, 80, 10, 3.3, 5, 0).



[[chkBr, 21.2,	0, 2.5, [3, 4]],
		[lnBeef, 20, 0, 6, [3, 4]],
		[cheddarChs, 25, 1.3, 33, [1, 2, 5]],
		[goudaChs, 25, 2.2, 27, [1, 2, 5]],
		[swissChs, 27, 5, 28, [1, 2, 5]],
		[carrot, 0.9, 10, 0.2, [1, 2, 3, 4, 5]],
		[broccoli, 2.8, 7, 0.4, [1, 2, 3, 4, 5]],
		[spinach, 2.9, 3.6, 0.4, [2, 3, 4, 5]],
		[whtRice, 7, 82, 0.6, [3, 4]],
		[potato, 2, 17, 0.1, [1, 2 ,3 ,4 ,5]],
		[tomato, 0.9, 3.9, 0.2, [1, 2 ,3 ,4 ,5]],
		[whlEgg, 13, 0.7, 10, [1, 2, 4 ,5]],
		[eggWht, 11, 0.7, 0.2, [1, 2 ,3 ,4 ,5]],
		[swtPotato,	1.6, 20, 0, [1, 2 ,3 ,4 ,5]],
		[fullFatMilk, 3.3, 4.6, 3.7, [1, 2 ,3 ,4 ,5]],
		[multiGrainBread, 13, 43, 4.2, [1, 2 ,3 ,4 ,5]],
		[honey,	0.3, 82, 0, [1, 2 ,3 ,4 ,5]],
		[oliveOil, 0, 0, 100, [1, 2 ,3 ,4 ,5]],
		[pasta, 13, 75, 1.5, [3 ,4]],
		[salmon, 20, 0, 13, [3, 4]],
		[fish, 19, 0, 6, [3, 4]],
		[shrimp, 20, 0, 0.5, [3, 4]],
		[peanutButter, 25, 20, 50, [1, 2, 3, 4 5]],
		[skimmedMilk, 3.4, 5, 0.1, [1, 2 ,3 ,4 ,5]],
		[banana, 1.1, 23, 0.3, [1, 2 ,3 ,4 ,5]],
		[pear, 0.4, 15, 0.1, [1, 2 ,3 ,4 ,5]],
		[tuna, 26, 0, 1, [2 ,3 ,4 ,5]],
		[wheyProtein, 80, 10, 3.3, [1, 2 ,3 ,4 ,5]]]


Constrains:

%% Carbs constraint if bulking carbs tolerance is + - 100g
%% Carbs constraint if cutting carbs tolerance is - 100g
%% Fat constraint + - 5g
%% Protein constraint + 30g
%% Total food intake of Protein, carbs & fat shouldn't exceed the daily allowable dose '
%% The third meal can be repeated with a maximum of two times every week.

%% The weekly meal plan should never be repeated as it is within the same month.
%% There are items that are preferable/not preferable to be eaten in some specific meals. For example, it is not preferable to have chicken for breakfast. Your meal plan should have as little of such meals as possible.
%% There are some popular meal combinations. Your plan should try to include such preferable meals as much as possible (as long as they fit the requirement calories/constituents).

%% Adding constraints to get a realistic nutrition plan (relevance of ingredients together and day times).
%% List of dislikes and allergies. 