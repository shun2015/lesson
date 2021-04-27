# 入力された値の約数表示
input = gets.to_i
nums = []
i = 1
while i <= input do
  num = input % i
  if num == 0
    nums << i
  end
  i += 1
end
puts nums