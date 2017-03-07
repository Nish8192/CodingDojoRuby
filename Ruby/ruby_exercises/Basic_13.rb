# # Number 1; Print numbers 1 to 255
# def print1_255
#     arr = (1..255).collect {|i| i}
#     puts arr.inspect
# end
# print1_255

# # Number 2; Print odd numbers 1 to 255
# def printOdd1_255
#     arr = (1..255).select {|i| i unless i % 2 == 0 }
#     puts arr.inspect
# end
# printOdd1_255

# # Number 3; print 1 to 255 and the sum
# def numSum
#     sum = 0
#     for i in (1..255)
#         puts "New number: #{i} Sum: #{sum += i}"
#     end
# end
# numSum

# # Number 4; print each member of an array
# def iterArray arr
#     for x in arr
#         puts x
#     end
# end
# iterArray [1,3,5,7,9,13]

# # Number 5; Find the Max value in an array
# def fMax arr
#     max = arr.max
#     return max
# end
# puts fMax [-3,-5,-7]

# # Number 6; Find the average from an array
# def fAverage arr
#     sum = 0.0
#     for x in arr
#         sum += x.to_f
#     end
#     avg = sum/arr.length
#     return avg
# end
# puts fAverage [2,10,3, 50]

# # Number 7; Create an array with odd number from 1 to 255
# def addOdd1_255
#     y = []
#     for x in (1..255)
#         if x % 2 == 1
#             y << x
#         end
#     end
#     return y
# end
# puts addOdd1_255.inspect

# # Number 8; Number of values in an array with values greater than Y
# def higherThany(arr, num)
#     count = 0
#     for x in arr
#         if x > num
#             count += 1
#         end
#     end
#     return count
# end
# puts higherThany([1,3,5,7], 3)

# # Number 9; Square the values
# def sqVals arr
#     newArr = []
#     for x in arr
#         newArr << x*x
#     end
#     return newArr
# end
# puts (sqVals [1,5,10,-2]).inspect

# # Number 10; Replace Negative numbers with 0
# def remNegs arr
#     arr.each_index{|i|
#         if arr[i] < 0
#             arr[i] = 0
#         end
#         }
#     return arr
# end
# puts remNegs [1, 5, 10, -2]

# # Number 11; Find the min, max and average of an array
# def min_max_avg arr
#     max = arr.max
#     min = arr.min
#     sum = 0
#     for x in arr
#         sum += x
#     end
#     avg = sum/arr.length
#     return "The max value is #{max}, the min value is #{min}, and the average value is #{avg}"
# end
# puts min_max_avg [1,5,10,-2]

# # Number 12; Shifting the values in an array
# def shiftArray arr
#     for x in (0...arr.length)
#         arr[x] = arr[x+1]
#     end
#     arr.pop()
#     arr << 0
#     return arr
# end
# puts shiftArray [1,5,10,7,-2]

# Number 13; Number to string, replace negative numers with 'Dojo'
def numtoStr arr
    arr.each_index{|i|
    if arr[i] < 0
        arr[i] = 'Dojo'
    end
    }
    return arr
end
puts (numtoStr [-1,-3,2]).inspect
