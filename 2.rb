# 1.
arr = [4, 0, -5, -1, 7, -1, 3]
puts arr.filter{|el| el > 0}.sum

# 2.
arr = ["apple", true, "kiwi", 4, 88, "33", false, "undefined", "JS"]
puts arr.filter{|el| el.instance_of? String}

# 3.
arr = [4, 5, 2, 1, 6, 5, 3, 5, 2, 5]
data = arr.group_by(&:itself).transform_values(&:count).max_by { |_, value| value }
data = Array.new(data[1]) {data[0]}
arr.delete(data[0])
puts arr
puts data[0]

# 4.
arr = [1, 2, 55, 3, 100, 333, 9999]
data = arr.group_by{ |s| s.to_s.length }.transform_values(&:count)
data.delete(1)
puts "#{data.values}"

# 5.
arr = [5, "Limit", 12, "a", "3", 99, 2, [2, 4, 3, "33", "a", "text"], "strong", "broun"]
newArr = arr.flatten.group_by{|e| e&.class}
puts [newArr[Integer], newArr[String]]

# 6.
names = "Alex,    Orysia, Misha,    Ira     , Paul";
arr = names.delete(' ').split(',')
newArr = arr.sort.join(',')
puts arr.filter{|el| el.length > 4}.join(',')
puts newArr

# gg wp