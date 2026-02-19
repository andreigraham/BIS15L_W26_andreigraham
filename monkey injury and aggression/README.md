# Data from: Costs of social conflict: do injuries mirror patterns of aggression in blue monkeys?

[https://doi.org/10.5061/dryad.8pk0p2ntq](https://doi.org/10.5061/dryad.8pk0p2ntq)

Give a brief summary of dataset contents, contextualized in experimental procedures and results.

## Description of the data and file structure

There are two data sets associated with the published paper, which provides further information about each of them. Dataset1 was used to create Dataset2. In both data sets, blank cells represent missing data.

***

**Dataset1 (Cords-Arguelles\_Dataset1.csv)** is a catalog of all unique injuries observed during the study period, one per row. For each injury, the data set includes information on the following variables, listed from left to right.
 

1. ***date***: the date when the injury was first observed by the field team (YYYY-MM-DD).
2. ***group***: the identity of the group in which the injured animal lived on the date when the injury was first observed.  
3. ***subj***: individual’s unique ID code.
4. ***sex***: M (male) or F (female).
5. ***age-yrs***: individual’s age in years on the date in Column 1 (when injury was first noted)
6. ***agesex***: age-sex class of individual on the date in Column 1 (when injury was first noted), either adm (adult male), adf (adult, i.e. parous, female), inf (infant, up to 1 year of age), juvf (juvenile female, from age of 1 year to adulthood), juvm (from age of 1 year until emigration from natal group).
7. ***type***: injury type (bump, hairless, internal pain, limp, not\_specified, scar, stunned). Injuries involved physical trauma and included wounds (broken skin with visible blood or internal tissue, or scab), scars (scar tissue visible) or hairless patches (no record of prior injury and no scar tissue verified), lameness (limping), bumps that resembled a boil or abscess, and stunning after a fall (visible disorientation, animal usually did not move for several minutes).
8. ***cause***: cause of injury when known
9. ***location***: body location of injury (blank if data are missing or the injury involves stunning, as this type of injury is not localized to a particular body location)

***

**Dataset2 (Cords-Arguelles\_Dataset2.csv)** is a record of the number of injuries sustained by each group member in all the study groups for each month during the study period. Each line of data represents one month for one individual, and includes the following variables, listed from left to right:
 

1. ***group***: unique ID code for each study group.
2. ***Y-m***: year and month.
3. ***subj***: individual’s unique ID code.
4. ***days\_pres***: number of days the individual was present in the group during the month (indicated in Column 2). Some individuals were not present for the full month if they were born during the month, entered the group during the month, or died or disappeared before the end of the month.
5. ***injury\_ct***: injury count, number of injuries sustained by the subject in the particular year-month.
6. ***season***: we distinguished birth, mating, and interseason based on the timing of births in the population. The birth season, December-March inclusive, was when most (69%) births in the population occurred. Given a 6 month gestation, June-September was designated as the mating season. The interseason included the remaining months (April-May, October-November).
7. ***sex***: M (male) or F (female).
8. ***age***: in years, at the midpoint of the month indicated in Column 2
9. ***age-sex***: age-sex class of individual during the month indicated in Column 2, either adm (adult male), adf (adult, i.e. parous, female), inf (infant, up to 1 year of age), juvf (juvenile female, from age of 1 year to adulthood), juvm (from age of 1 year until emigration from natal group).
10. ***rank***: coded only for adult and old juvenile females (starting in the year when they reached their fifth birthday, the youngest known age at which females give birth). Rank determination is described in detail in the associated publication. Numbers reported represent a subject’s ordinal position in her group's hierarchy, with 1 as top-ranked.
11. ***strank***: rank (column 10) rescaled to a 0-1 scale, with 1 as top ranking, 0 as bottom ranking, in the subject’s group. Coded only for adult and old juvenile females (starting in the year when they reached their fifth birthday, the youngest known age at which females give birth).
12. ***repstate***: reproductive state coded only for adult and old juvenile females (starting in the year when they reached their fifth birthday, the youngest known age at which females give birth). Females are coded as “preg-lact” in this column (and referred to as “reproductive” in the associated publication) if they were pregnant (up to 6 months before giving birth) or lactating (up to 6 months after birth, or sooner if the infant died) for at least one day of the month indicated in Column 2. Females who were not coded as “preg-lact” were coded as “sexually active” if they engaged in sexual behavior on at least one day of the month. Females who were neither “preg-lact” nor “sexually active” were coded as “other”. See associated publication for further details.
13. ***grpsize\_avg***: group size of subject’s group, averaged across all observation days during the month listed in Column 2.
14. ***pct\_d\_newmales***: percentage of observation days during the month (Column 2) when at least one novel male was present. We counted males as novel if they were non-residents, i.e., if they had never been present in the group for 7 consecutive observation days previously. See associated publication for further details.
15. ***avgperctimmat***: percentage of immature group members (juveniles and infants) in subject’s group, averaged across all observation days during the month indicated in Column.

## Sharing/Access information

Not applicable.

## Code/Software

Not applicable.