n = [10,20,30,40]
print n
m = n.map{|i|i * 2}
print m

t = ["AAA","BBB","CCC"].map(&:downcase)
y = t
print y