CP Project

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
READ ME is needed


Query:
food(chkBr, 21.2, 0, 2.5, 3, F3, 0), food(lnBeef, 20, 0, 6, 3, F2, 0), food(cheddarChs, 25, 1.3, 33, 1, F1, 0), food(swissChs, 27, 5, 28, 5, F4, 0),food(broccoli, 2.8, 7, 0.4, 1, F5, 0), food(tomato, 0.9, 3.9, 0.2, 1, F6, 0) , food(spinach, 2.9, 3.6, 0.4, 5, F7, 0), food(potato, 2, 17, 0.1, 1, F8, 0), food(eggWht, 11, 0.7, 0.2, 1, F9, 0), food(fullFatMilk, 3.3, 4.6, 3.7, 3, F10, 0), food(honey,0.3, 82, 0, 3, F11, 0), food(peanutButter, 25, 20, 50, 1, F12, 0), dailyIntake(200, 200, 200, 3, 1).
