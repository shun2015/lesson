PUBLIC_HOLIDAYS = [
  [1, 1],
  [1, 14],
  [2, 11],
  [3, 21],
  [4, 29],
  [4, 30],
  [5, 1],
  [5, 2],
  [5, 3],
  [5, 4],
  [5, 5],
  [5, 6],
  [7, 15],
  [8, 11],
  [8, 12],
  [9, 16],
  [9, 23],
  [10, 14],
  [10, 22],
  [11, 3],
  [11, 4],
  [11, 23]
]

END_OF_MONTH = [
  [1, 31],
  [2, 28],
  [3, 31],
  [4, 30],
  [5, 31],
  [6, 30],
  [7, 31],
  [8, 31],
  [9, 30],
  [10, 31],
  [11, 30]
]

def max(a, b)
  a > b ? a : b
end

def next_day(m, d, day_of_week)
  next_m, next_d =
    case [m, d]
    when [12, 31]
      [1, 1]
    when *END_OF_MONTH
      [m + 1, 1]
    else
      [m, d + 1]
    end
  [next_m, next_d, (day_of_week + 1) % 7]
end

def is_holiday?(m, d, day_of_week)
  [5, 6].include?(day_of_week) || PUBLIC_HOLIDAYS.include?([m, d])
end

day = [1, 1, 1]

streak = 0
max_streaks = 0

365.times do
  streak = is_holiday?(*day) ? streak + 1 : 0
  max_streaks = max(max_streaks, streak)

  day = next_day(*day)
end

puts max_streaks