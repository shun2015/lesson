strings = gets.chomp.split(" ")
hashs = strings.group_by(&:itself).map{|key, value|[key, value.count]}.to_h

hashs.each do |key, value|
  puts "#{key} #{value}"
end