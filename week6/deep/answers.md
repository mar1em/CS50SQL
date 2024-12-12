# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Reason to adopt this approach: the observations are randomly assigned to any boat, each observation between midnight and 1am could be on any one of the three boats.
Reason not to adopt this apprach: If a query is only run on one boat, there’s a chance it has missed observations, stored on other boats, that it should have returned.

## Partitioning by Hour

Reason to adopt this approach:Boat A will receive all observations within the hours of 0–7 (i.e., midnight to 7:59 AM), inclusive. This means that all observations between midnight and 1am can be found on Boat A.
Reason not to adopt this approach: The observations will not be evenly distributed if AquaByte most commonly collects observations between midnight and 1am.

## Partitioning by Hash Value

Reason to adopt this approach: A single observation is no more likely to be assigned one hash value than another, which means any single observation could be sent to any one of the three available boats.
Reason not to adopt this aaproach: the query would be best run on all boats, which means longer time.
