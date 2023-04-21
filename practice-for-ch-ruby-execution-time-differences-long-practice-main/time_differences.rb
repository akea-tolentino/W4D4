
# def my_min(list) # phase 1
#     list.each do |ele1|
#         return ele1 if list.all? { |ele2| ele2 >= ele1 }                

#     end
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# p my_min(list)  # =>  -5


# def my_min(list) # phase 2 
#     smallest = list.first
#     list.each do |el|
#         if el < smallest
#             smallest = el
#         end
#     end
#     smallest
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# p my_min(list)  # =>  -5

# def largest_contiguous_subsum(list)
#     subarrays = []

#     (0...list.length).each do |i|
#         (i...list.length).each do |j|
#             sub = list[i..j]
#             subarrays << sub
#         end
#     end

#     final = subarrays.map {|sub| sub.sum }
#     final.max
# end

# list = [5, 3, -7]

# p largest_contiguous_subsum(list)


def largest_contiguous_subsum(list)
    largest_sum = list.first
    current_sum = list.first

    #checked_nums = []

    # while !list.empty?
    #     current_sum = list.pop + checked_nums.sum
    #     largest_sum = current_sum if current_sum > largest_sum
    #     checked_nums << list.pop
    # end

    list[1..-1].each do |num|
        current_sum = 0 if current_sum < 0
        current_sum += num
        largest_sum = current_sum if current_sum > largest_sum
    end

    largest_sum
end

# list = [5, 3, -7]
list = [-5, -1, -3]

 p largest_contiguous_subsum(list)