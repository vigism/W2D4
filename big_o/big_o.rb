require "byebug"
#O(n^2)
def my_min(arr)
  arr.each_with_index do |el1,idx1|
    found_min = true
    arr.each_with_index do |el2,idx2|
      unless idx1 == idx2
        found_min = false if el2 < el1
      end
    end
    return el1 if found_min
  end
end

#O(n)
def my_min_efficient(arr)
  min = 0
  arr.each do |ele|
    min = ele if ele < min
  end
  min
end

#O(2^n)
def largest_contiguous_subsum(arr)
  subs = []

  (0...arr.length).each do |idx|
    (idx...arr.length).each do |jdx|
      subs << arr[idx..jdx]
    end
  end
  max = subs[0].sum
  subs.each do |sub|
    max = sub.sum if sub.sum > max
  end
  max
end

def lcs(arr)
  largest = arr[0]
  cur = 0
  arr.each do |num|
    cur += num 
    largest = cur if largest < cur  
    cur = 0 if cur < 0
  end
  largest
end

#ANAGRAMS
#O(n!)
def first_anagram?(string, anagram)
  perms = string.split("").permutation.to_a
  perms.each do |perm|
    return true if perm.join("") == anagram
  end
false
end

#O(n)
def second_anagram?(string, anagram)

  string.each_char do |char|
    return false if anagram.index(char) == nil
    anagram.delete!(char)
  end
  anagram.empty? 
end

#O(n)
def third_anagram?(string, anagram)
  string.chars.sort == anagram.chars.sort
end

#O(n)
def fourth_anagram?(string,anagram)
  hash = Hash.new(0)
  string.each_char do |char|
    hash[char]+=1
  end

  anagram.each_char do |char|
    hash[char]-=1
  end

  hash.values.all? {|value| value == 0}
end



