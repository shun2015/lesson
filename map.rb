# 入力された値をsplit(" ")や(",")で区切り分割し配列に返す
strings = gets.chomp.split(" ")
hashs = strings.group_by(&:itself).map{|key, value|[key, value.count]}.to_h
#to_hは配列をハッシュに変換してくれる
# mapは配列の要素の数だけブロック内で処理を繰り返し、新しい配列を返す

hashs.each do |key, value|
  puts "#{key} #{value}"
end