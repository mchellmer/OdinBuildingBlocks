# substrings takes a word as the first argument, and an array of strings as a second
# and returns a hash of the word and the number of times it appears in the array of strings
def substrings(string,dictionary)
  entries = string.split(" ")
  shave = [',', '.', '?', '!']
  
  # Shave punctuation and case off of entries
  0.upto(entries.length - 1) do |i|
    entries[i].downcase!
    if shave.include?(entries[i][entries[i].length - 1])
      entries[i].chop!
    end
  end
  
  # check dictionary for use of each word in string and add to hash
  @hash = {}
  0.upto(dictionary.length - 1) do |i|
    tick = 0
    0.upto(entries.length - 1) do |j|
      if dictionary[i] == entries[j]
        tick = tick + 1
      end
    end
    
    if tick > 0
      @hash[dictionary[i]] = tick
    end
  end
  
  return @hash
end