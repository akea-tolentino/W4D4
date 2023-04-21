
# def two_sum?(arr, target_sum)
#     (0...arr.length).each do |i|
#         (i...arr.length).each do |j|
#             return true if arr[i] + arr[j] == target_sum && j > i
#         end
#     end
#     false
# end

# arr = [0, 1, 5, 7]

# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target_sum)
   arr.sort!
   arr.each_with_index do |ele, i|
    index = arr.bsearch_index {|x| x == (target_sum - ele)} 
    return true if index && index != i 
   end
   false
end

arr = [0, 1, 5, 7]

p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => false


# def two_sum?(arr, target_sum)
#     hash = {}
#     arr.each do |ele|
#         return true if hash[target_sum - ele]
#         hash[ele] = target_sum - ele
#     end
#     false
# end

# arr = [0, 1, 5, 7]

# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # false
