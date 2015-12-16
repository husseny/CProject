DEGWY's Project

Queries for nutritionCHR.pl:

food(chkBr, 21.2, 0, 2.5, 3, F3, 0), food(lnBeef, 20, 0, 6, 3, F2, 0), food(cheddarChs, 25, 1.3, 33, 1, F1, 0), food(swissChs, 27, 5, 28, 5, F4, 0),food(broccoli, 2.8, 7, 0.4, 1, F5, 0), food(tomato, 0.9, 3.9, 0.2, 1, F6, 0) , food(spinach, 2.9, 3.6, 0.4, 5, F7, 0), food(potato, 2, 17, 0.1, 1, F8, 0), food(eggWht, 11, 0.7, 0.2, 1, F9, 0), food(fullFatMilk, 3.3, 4.6, 3.7, 3, F10, 0), food(honey,0.3, 82, 0, 3, F11, 0), food(peanutButter, 25, 20, 50, 1, F12, 0), food(wheyProtein, 80, 10, 3.3, 5,F13, 0), food(wheyProtein, 80, 10, 3.3, 4, F14, 0), food(tuna, 26, 0, 1, 4, F15, 0), food(pear, 0.4, 15, 0.1, 4, F16, 0), food(banana, 1.1, 23, 0.3, 4, F17, 0), food(skimmedMilk, 3.4, 5, 0.1, 1, F18, 0), food(shrimp, 20, 0, 0.5, 3, F19, 0), food(oliveOil, 0, 0, 100, 3, F20, 0), food(multiGrainBread, 13, 43, 4.2, 3, F21, 0), food(swtPotato,1.6, 20, 0, 2, F22, 0), food(eggWht, 11, 0.7, 0.2, 2, F23, 0),  dailyIntake(500, 500, 500, 4, 1).

food(chkBr, 21.2, 0, 2.5, 3, F3, 0), food(lnBeef, 20, 0, 6, 3, F2, 0), food(cheddarChs, 25, 1.3, 33, 1, F1, 0), food(swissChs, 27, 5, 28, 5, F4, 0),food(broccoli, 2.8, 7, 0.4, 1, F5, 0), food(tomato, 0.9, 3.9, 0.2, 1, F6, 0) , food(spinach, 2.9, 3.6, 0.4, 5, F7, 0), food(potato, 2, 17, 0.1, 1, F8, 0), food(eggWht, 11, 0.7, 0.2, 1, F9, 0), food(fullFatMilk, 3.3, 4.6, 3.7, 3, F10, 0), food(honey,0.3, 82, 0, 3, F11, 0), food(peanutButter, 25, 20, 50, 1, F12, 0), dailyIntake(200, 200, 200, 3, 1).


Queries for nutritionCHR.pl:

food(chkBr, 21.2, 0, 2.5, 3, F3, 0, []), food(lnBeef, 20, 0, 6, 3, F2, 0, []), food(cheddarChs, 25, 1.3, 33, 1, F1, 0, []), food(swissChs, 27, 5, 28, 5, F4, 0, []),food(broccoli, 2.8, 7, 0.4, 1, F5, 0, []), food(tomato, 0.9, 3.9, 0.2, 1, F6, 0, []) , food(spinach, 2.9, 3.6, 0.4, 5, F7, 0, []), food(potato, 2, 17, 0.1, 1, F8, 0, []), food(eggWht, 11, 0.7, 0.2, 1, F9, 0, []), food(fullFatMilk, 3.3, 4.6, 3.7, 3, F10, 0, []), food(honey,0.3, 82, 0, 3, F11, 0, []), food(peanutButter, 25, 20, 50, 1, F12, 0, []), week(200, 200, 200, 2, 1, 4).
==============================================================================================================


