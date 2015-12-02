
Variables:
%% xexternal values => DayDomain, WorkoutsIdsList, Cutting or Bulking, 
schedule(Days, WorkoutDomain, Goal, Workouts)
workout(ID,  Muscle, Rating, Week, Day, Order)

Domains:
ID in WorkoutDomain
%% 0 => cardio & 1 => strength
%% Type in [0, 1]
%% 11's type is cardio'
Muscle in 1..11 
Rating in 1..5
Week in 1..5
Day in 1..Days
Order in 1..5

 Constraints:

%% For the same week and day, no muscle shall be repeated -Moataz

%% Hamstrings (8) and quads (7) are on the same day -Moataz

%% Back (6), hamstrings and quads cannot be on the same day -Magdi

%% Chest (1), hamstrings and quads cannot be on the same day -Magdi

%% If goal is to bulk, then muscle cannot be cardio (11) -Magdi

%% if goal is cut, then cardio is 3 times per week -Hussieny

%% in one day, there has to be at least 2 workouts with rating 5 -Hussieny


