# 1.
arr = ['a', 'b', 'c', 1, 'etc']
arr2 = ['4', 4, 5]
puts "Array #{arr + arr2}"

# 2.
str = "In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first."
puts str.scan('a').count

# 3.
strArr = str.split
puts strArr.detect{ |e| strArr.count(e) > 1 }

#4.
puts strArr.map(&:capitalize).join(' ')

#5.
puts str.split(',')

#6.
puts strArr.map{ |e| e.include?(",") ? e.gsub(",", "...") : e }.join(" ")

#7.
dArr = Array.new(10)
dArr[0] = Time.new.strftime('%d-%m-%y')
puts dArr[0]

#8.
dArr.uniq # not modify
puts dArr.count
dArr.uniq! # modify
puts dArr.count

# gg wp