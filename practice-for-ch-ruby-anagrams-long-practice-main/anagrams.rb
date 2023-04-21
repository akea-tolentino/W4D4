
def first_anagram?(string1, string2) #O(n!)
    word1 = string1.split("")
    word2 = string2.split("")

    anagrams = word1.permutation.to_a

    anagrams.include?(word2)
end


p first_anagram?("gizmo", "sally")
p first_anagram?("elvis", "lives")

def second_anagram?(str1, str2) #O(n^2)
    str1.each_char do |char|
        if str2.include?(char)  
            temp = str2.index(char)
            str2[temp] = ''
        end
    end
    return true if str2.length == 0
    false
end

p second_anagram?("elvis", "lives")
p second_anagram?("gizmo", "sally")

def third_anagram?(str1, str2) #O(n^2)
    alpha = ('a'..'z').to_a
    str1_c = ''
    str2_c = ''
    alpha.each do |ele|
        str1.each_char do |char|
            str1_c += char if ele == char 
        end
        str2.each_char do |char|
            str2_c += char if ele == char 
    end
    end
    str1_c == str2_c
end

p third_anagram?("elvis", "lives")
p third_anagram?("gizmo", "sally")

def fourth_anagram?(str1, str2) #O(n)
    hash1 = Hash.new(0)

    (0...str1.length).each do |i|
        hash1[str1[i]] += 1
        hash1[str2[i]] += 1
    end

    hash1.values.all? { |val| val == 2 }
end

p fourth_anagram?("elvis", "lives")
p fourth_anagram?("gizmo", "sally")