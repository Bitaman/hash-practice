

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n * m log m)we go through the array once and for each string we sort which is an m log m time complexcity
# Space Complexity: O(n) worse case we don't have any anagram and the size of the hash table is the same size of the array

def grouped_anagrams(strings)
  return [] if strings.length == 0
  word_hash = Hash.new()
  strings.each do |string|
    element = string.split("").sort.join
    if word_hash[element]
      word_hash[element] << string
    else
      word_hash[element] = [string]
    end
  end
    return word_hash.values    
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: ?
# Space Complexity: ?
def top_k_frequent_elements(list, k)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end


# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same 
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end