Notes:

	Nutrition
	weight and fat percentage
	LBM 
	BMR (Basic metabolism) 
	Then use a separate excel to multiply the BMR to get the TDE
	TDE (total day energy)
	to lose calories => TDE - .2* TDE
	to gain muscles => TDE + .2*TDE
	TDE to eat ( Protein, Carbs, Fat)
	Get fat = .4 * LBM in pounds
	Get protein = 1.5(losing)/1.6(bulking) * LBM in pounds
	(TDE  - (Fat*9) + (Protein *4) )/4 = Carbs 
	Range of carbs tolerance 100 calories downwards if he is losing
	Range of carbs tolerance 100 plus downwards and upwards if he is bulking.
	Range of fat is +- 5g
	Range of protein is upwards 30g
	higher and lower bounds for all meals and deltas for changes
	Constraint => each pair of ingredients can or cannot be together
	Adding constraints to get a realistic nutrition plan (relevance of ingredients together and day times).
	List of dislikes and allergies. 

	Workout:
	Any workout consists of 5 sets, 4 sets, 3 sets, 3 sets, 3 sets
	The variables are the exercise and and the reps
	the reps of an exercise  are of different strategies( [20/20/20/20/20], [20/15/12/..]) Excluding from the right(the least).
	program chooses minimum of 2 random 5s in the workout.
	if cutting => cardio
	cardio is 3 times per week
	if bulking no cardio only strength
	client chooses how many times he wants to go to the gym from 3-6 times. 
	Hamstrings and quads are always together.
	Back nor chest cannot be with hamstrings and quad
	muscles aren’t repeated within the same workout
==============================================================================================================

Foods list:

