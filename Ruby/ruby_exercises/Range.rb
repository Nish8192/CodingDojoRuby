arr = (1..5)

puts "Class Name: #{arr.class}"
puts "It does include 3!" if arr.include? 3

puts "The max value in arr is " + arr.max.to_s
puts "The min value in arr is " + arr.min.to_s

puts "The last value in arr is " + arr.last.to_s
