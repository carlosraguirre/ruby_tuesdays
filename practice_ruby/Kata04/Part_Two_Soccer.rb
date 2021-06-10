# Team            P     W    L   D    F      A     Pts
# 1. Arsenal         38    26   9   3    79  -  36    87
# 2. Liverpool       38    24   8   6    67  -  30    80
# 3. Manchester_U    38    24   5   9    87  -  45    77
# 4. Newcastle       38    21   8   9    74  -  52    71
# 5. Leeds           38    18  12   8    53  -  37    66
# 6. Chelsea         38    17  13   8    66  -  38    64
# 7. West_Ham        38    15   8  15    48  -  57    53
# 8. Aston_Villa     38    12  14  12    46  -  47    50
# 9. Tottenham       38    14   8  16    49  -  53    50
# 10. Blackburn       38    12  10  16    55  -  51    46
# 11. Southampton     38    12   9  17    46  -  54    45
# 12. Middlesbrough   38    12   9  17    35  -  47    45
# 13. Fulham          38    10  14  14    36  -  44    44
# 14. Charlton        38    10  14  14    38  -  49    44
# 15. Everton         38    11  10  17    45  -  57    43
# 16. Bolton          38     9  13  16    44  -  62    40
# 17. Sunderland      38    10  10  18    29  -  51    40
# -------------------------------------------------------
# 18. Ipswich         38     9   9  20    41  -  64    36
# 19. Derby           38     8   6  24    33  -  63    30
# 20. Leicester       38     5  13  20    30  -  64    28


# set up array of hashes for goals for and goals against
teams_goals = [
  goals_for = {
    :Arsenal => 79,
    :Liverpool => 67,
    :Manchester_U => 87,
    :Newcastle => 74,
    :Leeds => 53,
    :Chelsea => 66,
    :West_Ham => 48,
    :Aston_Villa => 46,
    :Tottenham => 49,
    :Blackburn => 55,
    :Southampton => 46,
    :Middlesbrough => 35,
    :Fulham => 36,
    :Charlton => 38,
    :Everton => 45,
    :Bolton => 44,
    :Sunderland => 29,
    :Ipswich => 41,
    :Derby => 33,
    :Leicester => 30,
  },

  goals_against = {
    :Arsenal => 36,
    :Liverpool => 30,
    :Manchester_U => 45,
    :Newcastle => 52,
    :Leeds => 37,
    :Chelsea => 38,
    :West_Ham => 57,
    :Aston_Villa => 47,
    :Tottenham => 53,
    :Blackburn => 51,
    :Southampton => 54,
    :Middlesbrough => 47,
    :Fulham => 44,
    :Charlton => 49,
    :Everton => 57,
    :Bolton => 62,
    :Sunderland => 51,
    :Ipswich => 64,
    :Derby => 63,
    :Leicester => 64,
  }
]

# find smallest difference between for and against goals
goal_differential= goals_for.merge(goals_against){ |k, goals_for_value, goals_against_value| goals_for_value - goals_against_value}

# sort hash
goal_differential_sort = goal_differential.sort_by {|_key, value| value}
p goal_differential_sort