food(chkBr, 21.2, 0, 2.5, 3, _, 0).
food(chkBr, 21.2, 0, 2.5, 4, _, 0).
food(lnBeef, 20, 0, 6, 3, _, 0).
food(lnBeef, 20, 0, 6, 4, _, 0).
food(cheddarChs, 25, 1.3, 33, 1, _, 0).
food(cheddarChs, 25, 1.3, 33, 2, _, 0).
food(cheddarChs, 25, 1.3, 33, 5, _, 0).
food(goudaChs, 25, 2.2, 27, 1, _, 0).
food(goudaChs, 25, 2.2, 27, 2, _, 0).
food(goudaChs, 25, 2.2, 27, 5, _, 0).
food(swissChs, 27, 5, 28, 1, _, 0).
food(swissChs, 27, 5, 28, 2, _, 0).
food(swissChs, 27, 5, 28, 5, _, 0).
food(carrot, 0.9, 10, 0.2, 1, _, 0).
food(carrot, 0.9, 10, 0.2, 2, _, 0).
food(carrot, 0.9, 10, 0.2, 3, _, 0).
food(carrot, 0.9, 10, 0.2, 4, _, 0).
food(carrot, 0.9, 10, 0.2, 5, _, 0).
food(broccoli, 2.8, 7, 0.4, 1, _, 0).
food(broccoli, 2.8, 7, 0.4, 2, _, 0).
food(broccoli, 2.8, 7, 0.4, 3, _, 0).
food(broccoli, 2.8, 7, 0.4, 4, _, 0).
food(broccoli, 2.8, 7, 0.4, 5, _, 0).
food(spinach, 2.9, 3.6, 0.4, 2, _, 0).
food(spinach, 2.9, 3.6, 0.4, 3, _, 0).
food(spinach, 2.9, 3.6, 0.4, 4, _, 0).
food(spinach, 2.9, 3.6, 0.4, 5, _, 0).
food(whtRice, 7, 82, 0.6, 3, _, 0).
food(whtRice, 7, 82, 0.6, 4, _, 0).
food(potato, 2, 17, 0.1, 1, _, 0).
food(potato, 2, 17, 0.1, 2, _, 0).
food(potato, 2, 17, 0.1, 3, _, 0).
food(potato, 2, 17, 0.1, 4, _, 0).
food(potato, 2, 17, 0.1, 5, _, 0).
food(tomato, 0.9, 3.9, 0.2, 1, _, 0).
food(tomato, 0.9, 3.9, 0.2, 2, _, 0).
food(tomato, 0.9, 3.9, 0.2, 3, _, 0).
food(tomato, 0.9, 3.9, 0.2, 4, _, 0).
food(tomato, 0.9, 3.9, 0.2, 5, _, 0).
food(whlEgg, 13, 0.7, 10, 1, _, 0).
food(whlEgg, 13, 0.7, 10, 2, _, 0).
food(whlEgg, 13, 0.7, 10, 4, _, 0).
food(whlEgg, 13, 0.7, 10, 5, _, 0).
food(eggWht, 11, 0.7, 0.2, 1, _, 0).
food(eggWht, 11, 0.7, 0.2, 2, _, 0).
food(eggWht, 11, 0.7, 0.2, 3, _, 0).
food(eggWht, 11, 0.7, 0.2, 4, _, 0).
food(eggWht, 11, 0.7, 0.2, 5, _, 0).
food(swtPotato,	1.6, 20, 0, 1, _, 0).
food(swtPotato,	1.6, 20, 0, 2, _, 0).
food(swtPotato,	1.6, 20, 0, 3, _, 0).
food(swtPotato,	1.6, 20, 0, 4, _, 0).
food(swtPotato,	1.6, 20, 0, 5, _, 0).
food(fullFatMilk, 3.3, 4.6, 3.7, 1, _, 0).
food(fullFatMilk, 3.3, 4.6, 3.7, 2, _, 0).
food(fullFatMilk, 3.3, 4.6, 3.7, 3, _, 0).
food(fullFatMilk, 3.3, 4.6, 3.7, 4, _, 0).
food(fullFatMilk, 3.3, 4.6, 3.7, 5, _, 0).
food(multiGrainBread, 13, 43, 4.2, 1, _, 0).
food(multiGrainBread, 13, 43, 4.2, 2, _, 0).
food(multiGrainBread, 13, 43, 4.2, 3, _, 0).
food(multiGrainBread, 13, 43, 4.2, 4, _, 0).
food(multiGrainBread, 13, 43, 4.2, 5, _, 0).
food(honey,	0.3, 82, 0, 1, _, 0).
food(honey,	0.3, 82, 0, 2, _, 0).
food(honey,	0.3, 82, 0, 3, _, 0).
food(honey,	0.3, 82, 0, 4, _, 0).
food(honey,	0.3, 82, 0, 5, _, 0).
food(oliveOil, 0, 0, 100, 1, _, 0).
food(oliveOil, 0, 0, 100, 2, _, 0).
food(oliveOil, 0, 0, 100, 3, _, 0).
food(oliveOil, 0, 0, 100, 4, _, 0).
food(oliveOil, 0, 0, 100, 5, _, 0).
food(pasta, 13, 75, 1.5, 3, _, 0).
food(pasta, 13, 75, 1.5, 4, _, 0).
food(salmon, 20, 0, 13, 3, _, 0).
food(salmon, 20, 0, 13, 4, _, 0).
food(fish, 19, 0, 6, 3, _, 0).
food(fish, 19, 0, 6, 4, _, 0).
food(shrimp, 20, 0, 0.5, 3, _, 0).
food(shrimp, 20, 0, 0.5, 4, _, 0).
food(peanutButter, 25, 20, 50, 1, _, 0).
food(peanutButter, 25, 20, 50, 2, _, 0).
food(peanutButter, 25, 20, 50, 3, _, 0).
food(peanutButter, 25, 20, 50, 4, _, 0).
food(peanutButter, 25, 20, 50, 5, _, 0).
food(skimmedMilk, 3.4, 5, 0.1, 1, _, 0).
food(skimmedMilk, 3.4, 5, 0.1, 2, _, 0).
food(skimmedMilk, 3.4, 5, 0.1, 3, _, 0).
food(skimmedMilk, 3.4, 5, 0.1, 4, _, 0).
food(skimmedMilk, 3.4, 5, 0.1, 5, _, 0).
food(banana, 1.1, 23, 0.3, 1, _, 0).
food(banana, 1.1, 23, 0.3, 2, _, 0).
food(banana, 1.1, 23, 0.3, 3, _, 0).
food(banana, 1.1, 23, 0.3, 4, _, 0).
food(banana, 1.1, 23, 0.3, 5, _, 0).
food(pear, 0.4, 15, 0.1, 1, _, 0).
food(pear, 0.4, 15, 0.1, 2, _, 0).
food(pear, 0.4, 15, 0.1, 3, _, 0).
food(pear, 0.4, 15, 0.1, 4, _, 0).
food(pear, 0.4, 15, 0.1, 5, _, 0).
food(tuna, 26, 0, 1, 2, _, 0).
food(tuna, 26, 0, 1, 3, _, 0).
food(tuna, 26, 0, 1, 4, _, 0).
food(tuna, 26, 0, 1, 5, _, 0).
food(wheyProtein, 80, 10, 3.3, 1, _, 0).
food(wheyProtein, 80, 10, 3.3, 2, _, 0).
food(wheyProtein, 80, 10, 3.3, 3, _, 0).
food(wheyProtein, 80, 10, 3.3, 4, _, 0).
food(wheyProtein, 80, 10, 3.3, 5, _, 0).

