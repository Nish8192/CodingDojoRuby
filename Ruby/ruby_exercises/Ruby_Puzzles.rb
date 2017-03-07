# def num1
#     arr = [3,5,1,2,7,9,8,13,25,32]
#     sum = 0
#     for x in arr
#         sum += x
#     end
#     puts sum
#     newArr = arr.find_all{|i| i > 10}
#     return newArr
# end
# puts num1

# def num2
#     arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
#     puts "Shuffled names: " + arr.shuffle.to_s
#     newArr = arr.find_all{|i| i.length > 5}
#     return newArr
# end
# puts "Names longer than five letters: " + num2.to_s

# def num3
#     arr = ("a".."z").collect{|i| i}
#     arr.shuffle!
#     puts "Last letter after shuffling: " + arr.last.to_s
#     puts "First letter after shuffling: " + arr.first.to_s
#     if arr.first.to_s == "a" || arr.first.to_s == "e" || arr.first.to_s == "i" || arr.first.to_s == "o" || arr.first.to_s == "u"
#         puts "The first letter was a vowel!!"
#     end
# end
# num3

# def num4
#     arr = []
#     for x in (0...10)
#         arr << rand(55..100)
#     end
#     return arr
# end
# puts num4.inspect

# def num5
#     arr = []
#     for x in (0...10)
#         arr << rand(55..100)
#     end
#     puts "Random numbers from 55-100, sorted from lowest to highest: " + arr.sort!.to_s
#     puts "The lowest value in the array: " + arr.first.to_s
#     puts "The maximum value in the array: " + arr.last.to_s
# end
# num5

# def num6
#     str = ""
#     for x in (0...6)
#         str << (65+rand(26)).chr
#     end
#     return str
# end
# puts num6

# def num7
#     arr = []
#     for x in (0...10)
#         str = ""
#         for y in (0...5)
#             str << (65+rand(26)).chr
#         end
#         arr << str
#     end
#     return arr
# end
# puts num7.inspect
