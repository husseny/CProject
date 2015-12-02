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